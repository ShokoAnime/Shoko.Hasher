

#include "Hasher.h"
#include "Hash_Context.h"
#if defined(__linux__)
	#include <string.h>
#else
	#include <cstring>
#endif



extern "C" EXPORT void *Init(int hashtypes, long filesize)
{
	return new Hash_Context(hashtypes, filesize);
}
extern "C" EXPORT void Update(void *context, unsigned char *buffer, long size)
{
	Hash_Context *h = (Hash_Context *)context;
	int current_md4 = h->Position / ED2K_CHUNK_SIZE;
	int till_md4 = (h->Position + size) / ED2K_CHUNK_SIZE;
	for(int md4=current_md4;md4<=till_md4;md4++)
	{
		int init_size = ED2K_CHUNK_SIZE - (h->Position % ED2K_CHUNK_SIZE);
		if (init_size > size)
			init_size = size;
		if (init_size==0)
			continue;
		if ((h->Types&HASH_TYPE_ED2K) == HASH_TYPE_ED2K)
		{
			h->MD4->Add(buffer, init_size);
		}
		if ((h->Types&HASH_TYPE_CRC32) == HASH_TYPE_CRC32)
		{
			h->CRC32->Add(buffer, init_size);
		}
		if ((h->Types&HASH_TYPE_MD5)==HASH_TYPE_MD5)
		{
			h->MD5->Add(buffer, init_size);
		}
		if ((h->Types&HASH_TYPE_SHA1)==HASH_TYPE_SHA1)
		{
			h->SHA1->Add(buffer, init_size);
		}
		buffer += init_size;
		h->Position += init_size;
		size -= init_size;
		if ((h->Types&HASH_TYPE_ED2K) == HASH_TYPE_ED2K && ((h->Position % ED2K_CHUNK_SIZE) == 0))
		{
			h->MD4->Finish();
			h->MD4->GetHash(&h->ED2K_Buffer[md4*16]);
			h->MD4->Reset();
		}
	}
}
extern "C" EXPORT void Finish(void *context, unsigned char *hashes)
{
	Hash_Context *h = (Hash_Context *)context;
	if ((h->Types&HASH_TYPE_ED2K) == HASH_TYPE_ED2K)
	{
		int md4 = h->Position / ED2K_CHUNK_SIZE;
		if ((h->Position % ED2K_CHUNK_SIZE) != 0)
		{
			h->MD4->Finish();
			h->MD4->GetHash(&h->ED2K_Buffer[md4 * 16]);
		}
		if (h->Position> ED2K_CHUNK_SIZE)
		{
			if ((h->Position % ED2K_CHUNK_SIZE) > 0)
				md4++;
			h->MD4->Reset();
			h->MD4->Add(h->ED2K_Buffer, md4 * 16);
			h->MD4->Finish();
			h->MD4->GetHash(hashes);
		}
		else
		{
			memcpy(h->ED2K_Buffer, hashes, 16);
		}
		hashes += 16;
	}
	if ((h->Types&HASH_TYPE_CRC32) == HASH_TYPE_CRC32)
	{
		h->CRC32->Finish();
		h->CRC32->GetHash(hashes);
		hashes += 4;
	}
	if ((h->Types&HASH_TYPE_MD5)==HASH_TYPE_MD5)
	{
		h->MD5->Finish();
		h->MD5->GetHash(hashes);
		hashes += 16;
	}
	if ((h->Types&HASH_TYPE_SHA1)== HASH_TYPE_SHA1)
	{
		h->SHA1->Finish();
		h->SHA1->GetHash(hashes);
		hashes += 20;
	}
	delete h;
}

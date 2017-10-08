#include "Hash_Context.h"


Hash_Context::Hash_Context(int types, long filesize)
{
	Types = types;
	Filesize = filesize;

	if ((types&HASH_TYPE_ED2K) == HASH_TYPE_ED2K)
	{
		MD4 = new CMD4();
		MD4->Reset();
		uint32 nChunks = (uint32)(filesize / ED2K_CHUNK_SIZE);
		uint64 uChunkSizeLast = filesize % ED2K_CHUNK_SIZE;
		if (uChunkSizeLast > 0)
			nChunks++;
		ED2K_Buffer = (unsigned char *)malloc(nChunks * 16);
	}
	if ((types&HASH_TYPE_CRC32)== HASH_TYPE_CRC32)
	{
		CRC32 = new CCRC32();
		CRC32->Reset();
	}
	if ((types&HASH_TYPE_MD5)==HASH_TYPE_MD5)
	{
		MD5 = new CMD5();
		MD5->Reset();
	}
	if ((types&HASH_TYPE_SHA1)==HASH_TYPE_SHA1)
	{
		SHA1 = new CSHA1();
		SHA1->Reset();
	}
}
Hash_Context::~Hash_Context()
{
	if (SHA1 != nullptr)
	{
		delete SHA1;
		SHA1 = nullptr;
	}
	if (MD5 != nullptr)
	{
		delete MD5;
		MD5 = nullptr;
	}
	if (CRC32 != nullptr)
	{
		delete CRC32;
		CRC32 = nullptr;
	}

	if (ED2K_Buffer != nullptr)
	{
		free(ED2K_Buffer);
		ED2K_Buffer = nullptr;
	}
	if (MD4!=nullptr)
	{
		delete MD4;
		MD4 = nullptr;
	}
}


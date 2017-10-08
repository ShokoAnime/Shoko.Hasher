#pragma once
#include "MD4.h"
#include "MD5.h"
#include "SHA1.h"
#include "CRC32.h"

#define HASH_TYPE_ED2K 1
#define HASH_TYPE_CRC32 2
#define HASH_TYPE_MD5 4
#define HASH_TYPE_SHA1 8


#define ED2K_CHUNK_SIZE  9728000

class Hash_Context
{
public:
	CMD4 *MD4 = nullptr;
	CMD5 *MD5 = nullptr;
	CSHA1 *SHA1 = nullptr;
	CCRC32 *CRC32 = nullptr;
	int Types=0;
	long Filesize=0;
	long Position=0;
	unsigned char *ED2K_Buffer=nullptr;
	Hash_Context(int types, long filesize);
	~Hash_Context();

};

#pragma once



#include "Utility.h"

class CCRC32
{
public:
	CCRC32();
	~CCRC32() {}
	void Reset();
	void Add(const void* pData, size_t nLength);
	void Finish();
	void GetHash(__in_bcount(4) uchar* pHash) const;
private:
	uint32 crc_value;
};

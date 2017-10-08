#pragma once
#include "interop.h"

extern "C" EXPORT void *Init(int hashtypes, long filesize);
extern "C" EXPORT void Update(void *context, unsigned char *buffer, long size);
extern "C" EXPORT void Finish(void *context, unsigned char *hashes);

 
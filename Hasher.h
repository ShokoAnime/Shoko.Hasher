#pragma once

extern "C" __declspec(dllexport) void *Init(int hashtypes, long filesize);
extern "C" __declspec(dllexport) void Update(void *context, unsigned char *buffer, long size);
extern "C" __declspec(dllexport) void Finish(void *context, unsigned char *hashes);

 
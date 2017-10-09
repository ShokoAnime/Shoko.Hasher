
#if defined(_MSC_VER)

	#define EXPORT __declspec(dllexport)
	#define IMPORT __declspec(dllimport)

#elif defined(__GNUC__)

	#define EXPORT __attribute__((visibility("default")))
	#define IMPORT

#else

	#define EXPORT
	#define IMPORT
	#pragma warning Unknown export functions

#endif

#ifndef WIN32
#define __stdcall
#endif

//linux interop between 
#ifdef __linux__
	#include <inttypes.h>

	#define __inline inline
	#define __forceinline __attribute__((always_inline))
	#define __in_bcount(size)
	
	#define __fastcall __attribute__((ms_abi))

	#include <byteswap.h>
	#define _byteswap_uint64(x) bswap_64(x)
	#define _byteswap_ulong(x) bswap_32(x)
	#define _byteswap_ushort(x) bswap_16(x)

	//typedef unsigned int size_t;
#endif

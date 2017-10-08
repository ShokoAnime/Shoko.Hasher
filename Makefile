ARCH = 64
ASM = yasm
ASMARGS = -f elf$(ARCH)
CC = g++
CCFLAGS = -DHASHLIB_USE_ASM -fPIC -g
OUTPUT = libhasher.so

all: prep asm cpp $(OUTPUT)

prep:
	mkdir -p objects

asm: prep
	$(ASM) $(ASMARGS) -o objects/crc32x$(ARCH).o asm/nasm/crc32x$(ARCH).asm
	$(ASM) $(ASMARGS) -o objects/MD4x$(ARCH).o   asm/nasm/MD4x$(ARCH).asm
	$(ASM) $(ASMARGS) -o objects/MD5x$(ARCH).o   asm/nasm/MD5x$(ARCH).asm
	$(ASM) $(ASMARGS) -o objects/SHA1x$(ARCH).o  asm/nasm/SHA1x$(ARCH).asm

cpp: prep
	$(CC) $(CCFLAGS) -c CRC32.cpp -o objects/CRC32.o 
	$(CC) $(CCFLAGS) -c Hash_Context.cpp -o objects/Hash_Context.o 
	$(CC) $(CCFLAGS) -c Hasher.cpp -o objects/Hasher.o 
	$(CC) $(CCFLAGS) -c MD4.cpp -o objects/MD4.o 
	$(CC) $(CCFLAGS) -c MD5.cpp -o objects/MD5.o 
	$(CC) $(CCFLAGS) -c SHA1.cpp -o objects/SHA1.o 

$(OUTPUT): cpp asm
	$(CC) $(CCFLAGS) -shared -o $(OUTPUT) objects/CRC32.o objects/Hash_Context.o objects/Hasher.o objects/MD5.o objects/MD4.o objects/SHA1.o objects/crc32x$(ARCH).o objects/MD4x$(ARCH).o objects/MD5x$(ARCH).o objects/SHA1x$(ARCH).o

clean:
	rm objects/crc32x$(ARCH).o objects/MD4x$(ARCH).o objects/MD5x$(ARCH).o objects/SHA1x$(ARCH).o
	rm objects/CRC32.o objects/Hash_Context.o objects/Hasher.o objects/MD4.o objects/MD5.o objects/SHA1.o
	rmdir objects
	rm $(OUTPUT)
section .text

global _MD4_Transform_p5
align 10h
_MD4_Transform_p5:
   mov     esi, [esp+28h]
   mov     eax, [esi+8]
   mov     ebx, [esi+0Ch]
   mov     ecx, [esi+10h]
   mov     edx, [esi+14h]
   mov     esi, ecx
   xor     ecx, edx
   add     eax, [ebp+0]
   and     ecx, ebx
   xor     ecx, edx
   add     eax, ecx
   rol     eax, 3
   mov     ecx, ebx
   xor     ebx, esi
   add     edx, [ebp+4]
   and     ebx, eax
   xor     ebx, esi
   add     edx, ebx
   rol     edx, 7
   mov     ebx, eax
   xor     eax, ecx
   add     esi, [ebp+8]
   and     eax, edx
   xor     eax, ecx
   add     esi, eax
   rol     esi, 0Bh
   mov     eax, edx
   xor     edx, ebx
   add     ecx, [ebp+0Ch]
   and     edx, esi
   xor     edx, ebx
   add     ecx, edx
   rol     ecx, 13h
   mov     edx, esi
   xor     esi, eax
   add     ebx, [ebp+10h]
   and     esi, ecx
   xor     esi, eax
   add     ebx, esi
   rol     ebx, 3
   mov     esi, ecx
   xor     ecx, edx
   add     eax, [ebp+14h]
   and     ecx, ebx
   xor     ecx, edx
   add     eax, ecx
   rol     eax, 7
   mov     ecx, ebx
   xor     ebx, esi
   add     edx, [ebp+18h]
   and     ebx, eax
   xor     ebx, esi
   add     edx, ebx
   rol     edx, 0Bh
   mov     ebx, eax
   xor     eax, ecx
   add     esi, [ebp+1Ch]
   and     eax, edx
   xor     eax, ecx
   add     esi, eax
   rol     esi, 13h
   mov     eax, edx
   xor     edx, ebx
   add     ecx, [ebp+20h]
   and     edx, esi
   xor     edx, ebx
   add     ecx, edx
   rol     ecx, 3
   mov     edx, esi
   xor     esi, eax
   add     ebx, [ebp+24h]
   and     esi, ecx
   xor     esi, eax
   add     ebx, esi
   rol     ebx, 7
   mov     esi, ecx
   xor     ecx, edx
   add     eax, [ebp+28h]
   and     ecx, ebx
   xor     ecx, edx
   add     eax, ecx
   rol     eax, 0Bh
   mov     ecx, ebx
   xor     ebx, esi
   add     edx, [ebp+2Ch]
   and     ebx, eax
   xor     ebx, esi
   add     edx, ebx
   rol     edx, 13h
   mov     ebx, eax
   xor     eax, ecx
   add     esi, [ebp+30h]
   and     eax, edx
   xor     eax, ecx
   add     esi, eax
   rol     esi, 3
   mov     eax, edx
   xor     edx, ebx
   add     ecx, [ebp+34h]
   and     edx, esi
   xor     edx, ebx
   add     ecx, edx
   rol     ecx, 7
   mov     edx, esi
   xor     esi, eax
   add     ebx, [ebp+38h]
   and     esi, ecx
   xor     esi, eax
   add     ebx, esi
   rol     ebx, 0Bh
   mov     esi, ecx
   xor     ecx, edx
   add     eax, [ebp+3Ch]
   and     ecx, ebx
   xor     ecx, edx
   add     eax, ecx
   rol     eax, 13h
   mov     edi, eax
   mov     ecx, eax
   add     edx, [ebp+0]
   or      eax, ebx
   and     edi, ebx
   and     eax, esi
   add     edx, 5A827999h
   or      eax, edi
   add     edx, eax
   rol     edx, 3
   mov     edi, edx
   mov     eax, edx
   add     esi, [ebp+10h]
   or      edx, ecx
   and     edi, ecx
   and     edx, ebx
   add     esi, 5A827999h
   or      edx, edi
   add     esi, edx
   rol     esi, 5
   mov     edi, esi
   mov     edx, esi
   add     ebx, [ebp+20h]
   or      esi, eax
   and     edi, eax
   and     esi, ecx
   add     ebx, 5A827999h
   or      esi, edi
   add     ebx, esi
   rol     ebx, 9
   mov     edi, ebx
   mov     esi, ebx
   add     ecx, [ebp+30h]
   or      ebx, edx
   and     edi, edx
   and     ebx, eax
   add     ecx, 5A827999h
   or      ebx, edi
   add     ecx, ebx
   rol     ecx, 0Dh
   mov     edi, ecx
   mov     ebx, ecx
   add     eax, [ebp+4]
   or      ecx, esi
   and     edi, esi
   and     ecx, edx
   add     eax, 5A827999h
   or      ecx, edi
   add     eax, ecx
   rol     eax, 3
   mov     edi, eax
   mov     ecx, eax
   add     edx, [ebp+14h]
   or      eax, ebx
   and     edi, ebx
   and     eax, esi
   add     edx, 5A827999h
   or      eax, edi
   add     edx, eax
   rol     edx, 5
   mov     edi, edx
   mov     eax, edx
   add     esi, [ebp+24h]
   or      edx, ecx
   and     edi, ecx
   and     edx, ebx
   add     esi, 5A827999h
   or      edx, edi
   add     esi, edx
   rol     esi, 9
   mov     edi, esi
   mov     edx, esi
   add     ebx, [ebp+34h]
   or      esi, eax
   and     edi, eax
   and     esi, ecx
   add     ebx, 5A827999h
   or      esi, edi
   add     ebx, esi
   rol     ebx, 0Dh
   mov     edi, ebx
   mov     esi, ebx
   add     ecx, [ebp+8]
   or      ebx, edx
   and     edi, edx
   and     ebx, eax
   add     ecx, 5A827999h
   or      ebx, edi
   add     ecx, ebx
   rol     ecx, 3
   mov     edi, ecx
   mov     ebx, ecx
   add     eax, [ebp+18h]
   or      ecx, esi
   and     edi, esi
   and     ecx, edx
   add     eax, 5A827999h
   or      ecx, edi
   add     eax, ecx
   rol     eax, 5
   mov     edi, eax
   mov     ecx, eax
   add     edx, [ebp+28h]
   or      eax, ebx
   and     edi, ebx
   and     eax, esi
   add     edx, 5A827999h
   or      eax, edi
   add     edx, eax
   rol     edx, 9
   mov     edi, edx
   mov     eax, edx
   add     esi, [ebp+38h]
   or      edx, ecx
   and     edi, ecx
   and     edx, ebx
   add     esi, 5A827999h
   or      edx, edi
   add     esi, edx
   rol     esi, 0Dh
   mov     edi, esi
   mov     edx, esi
   add     ebx, [ebp+0Ch]
   or      esi, eax
   and     edi, eax
   and     esi, ecx
   add     ebx, 5A827999h
   or      esi, edi
   add     ebx, esi
   rol     ebx, 3
   mov     edi, ebx
   mov     esi, ebx
   add     ecx, [ebp+1Ch]
   or      ebx, edx
   and     edi, edx
   and     ebx, eax
   add     ecx, 5A827999h
   or      ebx, edi
   add     ecx, ebx
   rol     ecx, 5
   mov     edi, ecx
   mov     ebx, ecx
   add     eax, [ebp+2Ch]
   or      ecx, esi
   and     edi, esi
   and     ecx, edx
   add     eax, 5A827999h
   or      ecx, edi
   add     eax, ecx
   rol     eax, 9
   mov     edi, eax
   mov     ecx, eax
   add     edx, [ebp+3Ch]
   or      eax, ebx
   and     edi, ebx
   and     eax, esi
   add     edx, 5A827999h
   or      eax, edi
   add     edx, eax
   rol     edx, 0Dh
   add     esi, [ebp+0]
   mov     eax, edx
   xor     edx, ecx
   add     esi, 6ED9EBA1h
   xor     edx, ebx
   add     esi, edx
   rol     esi, 3
   add     ebx, [ebp+20h]
   mov     edx, esi
   xor     esi, eax
   add     ebx, 6ED9EBA1h
   xor     esi, ecx
   add     ebx, esi
   rol     ebx, 9
   add     ecx, [ebp+10h]
   mov     esi, ebx
   xor     ebx, edx
   add     ecx, 6ED9EBA1h
   xor     ebx, eax
   add     ecx, ebx
   rol     ecx, 0Bh
   add     eax, [ebp+30h]
   mov     ebx, ecx
   xor     ecx, esi
   add     eax, 6ED9EBA1h
   xor     ecx, edx
   add     eax, ecx
   rol     eax, 0Fh
   add     edx, [ebp+8]
   mov     ecx, eax
   xor     eax, ebx
   add     edx, 6ED9EBA1h
   xor     eax, esi
   add     edx, eax
   rol     edx, 3
   add     esi, [ebp+28h]
   mov     eax, edx
   xor     edx, ecx
   add     esi, 6ED9EBA1h
   xor     edx, ebx
   add     esi, edx
   rol     esi, 9
   add     ebx, [ebp+18h]
   mov     edx, esi
   xor     esi, eax
   add     ebx, 6ED9EBA1h
   xor     esi, ecx
   add     ebx, esi
   rol     ebx, 0Bh
   add     ecx, [ebp+38h]
   mov     esi, ebx
   xor     ebx, edx
   add     ecx, 6ED9EBA1h
   xor     ebx, eax
   add     ecx, ebx
   rol     ecx, 0Fh
   add     eax, [ebp+4]
   mov     ebx, ecx
   xor     ecx, esi
   add     eax, 6ED9EBA1h
   xor     ecx, edx
   add     eax, ecx
   rol     eax, 3
   add     edx, [ebp+24h]
   mov     ecx, eax
   xor     eax, ebx
   add     edx, 6ED9EBA1h
   xor     eax, esi
   add     edx, eax
   rol     edx, 9
   add     esi, [ebp+14h]
   mov     eax, edx
   xor     edx, ecx
   add     esi, 6ED9EBA1h
   xor     edx, ebx
   add     esi, edx
   rol     esi, 0Bh
   add     ebx, [ebp+34h]
   mov     edx, esi
   xor     esi, eax
   add     ebx, 6ED9EBA1h
   xor     esi, ecx
   add     ebx, esi
   rol     ebx, 0Fh
   add     ecx, [ebp+0Ch]
   mov     esi, ebx
   xor     ebx, edx
   add     ecx, 6ED9EBA1h
   xor     ebx, eax
   add     ecx, ebx
   rol     ecx, 3
   add     eax, [ebp+2Ch]
   mov     ebx, ecx
   xor     ecx, esi
   add     eax, 6ED9EBA1h
   xor     ecx, edx
   add     eax, ecx
   rol     eax, 9
   add     edx, [ebp+1Ch]
   mov     ecx, eax
   xor     eax, ebx
   add     edx, 6ED9EBA1h
   xor     eax, esi
   add     edx, eax
   rol     edx, 0Bh
   add     esi, [ebp+3Ch]
   mov     eax, edx
   xor     edx, ecx
   add     esi, 6ED9EBA1h
   xor     edx, ebx
   add     esi, edx
   rol     esi, 0Fh
   mov     edx, [esp+28h]
   add     [edx+8], ebx
   add     [edx+0Ch], esi
   add     [edx+10h], eax
   add     [edx+14h], ecx
   retn    
   
global _MD4_Add_p5
align 10h
_MD4_Add_p5:
   pusha   
   mov     ecx, [esp+20h+12]
   and     ecx, ecx
   jz      get_out
   xor     edx, edx
   mov     ebp, [esp+20h+8]
   mov     edi, [esp+20h+4]
   mov     ebx, [edi]
   mov     eax, ebx
   add     ebx, ecx
   mov     [edi], ebx
   adc     [edi+4], edx
   and     eax, 3Fh
   jnz     partial_buffer
full_blocks:
   mov     ecx, [esp+20h+12]
   and     ecx, ecx
   jz      get_out
   sub     ecx, 40h
   jb      end_of_stream
   mov     [esp+20h+12], ecx
   call    _MD4_Transform_p5
   add     ebp, 40h
   jmp     full_blocks
end_of_stream:
   mov     edi, [esp+20h+4]
   mov     esi, ebp
   lea     edi, [edi+18h]
   add     ecx, 40h
   rep movsb
   jmp     get_out
partial_buffer:
   add     ecx, eax
   cmp     ecx, 40h
   jb      short_stream
   mov     ecx, 0FFFFFFC0h
   add     ecx, eax
   add     [esp+20h+12], ecx
loc:
   mov     bl, [ebp+0]
   inc     ebp
   mov     [edi+ecx+58h], bl
   inc     ecx
   jnz     loc
   mov     [esp+20h+8], ebp
   lea     ebp, [edi+18h]
   call    _MD4_Transform_p5
   mov     ebp, [esp+20h+8]
   jmp     full_blocks
short_stream:
   sub     ecx, eax
   mov     esi, ebp
   lea     edi, [edi+eax+18h]
   rep movsb
get_out:
   popa    
   retn    0Ch

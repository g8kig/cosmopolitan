#include "libc/nt/codegen.h"
.imp	kernel32,__imp_SetProcessAffinityMask,SetProcessAffinityMask,1347

	.text.windows
SetProcessAffinityMask:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	__imp_SetProcessAffinityMask(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	SetProcessAffinityMask,globl
	.previous
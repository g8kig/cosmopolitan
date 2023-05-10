#include "libc/nt/codegen.h"
.imp	advapi32,__imp_RegFlushKey,RegFlushKey,0

	.text.windows
RegFlushKey:
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_RegFlushKey(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	RegFlushKey,globl
	.previous
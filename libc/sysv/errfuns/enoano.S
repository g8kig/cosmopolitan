#include "libc/macros.h"
.text.unlikely

	.ftrace1
enoano:
	.ftrace2
#ifdef __x86_64__
	.leafprologue
	mov	ENOANO(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ENOANO
	ldrsw	x0,[x1,#:lo12:ENOANO]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	enoano,globl,hidden

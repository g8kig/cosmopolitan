#include "libc/macros.h"
.text.unlikely

	.ftrace1
elibmax:
	.ftrace2
#ifdef __x86_64__
	.leafprologue
	mov	ELIBMAX(%rip),%ecx
	jmp	__errfun
#elif defined(__aarch64__)
	adrp	x1,ELIBMAX
	ldrsw	x0,[x1,#:lo12:ELIBMAX]
	b	__errfun
#else
#error "unsupported architecture"
#endif
	.endfn	elibmax,globl,hidden

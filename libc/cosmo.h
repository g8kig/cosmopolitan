#ifndef COSMOPOLITAN_LIBC_COSMO_H_
#define COSMOPOLITAN_LIBC_COSMO_H_
#include "libc/calls/struct/timespec.h"
COSMOPOLITAN_C_START_

#ifndef __cplusplus
#define _COSMO_ATOMIC(x) _Atomic(x)
#else
#define _COSMO_ATOMIC(x) x
#endif

errno_t cosmo_once(_COSMO_ATOMIC(unsigned) *, void (*)(void)) libcesque;
int systemvpe(const char *, char *const[], char *const[]) libcesque;
char *GetProgramExecutableName(void) libcesque;
void unleaf(void) libcesque;
int __demangle(char *, const char *, size_t) libcesque;
int __is_mangled(const char *) libcesque;
bool32 IsLinuxModern(void) libcesque;
int LoadZipArgs(int *, char ***) libcesque;
int cosmo_args(const char *, char ***) libcesque;
int cosmo_futex_wake(_COSMO_ATOMIC(int) *, int, char);
int cosmo_futex_wait(_COSMO_ATOMIC(int) *, int, char, int,
                     const struct timespec *);

COSMOPOLITAN_C_END_
#endif /* COSMOPOLITAN_LIBC_COSMO_H_ */

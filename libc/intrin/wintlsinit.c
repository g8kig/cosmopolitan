/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│ vi: set et ft=c ts=2 sts=2 sw=2 fenc=utf-8                               :vi │
╞══════════════════════════════════════════════════════════════════════════════╡
│ Copyright 2023 Justine Alexandra Roberts Tunney                              │
│                                                                              │
│ Permission to use, copy, modify, and/or distribute this software for         │
│ any purpose with or without fee is hereby granted, provided that the         │
│ above copyright notice and this permission notice appear in all copies.      │
│                                                                              │
│ THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL                │
│ WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED                │
│ WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE             │
│ AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL         │
│ DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR        │
│ PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER               │
│ TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR             │
│ PERFORMANCE OF THIS SOFTWARE.                                                │
╚─────────────────────────────────────────────────────────────────────────────*/
#include "libc/intrin/atomic.h"
#include "libc/log/libfatal.internal.h"
#include "libc/nt/thread.h"
#include "libc/nt/thunk/msabi.h"
#include "libc/runtime/runtime.h"
#include "libc/thread/tls.h"
#ifdef __x86_64__

__msabi extern typeof(GetCurrentThreadId) *const __imp_GetCurrentThreadId;

/**
 * Initializes bare minimum TLS for Windows thread.
 */
textwindows dontinstrument void __bootstrap_tls(struct CosmoTib *tib,
                                                char *bp) {
  __repstosb(tib, 0, sizeof(*tib));
  tib->tib_self = tib;
  tib->tib_self2 = tib;
  tib->tib_sigmask = -1;
  tib->tib_strace = -100;
  tib->tib_ftrace = -100;
  tib->tib_sigstack_size = 57344;
  tib->tib_sigstack_addr = bp - 57344;
  int tid = __imp_GetCurrentThreadId();
  atomic_init(&tib->tib_ptid, tid);
  atomic_init(&tib->tib_ctid, tid);
  __set_tls_win32(tib);
}

#endif /* __x86_64__ */

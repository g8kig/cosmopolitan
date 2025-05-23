/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│ vi: set et ft=c ts=2 sts=2 sw=2 fenc=utf-8                               :vi │
╞══════════════════════════════════════════════════════════════════════════════╡
│ Copyright 2020 Justine Alexandra Roberts Tunney                              │
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
#include "libc/calls/calls.h"
#include "libc/dce.h"
#include "libc/intrin/strace.h"
#include "libc/mem/mem.h"
#include "libc/nt/runtime.h"
#include "libc/nt/winsock.h"
#include "libc/runtime/runtime.h"
#include "libc/sock/internal.h"

#define VERSION 0x0202 /* Windows Vista+ */

/**
 * Information about underlying Windows Sockets implementation.
 *
 * Cosmopolitan automatically calls __yoink() on this symbol when its
 * Berkeley Socket wrappers are linked. The latest version of Winsock
 * was introduced alongside x64, so this should never fail.
 */
struct NtWsaData kNtWsaData;

static textwindows void WinSockCleanup(void) {
  int rc;
  rc = WSACleanup();
  NTTRACE("WSACleanup() → %d% lm", rc);
}

textwindows void WinSockInit(void) {
  int rc;
  atexit(WinSockCleanup);
  NTTRACE("WSAStartup()");
  if ((rc = WSAStartup(VERSION, &kNtWsaData)) != 0 ||
      kNtWsaData.wVersion != VERSION) {
    _Exit(1);
  }
}

textwindows dontinstrument void WinSockFork(void) {
  WSAStartup(VERSION, &kNtWsaData);
}

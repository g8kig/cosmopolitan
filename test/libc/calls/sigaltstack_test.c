/*-*- mode:c;indent-tabs-mode:nil;c-basic-offset:2;tab-width:8;coding:utf-8 -*-│
│ vi: set et ft=c ts=2 sts=2 sw=2 fenc=utf-8                               :vi │
╞══════════════════════════════════════════════════════════════════════════════╡
│ Copyright 2024 Justine Alexandra Roberts Tunney                              │
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
#include "libc/calls/struct/sigaltstack.h"
#include "libc/calls/calls.h"
#include "libc/errno.h"
#include "libc/mem/gc.h"
#include "libc/mem/mem.h"
#include "libc/runtime/sysconf.h"
#include "libc/sysv/consts/ss.h"
#include "libc/testlib/testlib.h"

TEST(sigaltstack, badFlag) {
  struct sigaltstack ss;
  ss.ss_flags = -1;
  ss.ss_size = 0;
  ss.ss_sp = 0;
  EXPECT_SYS(EINVAL, -1, sigaltstack(&ss, 0));
}

TEST(sigaltstack, disable) {
  struct sigaltstack ss;
  EXPECT_SYS(0, 0, sigaltstack(0, &ss));
  ss.ss_flags = SS_DISABLE;
  EXPECT_SYS(0, 0, sigaltstack(&ss, 0));
  EXPECT_SYS(0, 0, sigaltstack(0, &ss));
  EXPECT_EQ(SS_DISABLE, ss.ss_flags);
}

TEST(sigaltstack, size_requirement) {
  struct sigaltstack ss;
  EXPECT_SYS(0, 0, sigaltstack(0, &ss));
  ss.ss_size = sysconf(_SC_MINSIGSTKSZ);
  ss.ss_sp = gc(malloc(ss.ss_size));
  ss.ss_flags = 0;
  ASSERT_SYS(0, 0, sigaltstack(&ss, 0));
  ASSERT_SYS(0, 0, sigaltstack(0, &ss));
}

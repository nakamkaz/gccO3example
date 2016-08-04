#gccO3example

```text

$ sh genasm.sh
gcc (GCC) 4.8.3 20140911 (Red Hat 4.8.3-9)
Copyright (C) 2013 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

==== diff sum1.s sumf.s
1c1
<       .file   "sum1.c"
---
>       .file   "sumf.c"
13,23c13
<       movl    $0, -4(%rbp)
<       movl    $1, -8(%rbp)
<       movl    $1, -8(%rbp)
<       jmp     .L2
< .L3:
<       movl    -8(%rbp), %eax
<       addl    %eax, -4(%rbp)
<       addl    $1, -8(%rbp)
< .L2:
<       cmpl    $10, -8(%rbp)
<       jle     .L3
---
>       movl    $10, -4(%rbp)
24a15,20
>       addl    $1, %eax
>       imull   -4(%rbp), %eax
>       movl    %eax, %edx
>       shrl    $31, %edx
>       addl    %edx, %eax
>       sarl    %eax
==== diff sum1-O3.s sumf-O3.s
1c1
<       .file   "sum1.c"
---
>       .file   "sumf.c"

```

	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$1, _a(%rip)
	movb	$1, _b(%rip)
	movabsq	$4607632778762754458, %rax      ## imm = 0x3FF199999999999A
	movq	%rax, _c(%rip)
	leaq	L___unnamed_1(%rip), %rax
	movq	%rax, _d(%rip)
	leaq	L_fmt(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_b(%rip), %esi
	leaq	L_fmt.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movsd	_c(%rip), %xmm0                 ## xmm0 = mem[0],zero
	leaq	L_fmt.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	_d(%rip), %rsi
	leaq	L_fmt.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$2, _a(%rip)
	movb	$0, _b(%rip)
	leaq	L_fmt.4(%rip), %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_b(%rip), %esi
	leaq	L_fmt.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_a                              ## @a
.zerofill __DATA,__common,_a,4,2
	.globl	_b                              ## @b
.zerofill __DATA,__common,_b,1,0
	.globl	_c                              ## @c
.zerofill __DATA,__common,_c,8,3
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"one"

	.globl	_d                              ## @d
.zerofill __DATA,__common,_d,8,3
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%d\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%g\n"

L_fmt.3:                                ## @fmt.3
	.asciz	"%s\n"

L_fmt.4:                                ## @fmt.4
	.asciz	"%d\n"

L_fmt.5:                                ## @fmt.5
	.asciz	"%d\n"

.subsections_via_symbols

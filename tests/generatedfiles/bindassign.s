	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$1, 36(%rsp)
	movb	$1, 15(%rsp)
	movabsq	$4607632778762754458, %rax      ## imm = 0x3FF199999999999A
	movq	%rax, 24(%rsp)
	leaq	L___unnamed_1(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	L_fmt(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_printf
	movzbl	15(%rsp), %esi
	leaq	L_fmt.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movsd	24(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	leaq	L_fmt.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	16(%rsp), %rsi
	leaq	L_fmt.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"one"

L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%B\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%g\n"

L_fmt.3:                                ## @fmt.3
	.asciz	"%s\n"

.subsections_via_symbols

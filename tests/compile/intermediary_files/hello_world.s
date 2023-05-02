	.text
	.file	"Graphite"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	i@GOTPCREL(%rip), %rax
	movl	$2, (%rax)
	leaq	.L__unnamed_1(%rip), %rax
	movq	x@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	.L__unnamed_2(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	i,@object                       # @i
	.bss
	.globl	i
	.p2align	2
i:
	.long	0                               # 0x0
	.size	i, 4

	.type	.L__unnamed_1,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"howdy Richard"
	.size	.L__unnamed_1, 14

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	3
x:
	.quad	0
	.size	x, 8

	.type	.L__unnamed_2,@object           # @1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_2:
	.asciz	"Howdy Folks!\n"
	.size	.L__unnamed_2, 14

	.section	".note.GNU-stack","",@progbits

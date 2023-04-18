	.text
	.file	"Graphite"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	$.L__unnamed_1, 16(%rsp)
	movl	$4, 12(%rsp)
	movl	$.L__unnamed_2, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L__unnamed_1,@object   # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"\"plz work\""
	.size	.L__unnamed_1, 11

	.type	.L__unnamed_2,@object   # @1
.L__unnamed_2:
	.asciz	"\"test\""
	.size	.L__unnamed_2, 7

	.section	".note.GNU-stack","",@progbits

	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_h                              ## @h
.zerofill __DATA,__common,_h,16,3
.subsections_via_symbols

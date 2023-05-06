	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%rax, %r14
	movl	$8, %edi
	callq	_malloc
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	%rbx, _n(%rip)
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%rax, %r14
	movl	$8, %edi
	callq	_malloc
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	%rbx, _m(%rip)
	movq	_n(%rip), %r14
	movq	_g(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g(%rip)
	movq	_m(%rip), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g(%rip)
	movb	$0, -25(%rbp)
	movq	_n(%rip), %rcx
	.p2align	4, 0x90
LBB0_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, _llNodes(%rip)
	cmpq	$0, _llNodes(%rip)
	je	LBB0_4
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llNodes(%rip), %rax
	cmpq	%rcx, (%rax)
	je	LBB0_3
## %bb.41:                              ## %else
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llNodes(%rip), %rax
	movq	8(%rax), %rax
	jmp	LBB0_1
LBB0_3:                                 ## %then
	movb	$1, -25(%rbp)
LBB0_4:                                 ## %merge
	movb	-25(%rbp), %al
	movb	%al, _found_n(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_m(%rip), %rcx
	movq	_g(%rip), %rdx
	.p2align	4, 0x90
LBB0_5:                                 ## %while24
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.1(%rip)
	cmpq	$0, _llNodes.1(%rip)
	je	LBB0_8
## %bb.6:                               ## %while_body27
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llNodes.1(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_7
## %bb.42:                              ## %else33
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llNodes.1(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_5
LBB0_7:                                 ## %then32
	movb	$1, (%rax)
LBB0_8:                                 ## %merge34
	movb	(%rax), %al
	movb	%al, _found_m(%rip)
	movzbl	_found_n(%rip), %esi
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found_m(%rip), %esi
	leaq	L_fmt.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_n(%rip), %rcx
	movq	_g(%rip), %rdx
	movq	%rdx, _prevNode(%rip)
	.p2align	4, 0x90
LBB0_9:                                 ## %while44
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.3(%rip)
	cmpq	$0, _llNodes.3(%rip)
	je	LBB0_16
## %bb.10:                              ## %while_body47
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	_llNodes.3(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_11
## %bb.13:                              ## %else55
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	_llNodes.3(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_9
LBB0_11:                                ## %then52
	movq	_llNodes.3(%rip), %rcx
	cmpq	_prevNode(%rip), %rcx
	je	LBB0_14
## %bb.12:                              ## %then53
	movq	_prevNode(%rip), %rdx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rdx)
	jmp	LBB0_15
LBB0_14:                                ## %then54
	movq	8(%rcx), %rcx
	movq	%rcx, _g(%rip)
LBB0_15:                                ## %merge56
	movb	$1, (%rax)
LBB0_16:                                ## %merge56
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_n(%rip), %rcx
	movq	_g(%rip), %rdx
	.p2align	4, 0x90
LBB0_17:                                ## %while70
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.4(%rip)
	cmpq	$0, _llNodes.4(%rip)
	je	LBB0_20
## %bb.18:                              ## %while_body73
                                        ##   in Loop: Header=BB0_17 Depth=1
	movq	_llNodes.4(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_19
## %bb.43:                              ## %else79
                                        ##   in Loop: Header=BB0_17 Depth=1
	movq	_llNodes.4(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_17
LBB0_19:                                ## %then78
	movb	$1, (%rax)
LBB0_20:                                ## %merge80
	movb	(%rax), %al
	movb	%al, _found_n(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_m(%rip), %rcx
	movq	_g(%rip), %rdx
	.p2align	4, 0x90
LBB0_21:                                ## %while89
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.5(%rip)
	cmpq	$0, _llNodes.5(%rip)
	je	LBB0_24
## %bb.22:                              ## %while_body92
                                        ##   in Loop: Header=BB0_21 Depth=1
	movq	_llNodes.5(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_23
## %bb.44:                              ## %else98
                                        ##   in Loop: Header=BB0_21 Depth=1
	movq	_llNodes.5(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_21
LBB0_23:                                ## %then97
	movb	$1, (%rax)
LBB0_24:                                ## %merge99
	movb	(%rax), %al
	movb	%al, _found_m(%rip)
	movzbl	_found_n(%rip), %esi
	leaq	L_fmt.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found_m(%rip), %esi
	leaq	L_fmt.7(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_m(%rip), %rcx
	movq	_g(%rip), %rdx
	movq	%rdx, _prevNode.9(%rip)
	.p2align	4, 0x90
LBB0_25:                                ## %while112
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.8(%rip)
	cmpq	$0, _llNodes.8(%rip)
	je	LBB0_32
## %bb.26:                              ## %while_body115
                                        ##   in Loop: Header=BB0_25 Depth=1
	movq	_llNodes.8(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_27
## %bb.29:                              ## %else123
                                        ##   in Loop: Header=BB0_25 Depth=1
	movq	_llNodes.8(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_25
LBB0_27:                                ## %then120
	movq	_llNodes.8(%rip), %rcx
	cmpq	_prevNode.9(%rip), %rcx
	je	LBB0_30
## %bb.28:                              ## %then121
	movq	_prevNode.9(%rip), %rdx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rdx)
	jmp	LBB0_31
LBB0_30:                                ## %then122
	movq	8(%rcx), %rcx
	movq	%rcx, _g(%rip)
LBB0_31:                                ## %merge124
	movb	$1, (%rax)
LBB0_32:                                ## %merge124
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_n(%rip), %rcx
	movq	_g(%rip), %rdx
	.p2align	4, 0x90
LBB0_33:                                ## %while142
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.10(%rip)
	cmpq	$0, _llNodes.10(%rip)
	je	LBB0_36
## %bb.34:                              ## %while_body145
                                        ##   in Loop: Header=BB0_33 Depth=1
	movq	_llNodes.10(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_35
## %bb.45:                              ## %else151
                                        ##   in Loop: Header=BB0_33 Depth=1
	movq	_llNodes.10(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_33
LBB0_35:                                ## %then150
	movb	$1, (%rax)
LBB0_36:                                ## %merge152
	movb	(%rax), %al
	movb	%al, _found_n(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_m(%rip), %rcx
	movq	_g(%rip), %rdx
	.p2align	4, 0x90
LBB0_37:                                ## %while161
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.11(%rip)
	cmpq	$0, _llNodes.11(%rip)
	je	LBB0_40
## %bb.38:                              ## %while_body164
                                        ##   in Loop: Header=BB0_37 Depth=1
	movq	_llNodes.11(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_39
## %bb.46:                              ## %else170
                                        ##   in Loop: Header=BB0_37 Depth=1
	movq	_llNodes.11(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_37
LBB0_39:                                ## %then169
	movb	$1, (%rax)
LBB0_40:                                ## %merge171
	movb	(%rax), %al
	movb	%al, _found_m(%rip)
	movzbl	_found_n(%rip), %esi
	leaq	L_fmt.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found_m(%rip), %esi
	leaq	L_fmt.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_n                              ## @n
.zerofill __DATA,__common,_n,8,3
	.globl	_m                              ## @m
.zerofill __DATA,__common,_m,8,3
	.globl	_g                              ## @g
.zerofill __DATA,__common,_g,16,3
	.globl	_llNodes                        ## @llNodes
.zerofill __DATA,__common,_llNodes,8,3
	.globl	_found_n                        ## @found_n
.zerofill __DATA,__common,_found_n,1,0
	.globl	_llNodes.1                      ## @llNodes.1
.zerofill __DATA,__common,_llNodes.1,8,3
	.globl	_found_m                        ## @found_m
.zerofill __DATA,__common,_found_m,1,0
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%d\n"

	.globl	_llNodes.3                      ## @llNodes.3
.zerofill __DATA,__common,_llNodes.3,8,3
	.globl	_prevNode                       ## @prevNode
.zerofill __DATA,__common,_prevNode,8,3
	.globl	_llNodes.4                      ## @llNodes.4
.zerofill __DATA,__common,_llNodes.4,8,3
	.globl	_llNodes.5                      ## @llNodes.5
.zerofill __DATA,__common,_llNodes.5,8,3
L_fmt.6:                                ## @fmt.6
	.asciz	"%d\n"

L_fmt.7:                                ## @fmt.7
	.asciz	"%d\n"

	.globl	_llNodes.8                      ## @llNodes.8
.zerofill __DATA,__common,_llNodes.8,8,3
	.globl	_prevNode.9                     ## @prevNode.9
.zerofill __DATA,__common,_prevNode.9,8,3
	.globl	_llNodes.10                     ## @llNodes.10
.zerofill __DATA,__common,_llNodes.10,8,3
	.globl	_llNodes.11                     ## @llNodes.11
.zerofill __DATA,__common,_llNodes.11,8,3
L_fmt.12:                               ## @fmt.12
	.asciz	"%d\n"

L_fmt.13:                               ## @fmt.13
	.asciz	"%d\n"

.subsections_via_symbols

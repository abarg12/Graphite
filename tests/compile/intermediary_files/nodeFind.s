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
	movq	%rbx, _n2(%rip)
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
	movq	%rbx, _n4(%rip)
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
	movq	%rbx, _n3(%rip)
	movl	$24, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, _e3(%rip)
	movl	$24, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, _e4(%rip)
	movl	$24, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, _e5(%rip)
	movq	_n(%rip), %r14
	movq	_g(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g(%rip)
	movq	_n2(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	movq	%r15, (%rax)
	movq	%rax, _g(%rip)
	movq	_n3(%rip), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%r14, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, _g(%rip)
	movq	_e3(%rip), %r14
	movq	_g+8(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g+8(%rip)
	movq	_e4(%rip), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g+8(%rip)
	movb	$0, -25(%rbp)
	movq	_n4(%rip), %rax
	movq	_g(%rip), %rcx
	.p2align	4, 0x90
LBB0_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, _llNodes(%rip)
	cmpq	$0, _llNodes(%rip)
	je	LBB0_4
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llNodes(%rip), %rcx
	cmpq	%rax, (%rcx)
	je	LBB0_3
## %bb.17:                              ## %else
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llNodes(%rip), %rcx
	movq	8(%rcx), %rcx
	jmp	LBB0_1
LBB0_3:                                 ## %then
	movb	$1, -25(%rbp)
LBB0_4:                                 ## %merge
	movb	-25(%rbp), %al
	movb	%al, _found(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_n3(%rip), %rcx
	movq	_g(%rip), %rdx
	.p2align	4, 0x90
LBB0_5:                                 ## %while64
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.1(%rip)
	cmpq	$0, _llNodes.1(%rip)
	je	LBB0_8
## %bb.6:                               ## %while_body67
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llNodes.1(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_7
## %bb.18:                              ## %else73
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llNodes.1(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_5
LBB0_7:                                 ## %then72
	movb	$1, (%rax)
LBB0_8:                                 ## %merge74
	movb	(%rax), %al
	movb	%al, _found2(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_e3(%rip), %rcx
	movq	_g+8(%rip), %rdx
	.p2align	4, 0x90
LBB0_9:                                 ## %while83
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llEdges(%rip)
	cmpq	$0, _llEdges(%rip)
	je	LBB0_12
## %bb.10:                              ## %while_body86
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	_llEdges(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_11
## %bb.19:                              ## %else92
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	_llEdges(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_9
LBB0_11:                                ## %then91
	movb	$1, (%rax)
LBB0_12:                                ## %merge93
	movb	(%rax), %al
	movb	%al, _found3(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_e5(%rip), %rcx
	movq	_g+8(%rip), %rdx
	.p2align	4, 0x90
LBB0_13:                                ## %while102
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llEdges.2(%rip)
	cmpq	$0, _llEdges.2(%rip)
	je	LBB0_16
## %bb.14:                              ## %while_body105
                                        ##   in Loop: Header=BB0_13 Depth=1
	movq	_llEdges.2(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_15
## %bb.20:                              ## %else111
                                        ##   in Loop: Header=BB0_13 Depth=1
	movq	_llEdges.2(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_13
LBB0_15:                                ## %then110
	movb	$1, (%rax)
LBB0_16:                                ## %merge112
	movb	(%rax), %al
	movb	%al, _found4(%rip)
	movzbl	_found(%rip), %esi
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found2(%rip), %esi
	leaq	L_fmt.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found3(%rip), %esi
	leaq	L_fmt.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found4(%rip), %esi
	leaq	L_fmt.5(%rip), %rdi
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
	.globl	_n2                             ## @n2
.zerofill __DATA,__common,_n2,8,3
	.globl	_n4                             ## @n4
.zerofill __DATA,__common,_n4,8,3
	.globl	_n3                             ## @n3
.zerofill __DATA,__common,_n3,8,3
	.globl	_e3                             ## @e3
.zerofill __DATA,__common,_e3,8,3
	.globl	_e4                             ## @e4
.zerofill __DATA,__common,_e4,8,3
	.globl	_e5                             ## @e5
.zerofill __DATA,__common,_e5,8,3
	.globl	_g                              ## @g
.zerofill __DATA,__common,_g,16,3
	.globl	_llNodes                        ## @llNodes
.zerofill __DATA,__common,_llNodes,8,3
	.globl	_found                          ## @found
.zerofill __DATA,__common,_found,1,0
	.globl	_llNodes.1                      ## @llNodes.1
.zerofill __DATA,__common,_llNodes.1,8,3
	.globl	_found2                         ## @found2
.zerofill __DATA,__common,_found2,1,0
	.globl	_llEdges                        ## @llEdges
.zerofill __DATA,__common,_llEdges,8,3
	.globl	_found3                         ## @found3
.zerofill __DATA,__common,_found3,1,0
	.globl	_llEdges.2                      ## @llEdges.2
.zerofill __DATA,__common,_llEdges.2,8,3
	.globl	_found4                         ## @found4
.zerofill __DATA,__common,_found4,1,0
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.3:                                ## @fmt.3
	.asciz	"%d\n"

L_fmt.4:                                ## @fmt.4
	.asciz	"%d\n"

L_fmt.5:                                ## @fmt.5
	.asciz	"%d\n"

.subsections_via_symbols

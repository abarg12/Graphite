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
	movq	%rax, %r15
	movl	$4, %edi
	callq	_malloc
	movq	%rax, %r14
	movl	$8, %edi
	callq	_malloc
	movq	%rax, (%r15)
	movq	%r14, 16(%r15)
	movq	%r15, _m(%rip)
	movq	_n(%rip), %r14
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movq	%r15, 8(%rax)
	movl	$0, 16(%rax)
	movl	$24, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rbx, _e(%rip)
	movq	_m(%rip), %r14
	movq	_n(%rip), %r15
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movq	%r15, 8(%rax)
	movl	$0, 16(%rax)
	movl	$24, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rbx, _e2(%rip)
	movq	_e(%rip), %r14
	movq	_g+8(%rip), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g+8(%rip)
	movb	$0, -25(%rbp)
	movq	_e(%rip), %rcx
	.p2align	4, 0x90
LBB0_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, _llEdges(%rip)
	cmpq	$0, _llEdges(%rip)
	je	LBB0_4
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llEdges(%rip), %rax
	cmpq	%rcx, (%rax)
	je	LBB0_3
## %bb.25:                              ## %else
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llEdges(%rip), %rax
	movq	8(%rax), %rax
	jmp	LBB0_1
LBB0_3:                                 ## %then
	movb	$1, -25(%rbp)
LBB0_4:                                 ## %merge
	movb	-25(%rbp), %al
	movb	%al, _found_e(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_e2(%rip), %rcx
	movq	_g+8(%rip), %rdx
	.p2align	4, 0x90
LBB0_5:                                 ## %while37
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llEdges.1(%rip)
	cmpq	$0, _llEdges.1(%rip)
	je	LBB0_8
## %bb.6:                               ## %while_body40
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llEdges.1(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_7
## %bb.26:                              ## %else46
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llEdges.1(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_5
LBB0_7:                                 ## %then45
	movb	$1, (%rax)
LBB0_8:                                 ## %merge47
	movb	(%rax), %al
	movb	%al, _found_e2(%rip)
	movzbl	_found_e(%rip), %esi
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found_e2(%rip), %esi
	leaq	L_fmt.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_e(%rip), %rcx
	movq	_g+8(%rip), %rdx
	movq	%rdx, _prevEdge(%rip)
	.p2align	4, 0x90
LBB0_9:                                 ## %while58
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llEdges.3(%rip)
	cmpq	$0, _llEdges.3(%rip)
	je	LBB0_16
## %bb.10:                              ## %while_body61
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	_llEdges.3(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_11
## %bb.13:                              ## %else67
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	_llEdges.3(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_9
LBB0_11:                                ## %then64
	movq	_llEdges.3(%rip), %rcx
	cmpq	_prevEdge(%rip), %rcx
	je	LBB0_14
## %bb.12:                              ## %then65
	movq	_prevEdge(%rip), %rdx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rdx)
	jmp	LBB0_15
LBB0_14:                                ## %then66
	movq	8(%rcx), %rcx
	movq	%rcx, _g+8(%rip)
LBB0_15:                                ## %merge68
	movb	$1, (%rax)
LBB0_16:                                ## %merge68
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_e(%rip), %rcx
	movq	_g+8(%rip), %rdx
	.p2align	4, 0x90
LBB0_17:                                ## %while81
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llEdges.4(%rip)
	cmpq	$0, _llEdges.4(%rip)
	je	LBB0_20
## %bb.18:                              ## %while_body84
                                        ##   in Loop: Header=BB0_17 Depth=1
	movq	_llEdges.4(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_19
## %bb.27:                              ## %else90
                                        ##   in Loop: Header=BB0_17 Depth=1
	movq	_llEdges.4(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_17
LBB0_19:                                ## %then89
	movb	$1, (%rax)
LBB0_20:                                ## %merge91
	movb	(%rax), %al
	movb	%al, _found_e(%rip)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_e2(%rip), %rcx
	movq	_g+8(%rip), %rdx
	.p2align	4, 0x90
LBB0_21:                                ## %while101
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llEdges.5(%rip)
	cmpq	$0, _llEdges.5(%rip)
	je	LBB0_24
## %bb.22:                              ## %while_body104
                                        ##   in Loop: Header=BB0_21 Depth=1
	movq	_llEdges.5(%rip), %rdx
	cmpq	%rcx, (%rdx)
	je	LBB0_23
## %bb.28:                              ## %else110
                                        ##   in Loop: Header=BB0_21 Depth=1
	movq	_llEdges.5(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_21
LBB0_23:                                ## %then109
	movb	$1, (%rax)
LBB0_24:                                ## %merge111
	movb	(%rax), %al
	movb	%al, _found_e2(%rip)
	movzbl	_found_e(%rip), %esi
	leaq	L_fmt.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_found_e2(%rip), %esi
	leaq	L_fmt.7(%rip), %rdi
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
	.globl	_e                              ## @e
.zerofill __DATA,__common,_e,8,3
	.globl	_e2                             ## @e2
.zerofill __DATA,__common,_e2,8,3
	.globl	_llEdges                        ## @llEdges
.zerofill __DATA,__common,_llEdges,8,3
	.globl	_found_e                        ## @found_e
.zerofill __DATA,__common,_found_e,1,0
	.globl	_llEdges.1                      ## @llEdges.1
.zerofill __DATA,__common,_llEdges.1,8,3
	.globl	_found_e2                       ## @found_e2
.zerofill __DATA,__common,_found_e2,1,0
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%d\n"

	.globl	_llEdges.3                      ## @llEdges.3
.zerofill __DATA,__common,_llEdges.3,8,3
	.globl	_prevEdge                       ## @prevEdge
.zerofill __DATA,__common,_prevEdge,8,3
	.globl	_llEdges.4                      ## @llEdges.4
.zerofill __DATA,__common,_llEdges.4,8,3
	.globl	_llEdges.5                      ## @llEdges.5
.zerofill __DATA,__common,_llEdges.5,8,3
L_fmt.6:                                ## @fmt.6
	.asciz	"%d\n"

L_fmt.7:                                ## @fmt.7
	.asciz	"%d\n"

.subsections_via_symbols

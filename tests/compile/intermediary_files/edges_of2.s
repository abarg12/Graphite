	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
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
	movq	%rbx, _n1(%rip)
	movl	$4, %edi
	callq	_malloc
	movl	$10, (%rax)
	movq	%rax, 16(%rbx)
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
	movl	$4, %edi
	callq	_malloc
	movl	$20, (%rax)
	movq	%rax, 16(%rbx)
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
	movl	$4, %edi
	callq	_malloc
	movl	$30, (%rax)
	movq	%rax, 16(%rbx)
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
	movq	_n1(%rip), %r14
	movq	_n2(%rip), %r15
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
	movq	%rbx, _e1(%rip)
	movl	$111, 16(%rbx)
	movq	_n3(%rip), %r14
	movq	_n1(%rip), %r15
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
	movl	$222, 16(%rbx)
	movq	_n1(%rip), %r14
	movq	_n4(%rip), %r15
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
	movq	%rbx, _e3(%rip)
	movl	$333, 16(%rbx)                  ## imm = 0x14D
	movl	$24, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, _e4(%rip)
	movq	_n1(%rip), %r14
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
	movq	_n3(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r14, 8(%rax)
	movq	%r15, (%rax)
	movq	%rax, _g(%rip)
	movq	_n4(%rip), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g(%rip)
	movq	_e1(%rip), %r14
	movq	_g+8(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g+8(%rip)
	movq	_e2(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	movq	%r15, (%rax)
	movq	%rax, _g+8(%rip)
	movq	_e3(%rip), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%r14, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, _g+8(%rip)
	movb	$0, 15(%rsp)
	movq	_e1(%rip), %rcx
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
## %bb.14:                              ## %else
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llEdges(%rip), %rax
	movq	8(%rax), %rax
	jmp	LBB0_1
LBB0_3:                                 ## %then
	movb	$1, 15(%rsp)
LBB0_4:                                 ## %merge
	movzbl	15(%rsp), %esi
	movb	%sil, _e(%rip)
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_n1(%rip), %r14
	movq	_g+8(%rip), %rax
	jmp	LBB0_5
	.p2align	4, 0x90
LBB0_8:                                 ## %then124
                                        ##   in Loop: Header=BB0_5 Depth=1
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r15
	movl	$8, %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movq	%rax, (%r15)
	movq	_edgesList(%rip), %rax
	movq	%rax, 8(%r15)
	movq	%r15, _edgesList(%rip)
LBB0_9:                                 ## %else125
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llEdges.1(%rip), %rax
	movq	8(%rax), %rax
LBB0_5:                                 ## %while117
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, _llEdges.1(%rip)
	cmpq	$0, _llEdges.1(%rip)
	je	LBB0_10
## %bb.6:                               ## %while_body120
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llEdges.1(%rip), %rax
	movq	(%rax), %rbx
	cmpq	%r14, (%rbx)
	je	LBB0_8
## %bb.7:                               ## %while_body120
                                        ##   in Loop: Header=BB0_5 Depth=1
	cmpq	%r14, 8(%rbx)
	jne	LBB0_9
	jmp	LBB0_8
LBB0_10:                                ## %merge126
	movq	_edgesList(%rip), %r14
	movq	%r14, _l.2(%rip)
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%r14, (%rbx)
	movl	$2, (%rax)
	cmpl	$0, (%rax)
	je	LBB0_13
	.p2align	4, 0x90
LBB0_12:                                ## %while_body140
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	decl	(%rax)
	movq	%rcx, (%rbx)
	cmpl	$0, (%rax)
	jne	LBB0_12
LBB0_13:                                ## %merge144
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, _e4(%rip)
	movq	(%rax), %r15
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
	movq	%r15, _n10(%rip)
	movq	16(%r15), %rax
	movl	(%rax), %esi
	movl	%esi, _i10(%rip)
	leaq	L_fmt.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_e4(%rip), %rax
	movl	16(%rax), %esi
	movl	%esi, _w(%rip)
	leaq	L_fmt.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_n1                             ## @n1
.zerofill __DATA,__common,_n1,8,3
	.globl	_n2                             ## @n2
.zerofill __DATA,__common,_n2,8,3
	.globl	_n3                             ## @n3
.zerofill __DATA,__common,_n3,8,3
	.globl	_n4                             ## @n4
.zerofill __DATA,__common,_n4,8,3
	.globl	_e1                             ## @e1
.zerofill __DATA,__common,_e1,8,3
	.globl	_e2                             ## @e2
.zerofill __DATA,__common,_e2,8,3
	.globl	_e3                             ## @e3
.zerofill __DATA,__common,_e3,8,3
	.globl	_e4                             ## @e4
.zerofill __DATA,__common,_e4,8,3
	.globl	_g                              ## @g
.zerofill __DATA,__common,_g,16,3
	.globl	_llEdges                        ## @llEdges
.zerofill __DATA,__common,_llEdges,8,3
	.globl	_e                              ## @e
.zerofill __DATA,__common,_e,1,0
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

	.globl	_l                              ## @l
.zerofill __DATA,__common,_l,8,3
	.globl	_edgesList                      ## @edgesList
.zerofill __DATA,__common,_edgesList,8,3
	.globl	_llEdges.1                      ## @llEdges.1
.zerofill __DATA,__common,_llEdges.1,8,3
	.globl	_l.2                            ## @l.2
.zerofill __DATA,__common,_l.2,8,3
	.globl	_n10                            ## @n10
.zerofill __DATA,__common,_n10,8,3
	.globl	_i10                            ## @i10
.zerofill __DATA,__common,_i10,4,2
L_fmt.3:                                ## @fmt.3
	.asciz	"%d\n"

	.globl	_w                              ## @w
.zerofill __DATA,__common,_w,4,2
L_fmt.4:                                ## @fmt.4
	.asciz	"%d\n"

.subsections_via_symbols

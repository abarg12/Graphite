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
	movq	%rbx, _r(%rip)
	movq	_n(%rip), %r14
	movq	_m(%rip), %r15
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
	movq	_n(%rip), %r14
	movq	_r(%rip), %r15
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
	movq	_e1(%rip), %rax
	movl	$5, 16(%rax)
	movq	_e2(%rip), %rax
	movl	$10, 16(%rax)
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
	movq	_e1(%rip), %r14
	movq	_g+8(%rip), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g+8(%rip)
	movq	_e2(%rip), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rbx, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, _g+8(%rip)
	movq	_n(%rip), %r14
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_4:                                 ## %then
                                        ##   in Loop: Header=BB0_1 Depth=1
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
LBB0_5:                                 ## %else
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llEdges(%rip), %rax
	movq	8(%rax), %rax
LBB0_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, _llEdges(%rip)
	cmpq	$0, _llEdges(%rip)
	je	LBB0_6
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llEdges(%rip), %rax
	movq	(%rax), %rbx
	cmpq	%r14, (%rbx)
	je	LBB0_4
## %bb.3:                               ## %while_body
                                        ##   in Loop: Header=BB0_1 Depth=1
	cmpq	%r14, 8(%rbx)
	jne	LBB0_5
	jmp	LBB0_4
LBB0_6:                                 ## %merge
	movq	_edgesList(%rip), %r14
	movq	%r14, _edges_of_n(%rip)
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%r14, (%rbx)
	movl	$0, (%rax)
	cmpq	$0, (%rbx)
	je	LBB0_9
	.p2align	4, 0x90
LBB0_8:                                 ## %while_body68
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	incl	(%rax)
	movq	%rcx, (%rbx)
	cmpq	$0, (%rbx)
	jne	LBB0_8
LBB0_9:                                 ## %merge71
	movl	(%rax), %eax
	movl	%eax, _list_length(%rip)
	leaq	L___unnamed_1(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	_list_length(%rip), %esi
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_edges_of_n(%rip), %rdi
	callq	_edge_weight_sum
	movl	%eax, _total_weight(%rip)
	leaq	L_fmt.1(%rip), %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_edge_weight_sum                ## -- Begin function edge_weight_sum
	.p2align	4, 0x90
_edge_weight_sum:                       ## @edge_weight_sum
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
	movq	%rdi, %r14
	movq	%rdi, -32(%rbp)
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%r14, (%rbx)
	movl	$0, (%rax)
	cmpl	$0, (%rax)
	je	LBB1_3
	.p2align	4, 0x90
LBB1_2:                                 ## %while_body
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	decl	(%rax)
	movq	%rcx, (%rbx)
	cmpl	$0, (%rax)
	jne	LBB1_2
LBB1_3:                                 ## %merge
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r14
	movq	%r14, %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %r15
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%r15, (%rbx)
	movl	$1, (%rax)
	cmpl	$0, (%rax)
	je	LBB1_6
	.p2align	4, 0x90
LBB1_5:                                 ## %while_body10
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	decl	(%rax)
	movq	%rcx, (%rbx)
	cmpl	$0, (%rax)
	jne	LBB1_5
LBB1_6:                                 ## %merge15
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	(%r14), %rax
	movl	16(%rax), %eax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsp
	movl	%eax, -16(%rdx)
	movq	-16(%rcx), %rax
	movl	16(%rax), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movl	%eax, -16(%rcx)
	addl	-16(%rdx), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movl	%eax, -16(%rcx)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_g                              ## @g
.zerofill __DATA,__common,_g,16,3
	.globl	_n                              ## @n
.zerofill __DATA,__common,_n,8,3
	.globl	_m                              ## @m
.zerofill __DATA,__common,_m,8,3
	.globl	_r                              ## @r
.zerofill __DATA,__common,_r,8,3
	.globl	_e1                             ## @e1
.zerofill __DATA,__common,_e1,8,3
	.globl	_e2                             ## @e2
.zerofill __DATA,__common,_e2,8,3
	.globl	_edgesList                      ## @edgesList
.zerofill __DATA,__common,_edgesList,8,3
	.globl	_llEdges                        ## @llEdges
.zerofill __DATA,__common,_llEdges,8,3
	.globl	_edges_of_n                     ## @edges_of_n
.zerofill __DATA,__common,_edges_of_n,8,3
	.globl	_list_length                    ## @list_length
.zerofill __DATA,__common,_list_length,4,2
	.section	__TEXT,__cstring,cstring_literals
L___unnamed_1:                          ## @0
	.asciz	"lenght of list of edges: \n"

L_fmt:                                  ## @fmt
	.asciz	"%d\n"

	.globl	_total_weight                   ## @total_weight
.zerofill __DATA,__common,_total_weight,4,2
L_fmt.1:                                ## @fmt.1
	.asciz	"%d\n"

.subsections_via_symbols

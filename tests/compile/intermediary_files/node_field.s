	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
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
	movb	$1, 8(%rbx)
	movq	_n(%rip), %rax
	movzbl	8(%rax), %esi
	movb	%sil, _f(%rip)
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_n(%rip), %rbx
	movl	$4, %edi
	callq	_malloc
	movl	$5, (%rax)
	movq	%rax, 16(%rbx)
	movq	_n(%rip), %rax
	movq	16(%rax), %rax
	movl	(%rax), %esi
	movl	%esi, _int_value(%rip)
	leaq	L_fmt.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_n(%rip), %r15
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
	movq	%r15, _n2(%rip)
	movq	_n(%rip), %rax
	movq	16(%rax), %rax
	movl	(%rax), %esi
	movl	%esi, _f2(%rip)
	leaq	L_fmt.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_n2(%rip), %rbx
	movl	$4, %edi
	callq	_malloc
	movl	$7, (%rax)
	movq	%rax, 16(%rbx)
	movq	_n(%rip), %rax
	movq	16(%rax), %rax
	movl	(%rax), %esi
	movl	%esi, _nData(%rip)
	leaq	L_fmt.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	callq	_node_in_func
	callq	_return_a_node
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %r14
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %r15
	movl	$8, %edi
	callq	_malloc
	movq	%rax, (%r14)
	movq	%r15, 16(%r14)
	movq	%rbx, _n5(%rip)
	movq	16(%rbx), %rax
	movq	(%rax), %rsi
	movq	%rsi, _myData(%rip)
	movq	(%rbx), %rax
	movq	%rax, _myName(%rip)
	movb	8(%rbx), %al
	movb	%al, _myFlag(%rip)
	leaq	L_fmt.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_myName(%rip), %rsi
	leaq	L_fmt.7(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movzbl	_myFlag(%rip), %esi
	leaq	L_fmt.8(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_node_in_func                   ## -- Begin function node_in_func
	.p2align	4, 0x90
_node_in_func:                          ## @node_in_func
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %r14
	movl	$8, %edi
	callq	_malloc
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	%rbx, 8(%rsp)
	movb	$0, 8(%rbx)
	movq	8(%rsp), %rax
	movzbl	8(%rax), %esi
	movb	%sil, 7(%rsp)
	leaq	L_fmt.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_n(%rip), %rax
	movq	16(%rax), %rax
	movl	(%rax), %esi
	movl	%esi, 20(%rsp)
	leaq	L_fmt.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_return_a_node                  ## -- Begin function return_a_node
	.p2align	4, 0x90
_return_a_node:                         ## @return_a_node
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %r14
	movl	$8, %edi
	callq	_malloc
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	%rbx, (%rsp)
	movl	$8, %edi
	callq	_malloc
	leaq	L___unnamed_1(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 16(%rbx)
	movq	(%rsp), %rax
	leaq	L___unnamed_2(%rip), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rax
	movb	$1, 8(%rax)
	movq	(%rsp), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_n                              ## @n
.zerofill __DATA,__common,_n,8,3
	.globl	_f                              ## @f
.zerofill __DATA,__common,_f,1,0
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

	.globl	_int_value                      ## @int_value
.zerofill __DATA,__common,_int_value,4,2
L_fmt.1:                                ## @fmt.1
	.asciz	"%d\n"

	.globl	_n2                             ## @n2
.zerofill __DATA,__common,_n2,8,3
	.globl	_f2                             ## @f2
.zerofill __DATA,__common,_f2,4,2
L_fmt.2:                                ## @fmt.2
	.asciz	"%d\n"

	.globl	_nData                          ## @nData
.zerofill __DATA,__common,_nData,4,2
L_fmt.3:                                ## @fmt.3
	.asciz	"%d\n"

L_fmt.4:                                ## @fmt.4
	.asciz	"%d\n"

L_fmt.5:                                ## @fmt.5
	.asciz	"%d\n"

L___unnamed_1:                          ## @0
	.asciz	"I really hope this works"

L___unnamed_2:                          ## @1
	.asciz	"if only grammatical symbols were allowed in strings in our language lol this has no personality"

	.globl	_n5                             ## @n5
.zerofill __DATA,__common,_n5,8,3
	.globl	_myData                         ## @myData
.zerofill __DATA,__common,_myData,8,3
	.globl	_myName                         ## @myName
.zerofill __DATA,__common,_myName,8,3
	.globl	_myFlag                         ## @myFlag
.zerofill __DATA,__common,_myFlag,1,0
L_fmt.6:                                ## @fmt.6
	.asciz	"%s\n"

L_fmt.7:                                ## @fmt.7
	.asciz	"%s\n"

L_fmt.8:                                ## @fmt.8
	.asciz	"%d\n"

.subsections_via_symbols

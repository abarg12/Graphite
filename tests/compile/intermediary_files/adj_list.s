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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
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
	movq	%rbx, _n0(%rip)
	leaq	L___unnamed_1(%rip), %rax
	movq	%rax, (%rbx)
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
	movq	%rbx, _n1(%rip)
	leaq	L___unnamed_2(%rip), %rax
	movq	%rax, (%rbx)
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
	movq	%rbx, _n2(%rip)
	leaq	L___unnamed_3(%rip), %rax
	movq	%rax, (%rbx)
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
	movq	%rbx, _n3(%rip)
	leaq	L___unnamed_4(%rip), %rax
	movq	%rax, (%rbx)
	movq	_n0(%rip), %r14
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
	movq	%rbx, _e0(%rip)
	movq	_n2(%rip), %r14
	movq	_n0(%rip), %r15
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
	movq	_n0(%rip), %r14
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
	movq	%rbx, _e3(%rip)
	movq	_n2(%rip), %r14
	movq	_n3(%rip), %r15
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
	movq	%rbx, _e4(%rip)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, _g(%rip)
	movq	_n0(%rip), %r14
	movq	(%rax), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, (%rbx)
	movq	_n1(%rip), %r14
	movq	_g(%rip), %rbx
	movq	(%rbx), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, (%rbx)
	movq	_n2(%rip), %r14
	movq	_g(%rip), %rbx
	movq	(%rbx), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, (%rbx)
	movq	_n3(%rip), %r14
	movq	_g(%rip), %rbx
	movq	(%rbx), %r15
	movl	$16, %edi
	callq	_malloc
	movq	%r15, 8(%rax)
	movq	%r14, (%rax)
	movq	%rax, (%rbx)
	movq	_e0(%rip), %r12
	movq	_g(%rip), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	8(%rax), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	movq	%r12, (%rax)
	movq	(%r12), %rbx
	movq	8(%r12), %r12
	movb	$0, -41(%rbp)
	movq	_g(%rip), %rax
	movq	(%rax), %rax
	.p2align	4, 0x90
LBB0_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, _llNodes(%rip)
	cmpq	$0, _llNodes(%rip)
	je	LBB0_4
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llNodes(%rip), %rax
	cmpq	%rbx, (%rax)
	je	LBB0_3
## %bb.61:                              ## %else
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_llNodes(%rip), %rax
	movq	8(%rax), %rax
	jmp	LBB0_1
LBB0_3:                                 ## %then
	movb	$1, -41(%rbp)
LBB0_4:                                 ## %merge
	movb	-41(%rbp), %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rdx)
	movq	_g(%rip), %rdx
	movq	(%rdx), %rdx
	.p2align	4, 0x90
LBB0_5:                                 ## %while129
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.2(%rip)
	cmpq	$0, _llNodes.2(%rip)
	je	LBB0_8
## %bb.6:                               ## %while_body132
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llNodes.2(%rip), %rdx
	cmpq	%r12, (%rdx)
	je	LBB0_7
## %bb.62:                              ## %else138
                                        ##   in Loop: Header=BB0_5 Depth=1
	movq	_llNodes.2(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_5
LBB0_7:                                 ## %then137
	movb	$1, (%rcx)
LBB0_8:                                 ## %merge139
	movb	(%rcx), %r13b
	testb	$1, %al
	jne	LBB0_10
## %bb.9:                               ## %else146
	movq	_g(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	$16, %edi
	callq	_malloc
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, (%r14)
LBB0_10:                                ## %merge147
	testb	$1, %r13b
	jne	LBB0_12
## %bb.11:                              ## %else156
	movq	_g(%rip), %rbx
	movq	(%rbx), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%r14, 8(%rax)
	movq	%r12, (%rax)
	movq	%rax, (%rbx)
LBB0_12:                                ## %merge157
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	%r15, 8(%rax)
	movq	_e1(%rip), %r12
	movq	_g(%rip), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	8(%rax), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	movq	%r12, (%rax)
	movq	(%r12), %rbx
	movq	8(%r12), %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_g(%rip), %rcx
	movq	(%rcx), %rcx
	.p2align	4, 0x90
LBB0_13:                                ## %while180
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, _llNodes.3(%rip)
	cmpq	$0, _llNodes.3(%rip)
	je	LBB0_16
## %bb.14:                              ## %while_body183
                                        ##   in Loop: Header=BB0_13 Depth=1
	movq	_llNodes.3(%rip), %rcx
	cmpq	%rbx, (%rcx)
	je	LBB0_15
## %bb.63:                              ## %else189
                                        ##   in Loop: Header=BB0_13 Depth=1
	movq	_llNodes.3(%rip), %rcx
	movq	8(%rcx), %rcx
	jmp	LBB0_13
LBB0_15:                                ## %then188
	movb	$1, (%rax)
LBB0_16:                                ## %merge190
	movb	(%rax), %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rdx)
	movq	_g(%rip), %rdx
	movq	(%rdx), %rdx
	.p2align	4, 0x90
LBB0_17:                                ## %while200
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.4(%rip)
	cmpq	$0, _llNodes.4(%rip)
	je	LBB0_20
## %bb.18:                              ## %while_body203
                                        ##   in Loop: Header=BB0_17 Depth=1
	movq	_llNodes.4(%rip), %rdx
	cmpq	%r12, (%rdx)
	je	LBB0_19
## %bb.64:                              ## %else209
                                        ##   in Loop: Header=BB0_17 Depth=1
	movq	_llNodes.4(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_17
LBB0_19:                                ## %then208
	movb	$1, (%rcx)
LBB0_20:                                ## %merge210
	movb	(%rcx), %r13b
	testb	$1, %al
	jne	LBB0_22
## %bb.21:                              ## %else217
	movq	_g(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	$16, %edi
	callq	_malloc
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, (%r14)
LBB0_22:                                ## %merge218
	testb	$1, %r13b
	jne	LBB0_24
## %bb.23:                              ## %else227
	movq	_g(%rip), %rbx
	movq	(%rbx), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%r14, 8(%rax)
	movq	%r12, (%rax)
	movq	%rax, (%rbx)
LBB0_24:                                ## %merge228
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	%r15, 8(%rax)
	movq	_e2(%rip), %r12
	movq	_g(%rip), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	8(%rax), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	movq	%r12, (%rax)
	movq	(%r12), %rbx
	movq	8(%r12), %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_g(%rip), %rcx
	movq	(%rcx), %rcx
	.p2align	4, 0x90
LBB0_25:                                ## %while251
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, _llNodes.5(%rip)
	cmpq	$0, _llNodes.5(%rip)
	je	LBB0_28
## %bb.26:                              ## %while_body254
                                        ##   in Loop: Header=BB0_25 Depth=1
	movq	_llNodes.5(%rip), %rcx
	cmpq	%rbx, (%rcx)
	je	LBB0_27
## %bb.65:                              ## %else260
                                        ##   in Loop: Header=BB0_25 Depth=1
	movq	_llNodes.5(%rip), %rcx
	movq	8(%rcx), %rcx
	jmp	LBB0_25
LBB0_27:                                ## %then259
	movb	$1, (%rax)
LBB0_28:                                ## %merge261
	movb	(%rax), %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rdx)
	movq	_g(%rip), %rdx
	movq	(%rdx), %rdx
	.p2align	4, 0x90
LBB0_29:                                ## %while271
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.6(%rip)
	cmpq	$0, _llNodes.6(%rip)
	je	LBB0_32
## %bb.30:                              ## %while_body274
                                        ##   in Loop: Header=BB0_29 Depth=1
	movq	_llNodes.6(%rip), %rdx
	cmpq	%r12, (%rdx)
	je	LBB0_31
## %bb.66:                              ## %else280
                                        ##   in Loop: Header=BB0_29 Depth=1
	movq	_llNodes.6(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_29
LBB0_31:                                ## %then279
	movb	$1, (%rcx)
LBB0_32:                                ## %merge281
	movb	(%rcx), %r13b
	testb	$1, %al
	jne	LBB0_34
## %bb.33:                              ## %else288
	movq	_g(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	$16, %edi
	callq	_malloc
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, (%r14)
LBB0_34:                                ## %merge289
	testb	$1, %r13b
	jne	LBB0_36
## %bb.35:                              ## %else298
	movq	_g(%rip), %rbx
	movq	(%rbx), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%r14, 8(%rax)
	movq	%r12, (%rax)
	movq	%rax, (%rbx)
LBB0_36:                                ## %merge299
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	%r15, 8(%rax)
	movq	_e3(%rip), %r12
	movq	_g(%rip), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	8(%rax), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	movq	%r12, (%rax)
	movq	(%r12), %rbx
	movq	8(%r12), %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_g(%rip), %rcx
	movq	(%rcx), %rcx
	.p2align	4, 0x90
LBB0_37:                                ## %while322
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, _llNodes.7(%rip)
	cmpq	$0, _llNodes.7(%rip)
	je	LBB0_40
## %bb.38:                              ## %while_body325
                                        ##   in Loop: Header=BB0_37 Depth=1
	movq	_llNodes.7(%rip), %rcx
	cmpq	%rbx, (%rcx)
	je	LBB0_39
## %bb.67:                              ## %else331
                                        ##   in Loop: Header=BB0_37 Depth=1
	movq	_llNodes.7(%rip), %rcx
	movq	8(%rcx), %rcx
	jmp	LBB0_37
LBB0_39:                                ## %then330
	movb	$1, (%rax)
LBB0_40:                                ## %merge332
	movb	(%rax), %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rdx)
	movq	_g(%rip), %rdx
	movq	(%rdx), %rdx
	.p2align	4, 0x90
LBB0_41:                                ## %while342
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.8(%rip)
	cmpq	$0, _llNodes.8(%rip)
	je	LBB0_44
## %bb.42:                              ## %while_body345
                                        ##   in Loop: Header=BB0_41 Depth=1
	movq	_llNodes.8(%rip), %rdx
	cmpq	%r12, (%rdx)
	je	LBB0_43
## %bb.68:                              ## %else351
                                        ##   in Loop: Header=BB0_41 Depth=1
	movq	_llNodes.8(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_41
LBB0_43:                                ## %then350
	movb	$1, (%rcx)
LBB0_44:                                ## %merge352
	movb	(%rcx), %r13b
	testb	$1, %al
	jne	LBB0_46
## %bb.45:                              ## %else359
	movq	_g(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	$16, %edi
	callq	_malloc
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, (%r14)
LBB0_46:                                ## %merge360
	testb	$1, %r13b
	jne	LBB0_48
## %bb.47:                              ## %else369
	movq	_g(%rip), %rbx
	movq	(%rbx), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%r14, 8(%rax)
	movq	%r12, (%rax)
	movq	%rax, (%rbx)
LBB0_48:                                ## %merge370
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	%r15, 8(%rax)
	movq	_e4(%rip), %r12
	movq	_g(%rip), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	8(%rax), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	movq	%r12, (%rax)
	movq	(%r12), %rbx
	movq	8(%r12), %r12
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	_g(%rip), %rcx
	movq	(%rcx), %rcx
	.p2align	4, 0x90
LBB0_49:                                ## %while393
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rcx, _llNodes.9(%rip)
	cmpq	$0, _llNodes.9(%rip)
	je	LBB0_52
## %bb.50:                              ## %while_body396
                                        ##   in Loop: Header=BB0_49 Depth=1
	movq	_llNodes.9(%rip), %rcx
	cmpq	%rbx, (%rcx)
	je	LBB0_51
## %bb.69:                              ## %else402
                                        ##   in Loop: Header=BB0_49 Depth=1
	movq	_llNodes.9(%rip), %rcx
	movq	8(%rcx), %rcx
	jmp	LBB0_49
LBB0_51:                                ## %then401
	movb	$1, (%rax)
LBB0_52:                                ## %merge403
	movb	(%rax), %al
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%rdx)
	movq	_g(%rip), %rdx
	movq	(%rdx), %rdx
	.p2align	4, 0x90
LBB0_53:                                ## %while413
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdx, _llNodes.10(%rip)
	cmpq	$0, _llNodes.10(%rip)
	je	LBB0_56
## %bb.54:                              ## %while_body416
                                        ##   in Loop: Header=BB0_53 Depth=1
	movq	_llNodes.10(%rip), %rdx
	cmpq	%r12, (%rdx)
	je	LBB0_55
## %bb.70:                              ## %else422
                                        ##   in Loop: Header=BB0_53 Depth=1
	movq	_llNodes.10(%rip), %rdx
	movq	8(%rdx), %rdx
	jmp	LBB0_53
LBB0_55:                                ## %then421
	movb	$1, (%rcx)
LBB0_56:                                ## %merge423
	movb	(%rcx), %r13b
	testb	$1, %al
	jne	LBB0_58
## %bb.57:                              ## %else430
	movq	_g(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	$16, %edi
	callq	_malloc
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, (%r14)
LBB0_58:                                ## %merge431
	testb	$1, %r13b
	jne	LBB0_60
## %bb.59:                              ## %else440
	movq	_g(%rip), %rbx
	movq	(%rbx), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%r14, 8(%rax)
	movq	%r12, (%rax)
	movq	%rax, (%rbx)
LBB0_60:                                ## %merge441
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movq	%r15, 8(%rax)
	leaq	L___unnamed_5(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	_n2(%rip), %rsi
	movq	_g(%rip), %rdi
	callq	_adj_nodes
	movq	%rax, _neighbors(%rip)
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_adj_nodes                      ## -- Begin function adj_nodes
	.p2align	4, 0x90
_adj_nodes:                             ## @adj_nodes
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, -72(%rbp)
	movq	%rsi, -64(%rbp)
	movq	8(%rdi), %rax
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_4:                                 ## %then
                                        ##   in Loop: Header=BB1_1 Depth=1
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
LBB1_5:                                 ## %else
                                        ##   in Loop: Header=BB1_1 Depth=1
	movq	_llEdges(%rip), %rax
	movq	8(%rax), %rax
LBB1_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, _llEdges(%rip)
	cmpq	$0, _llEdges(%rip)
	je	LBB1_12
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB1_1 Depth=1
	movq	_llEdges(%rip), %rax
	movq	(%rax), %rbx
	cmpq	%r14, (%rbx)
	je	LBB1_4
## %bb.3:                               ## %while_body
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpq	%r14, 8(%rbx)
	jne	LBB1_5
	jmp	LBB1_4
LBB1_12:                                ## %merge
	movq	_edgesList(%rip), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	movq	%rdx, %rsp
	movq	%rax, -16(%rcx)
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	%rax, %rsp
	movq	-16(%rcx), %r14
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movl	$0, (%rax)
	movq	%r14, (%rbx)
	testq	%r14, %r14
	je	LBB1_6
	.p2align	4, 0x90
## %bb.13:                              ## %traverse_loop
	cmpq	$0, (%rbx)
	je	LBB1_7
LBB1_14:                                ## %while_body16
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	incl	(%rax)
	movq	%rcx, (%rbx)
	cmpq	$0, (%rbx)
	jne	LBB1_14
	jmp	LBB1_7
LBB1_6:                                 ## %then14
	movl	$0, (%rax)
LBB1_7:                                 ## %merge13
	movl	(%rax), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r14
	movq	%r14, %rsp
	movl	%eax, -16(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	LBB1_8
	.p2align	4, 0x90
LBB1_16:                                ## %merge35
                                        ##   in Loop: Header=BB1_8 Depth=1
	incl	(%r12)
LBB1_8:                                 ## %while19
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_11 Depth 2
	movl	(%r12), %eax
	cmpl	(%r14), %eax
	jge	LBB1_18
## %bb.9:                               ## %while_body20
                                        ##   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax), %r15
	movl	(%r12), %r13d
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%r15, (%rbx)
	movl	%r13d, (%rax)
	cmpl	$0, (%rax)
	je	LBB1_15
	.p2align	4, 0x90
LBB1_11:                                ## %while_body26
                                        ##   Parent Loop BB1_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	decl	(%rax)
	movq	%rcx, (%rbx)
	cmpl	$0, (%rax)
	jne	LBB1_11
LBB1_15:                                ## %merge30
                                        ##   in Loop: Header=BB1_8 Depth=1
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	8(%rax), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rbx
	movq	%rbx, %rsp
	movq	%rax, -16(%rcx)
	cmpq	-64(%rbp), %rax
	je	LBB1_16
## %bb.17:                              ## %then36
                                        ##   in Loop: Header=BB1_8 Depth=1
	movq	(%rbx), %rax
	movq	(%rax), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	(%rbx), %rbx
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %r15
	movq	%rbx, (%rax)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	$0, 8(%rax)
	movq	%r15, (%rax)
	movq	-48(%rbp), %r13                 ## 8-byte Reload
	movq	(%r13), %r15
	movl	$4, %edi
	callq	_malloc
	movl	$-1, (%rax)
	movq	%r15, 8(%rbx)
	movq	%rbx, (%r13)
	incl	(%r12)
	jmp	LBB1_8
LBB1_18:                                ## %merge75
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print_list_str_nodes           ## -- Begin function print_list_str_nodes
	.p2align	4, 0x90
_print_list_str_nodes:                  ## @print_list_str_nodes
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	%rdi, -48(%rbp)
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movl	$0, (%rax)
	movq	%r14, (%rbx)
	testq	%r14, %r14
	je	LBB2_1
	.p2align	4, 0x90
## %bb.7:                               ## %traverse_loop
	cmpq	$0, (%rbx)
	je	LBB2_2
LBB2_8:                                 ## %while_body
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	incl	(%rax)
	movq	%rcx, (%rbx)
	cmpq	$0, (%rbx)
	jne	LBB2_8
	jmp	LBB2_2
LBB2_1:                                 ## %then
	movl	$0, (%rax)
LBB2_2:                                 ## %merge
	movl	(%rax), %eax
	decl	%eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r15
	movq	%r15, %rsp
	movl	%eax, -16(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	movl	$0, -16(%rax)
	jmp	LBB2_3
	.p2align	4, 0x90
LBB2_9:                                 ## %merge15
                                        ##   in Loop: Header=BB2_3 Depth=1
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	(%rax), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	leaq	L_fmt.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	incl	(%r12)
LBB2_3:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_6 Depth 2
	movl	(%r12), %eax
	cmpl	(%r15), %eax
	jge	LBB2_10
## %bb.4:                               ## %while_body5
                                        ##   in Loop: Header=BB2_3 Depth=1
	movq	-48(%rbp), %r13
	movl	(%r12), %r14d
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$4, %edi
	callq	_malloc
	movq	%r13, (%rbx)
	movl	%r14d, (%rax)
	cmpl	$0, (%rax)
	je	LBB2_9
	.p2align	4, 0x90
LBB2_6:                                 ## %while_body11
                                        ##   Parent Loop BB2_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	decl	(%rax)
	movq	%rcx, (%rbx)
	cmpl	$0, (%rax)
	jne	LBB2_6
	jmp	LBB2_9
LBB2_10:                                ## %merge24
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_edgesList                      ## @edgesList
.zerofill __DATA,__common,_edgesList,8,3
	.globl	_llEdges                        ## @llEdges
.zerofill __DATA,__common,_llEdges,8,3
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%s\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%s\n"

	.globl	_n0                             ## @n0
.zerofill __DATA,__common,_n0,8,3
L___unnamed_1:                          ## @0
	.asciz	"Abby"

	.globl	_n1                             ## @n1
.zerofill __DATA,__common,_n1,8,3
L___unnamed_2:                          ## @1
	.asciz	"Steven"

	.globl	_n2                             ## @n2
.zerofill __DATA,__common,_n2,8,3
L___unnamed_3:                          ## @2
	.asciz	"Aidan"

	.globl	_n3                             ## @n3
.zerofill __DATA,__common,_n3,8,3
L___unnamed_4:                          ## @3
	.asciz	"Claudia"

	.globl	_e0                             ## @e0
.zerofill __DATA,__common,_e0,8,3
	.globl	_e1                             ## @e1
.zerofill __DATA,__common,_e1,8,3
	.globl	_e2                             ## @e2
.zerofill __DATA,__common,_e2,8,3
	.globl	_e3                             ## @e3
.zerofill __DATA,__common,_e3,8,3
	.globl	_e4                             ## @e4
.zerofill __DATA,__common,_e4,8,3
	.globl	_g                              ## @g
.zerofill __DATA,__common,_g,8,3
	.globl	_llNodes                        ## @llNodes
.zerofill __DATA,__common,_llNodes,8,3
	.globl	_llNodes.2                      ## @llNodes.2
.zerofill __DATA,__common,_llNodes.2,8,3
	.globl	_llNodes.3                      ## @llNodes.3
.zerofill __DATA,__common,_llNodes.3,8,3
	.globl	_llNodes.4                      ## @llNodes.4
.zerofill __DATA,__common,_llNodes.4,8,3
	.globl	_llNodes.5                      ## @llNodes.5
.zerofill __DATA,__common,_llNodes.5,8,3
	.globl	_llNodes.6                      ## @llNodes.6
.zerofill __DATA,__common,_llNodes.6,8,3
	.globl	_llNodes.7                      ## @llNodes.7
.zerofill __DATA,__common,_llNodes.7,8,3
	.globl	_llNodes.8                      ## @llNodes.8
.zerofill __DATA,__common,_llNodes.8,8,3
	.globl	_llNodes.9                      ## @llNodes.9
.zerofill __DATA,__common,_llNodes.9,8,3
	.globl	_llNodes.10                     ## @llNodes.10
.zerofill __DATA,__common,_llNodes.10,8,3
L___unnamed_5:                          ## @4
	.asciz	"printing n2 neighbors\n"

	.globl	_neighbors                      ## @neighbors
.zerofill __DATA,__common,_neighbors,8,3
.subsections_via_symbols

	.text
	.file	"lexer.c"
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/lexer/../../include/minishell.h"
	.globl	get_token_type                  # -- Begin function get_token_type
	.p2align	4, 0x90
	.type	get_token_type,@function
get_token_type:                         # @get_token_type
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/minishell" "src/lexer/lexer.c"
	.loc	2 16 0                          # src/lexer/lexer.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	2 17 19 prologue_end            # src/lexer/lexer.c:17:19
	movq	-16(%rbp), %rax
	.loc	2 17 6 is_stmt 0                # src/lexer/lexer.c:17:6
	movsbl	(%rax), %edi
	callq	is_operator
.Ltmp1:
	.loc	2 17 6                          # src/lexer/lexer.c:17:6
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:
.Ltmp2:
	.loc	2 18 29 is_stmt 1               # src/lexer/lexer.c:18:29
	movq	-16(%rbp), %rdi
	.loc	2 18 11 is_stmt 0               # src/lexer/lexer.c:18:11
	callq	get_operator_type
	.loc	2 18 3                          # src/lexer/lexer.c:18:3
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	.loc	2 20 3 is_stmt 1                # src/lexer/lexer.c:20:3
	movl	$15, -4(%rbp)
.Ltmp3:
.LBB0_3:
	.loc	2 21 1                          # src/lexer/lexer.c:21:1
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	get_token_type, .Lfunc_end0-get_token_type
	.cfi_endproc
                                        # -- End function
	.globl	init_token_attr                 # -- Begin function init_token_attr
	.p2align	4, 0x90
	.type	init_token_attr,@function
init_token_attr:                        # @init_token_attr
.Lfunc_begin1:
	.loc	2 24 0                          # src/lexer/lexer.c:24:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp5:
	.loc	2 25 4 prologue_end             # src/lexer/lexer.c:25:4
	movq	-8(%rbp), %rax
	.loc	2 25 3 is_stmt 0                # src/lexer/lexer.c:25:3
	movq	(%rax), %rax
	.loc	2 25 22                         # src/lexer/lexer.c:25:22
	movl	$0, 4(%rax)
	.loc	2 26 4 is_stmt 1                # src/lexer/lexer.c:26:4
	movq	-8(%rbp), %rax
	.loc	2 26 3 is_stmt 0                # src/lexer/lexer.c:26:3
	movq	(%rax), %rax
	.loc	2 26 19                         # src/lexer/lexer.c:26:19
	movl	$0, 8(%rax)
	.loc	2 27 4 is_stmt 1                # src/lexer/lexer.c:27:4
	movq	-8(%rbp), %rax
	.loc	2 27 3 is_stmt 0                # src/lexer/lexer.c:27:3
	movq	(%rax), %rax
	.loc	2 27 17                         # src/lexer/lexer.c:27:17
	movq	$0, 32(%rax)
	.loc	2 28 4 is_stmt 1                # src/lexer/lexer.c:28:4
	movq	-8(%rbp), %rax
	.loc	2 28 3 is_stmt 0                # src/lexer/lexer.c:28:3
	movq	(%rax), %rax
	.loc	2 28 17                         # src/lexer/lexer.c:28:17
	movq	$0, 40(%rax)
	.loc	2 29 4 is_stmt 1                # src/lexer/lexer.c:29:4
	movq	-8(%rbp), %rax
	.loc	2 29 3 is_stmt 0                # src/lexer/lexer.c:29:3
	movq	(%rax), %rax
	.loc	2 29 19                         # src/lexer/lexer.c:29:19
	movq	$0, 16(%rax)
	.loc	2 30 4 is_stmt 1                # src/lexer/lexer.c:30:4
	movq	-8(%rbp), %rax
	.loc	2 30 3 is_stmt 0                # src/lexer/lexer.c:30:3
	movq	(%rax), %rax
	.loc	2 30 22                         # src/lexer/lexer.c:30:22
	movq	$0, 24(%rax)
	.loc	2 31 1 is_stmt 1                # src/lexer/lexer.c:31:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end1:
	.size	init_token_attr, .Lfunc_end1-init_token_attr
	.cfi_endproc
                                        # -- End function
	.globl	get_eof_token                   # -- Begin function get_eof_token
	.p2align	4, 0x90
	.type	get_eof_token,@function
get_eof_token:                          # @get_eof_token
.Lfunc_begin2:
	.loc	2 34 0                          # src/lexer/lexer.c:34:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp7:
	.loc	2 37 8 prologue_end             # src/lexer/lexer.c:37:8
	movl	$48, %edi
	callq	malloc
	.loc	2 37 6 is_stmt 0                # src/lexer/lexer.c:37:6
	movq	%rax, -16(%rbp)
.Ltmp8:
	.loc	2 38 7 is_stmt 1                # src/lexer/lexer.c:38:7
	cmpq	$0, -16(%rbp)
.Ltmp9:
	.loc	2 38 6 is_stmt 0                # src/lexer/lexer.c:38:6
	jne	.LBB2_2
# %bb.1:
.Ltmp10:
	.loc	2 39 3 is_stmt 1                # src/lexer/lexer.c:39:3
	movabsq	$.L.str, %rdi
	callq	perror
.Ltmp11:
.LBB2_2:
	.loc	2 40 2                          # src/lexer/lexer.c:40:2
	leaq	-16(%rbp), %rdi
	callq	init_token_attr
	.loc	2 41 2                          # src/lexer/lexer.c:41:2
	movq	-16(%rbp), %rax
	.loc	2 41 12 is_stmt 0               # src/lexer/lexer.c:41:12
	movl	$18, (%rax)
.Ltmp12:
	.loc	2 42 8 is_stmt 1                # src/lexer/lexer.c:42:8
	movq	-8(%rbp), %rax
	.loc	2 42 6 is_stmt 0                # src/lexer/lexer.c:42:6
	cmpq	$0, (%rax)
.Ltmp13:
	.loc	2 42 6                          # src/lexer/lexer.c:42:6
	je	.LBB2_4
# %bb.3:
.Ltmp14:
	.loc	2 44 20 is_stmt 1               # src/lexer/lexer.c:44:20
	movq	-16(%rbp), %rcx
	.loc	2 44 5 is_stmt 0                # src/lexer/lexer.c:44:5
	movq	-8(%rbp), %rax
	.loc	2 44 4                          # src/lexer/lexer.c:44:4
	movq	(%rax), %rax
	.loc	2 44 18                         # src/lexer/lexer.c:44:18
	movq	%rcx, 40(%rax)
	.loc	2 45 17 is_stmt 1               # src/lexer/lexer.c:45:17
	movq	-8(%rbp), %rax
	.loc	2 45 16 is_stmt 0               # src/lexer/lexer.c:45:16
	movq	(%rax), %rcx
	.loc	2 45 3                          # src/lexer/lexer.c:45:3
	movq	-16(%rbp), %rax
	.loc	2 45 13                         # src/lexer/lexer.c:45:13
	movq	%rcx, 32(%rax)
	.loc	2 46 2 is_stmt 1                # src/lexer/lexer.c:46:2
	jmp	.LBB2_5
.Ltmp15:
.LBB2_4:
	.loc	2 48 14                         # src/lexer/lexer.c:48:14
	movq	-16(%rbp), %rcx
	.loc	2 48 5 is_stmt 0                # src/lexer/lexer.c:48:5
	movq	-8(%rbp), %rax
	.loc	2 48 12                         # src/lexer/lexer.c:48:12
	movq	%rcx, (%rax)
.Ltmp16:
.LBB2_5:
	.loc	2 49 1 is_stmt 1                # src/lexer/lexer.c:49:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	get_eof_token, .Lfunc_end2-get_eof_token
	.cfi_endproc
                                        # -- End function
	.globl	create_token                    # -- Begin function create_token
	.p2align	4, 0x90
	.type	create_token,@function
create_token:                           # @create_token
.Lfunc_begin3:
	.loc	2 52 0                          # src/lexer/lexer.c:52:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp18:
	.loc	2 55 7 prologue_end             # src/lexer/lexer.c:55:7
	cmpq	$0, -16(%rbp)
	.loc	2 55 13 is_stmt 0               # src/lexer/lexer.c:55:13
	je	.LBB3_2
# %bb.1:
	.loc	2 55 18                         # src/lexer/lexer.c:55:18
	movq	-16(%rbp), %rax
	.loc	2 55 17                         # src/lexer/lexer.c:55:17
	cmpb	$0, (%rax)
.Ltmp19:
	.loc	2 55 6                          # src/lexer/lexer.c:55:6
	jne	.LBB3_3
.LBB3_2:
.Ltmp20:
	.loc	2 56 3 is_stmt 1                # src/lexer/lexer.c:56:3
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.Ltmp21:
.LBB3_3:
	.loc	2 57 8                          # src/lexer/lexer.c:57:8
	movl	$48, %edi
	callq	malloc
	.loc	2 57 6 is_stmt 0                # src/lexer/lexer.c:57:6
	movq	%rax, -32(%rbp)
.Ltmp22:
	.loc	2 58 7 is_stmt 1                # src/lexer/lexer.c:58:7
	cmpq	$0, -32(%rbp)
.Ltmp23:
	.loc	2 58 6 is_stmt 0                # src/lexer/lexer.c:58:6
	jne	.LBB3_5
# %bb.4:
.Ltmp24:
	.loc	2 59 11 is_stmt 1               # src/lexer/lexer.c:59:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 59 3 is_stmt 0                # src/lexer/lexer.c:59:3
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.Ltmp25:
.LBB3_5:
	.loc	2 60 2 is_stmt 1                # src/lexer/lexer.c:60:2
	leaq	-32(%rbp), %rdi
	callq	init_token_attr
	.loc	2 61 29                         # src/lexer/lexer.c:61:29
	movq	-16(%rbp), %rdi
	.loc	2 61 14 is_stmt 0               # src/lexer/lexer.c:61:14
	callq	get_token_type
	movl	%eax, %ecx
	.loc	2 61 2                          # src/lexer/lexer.c:61:2
	movq	-32(%rbp), %rax
	.loc	2 61 12                         # src/lexer/lexer.c:61:12
	movl	%ecx, (%rax)
.Ltmp26:
	.loc	2 62 23 is_stmt 1               # src/lexer/lexer.c:62:23
	movq	-32(%rbp), %rax
	.loc	2 62 28 is_stmt 0               # src/lexer/lexer.c:62:28
	movl	(%rax), %edi
	.loc	2 62 6                          # src/lexer/lexer.c:62:6
	callq	type_is_operator
.Ltmp27:
	.loc	2 62 6                          # src/lexer/lexer.c:62:6
	testb	$1, %al
	jne	.LBB3_6
	jmp	.LBB3_7
.LBB3_6:
.Ltmp28:
	.loc	2 63 22 is_stmt 1               # src/lexer/lexer.c:63:22
	movq	-16(%rbp), %rdi
	.loc	2 63 3 is_stmt 0                # src/lexer/lexer.c:63:3
	leaq	-32(%rbp), %rsi
	callq	get_operator_token
	jmp	.LBB3_8
.LBB3_7:
	.loc	2 65 18 is_stmt 1               # src/lexer/lexer.c:65:18
	movq	-16(%rbp), %rdi
	.loc	2 65 3 is_stmt 0                # src/lexer/lexer.c:65:3
	leaq	-32(%rbp), %rsi
	callq	get_word_token
.Ltmp29:
.LBB3_8:
	.loc	2 66 24 is_stmt 1               # src/lexer/lexer.c:66:24
	movq	-32(%rbp), %rdi
	.loc	2 66 6 is_stmt 0                # src/lexer/lexer.c:66:6
	callq	is_operator_token
.Ltmp30:
	.loc	2 66 6                          # src/lexer/lexer.c:66:6
	testb	$1, %al
	jne	.LBB3_9
	jmp	.LBB3_10
.LBB3_9:
.Ltmp31:
	.loc	2 67 4 is_stmt 1                # src/lexer/lexer.c:67:4
	movq	-24(%rbp), %rax
	.loc	2 67 17 is_stmt 0               # src/lexer/lexer.c:67:17
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.Ltmp32:
.LBB3_10:
	.loc	2 68 10 is_stmt 1               # src/lexer/lexer.c:68:10
	movq	-32(%rbp), %rax
	.loc	2 68 2 is_stmt 0                # src/lexer/lexer.c:68:2
	movq	%rax, -8(%rbp)
.LBB3_11:
	.loc	2 69 1 is_stmt 1                # src/lexer/lexer.c:69:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp33:
.Lfunc_end3:
	.size	create_token, .Lfunc_end3-create_token
	.cfi_endproc
                                        # -- End function
	.globl	lexical_analysis                # -- Begin function lexical_analysis
	.p2align	4, 0x90
	.type	lexical_analysis,@function
lexical_analysis:                       # @lexical_analysis
.Lfunc_begin4:
	.loc	2 72 0                          # src/lexer/lexer.c:72:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp34:
	.loc	2 77 4 prologue_end             # src/lexer/lexer.c:77:4
	movl	$0, -20(%rbp)
	.loc	2 78 6                          # src/lexer/lexer.c:78:6
	movq	$0, -40(%rbp)
	.loc	2 79 8                          # src/lexer/lexer.c:79:8
	movq	$0, -32(%rbp)
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	.loc	2 80 9                          # src/lexer/lexer.c:80:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	.loc	2 80 18 is_stmt 0               # src/lexer/lexer.c:80:18
	je	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	2 80 21                         # src/lexer/lexer.c:80:21
	callq	__errno_location
	.loc	2 80 27                         # src/lexer/lexer.c:80:27
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	2 0 27                          # src/lexer/lexer.c:0:27
	movb	-41(%rbp), %al                  # 1-byte Reload
	.loc	2 80 2                          # src/lexer/lexer.c:80:2
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_15
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp35:
	.loc	2 82 3 is_stmt 1                # src/lexer/lexer.c:82:3
	jmp	.LBB4_5
.LBB4_5:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	2 82 10 is_stmt 0               # src/lexer/lexer.c:82:10
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -42(%rbp)                  # 1-byte Spill
	.loc	2 82 19                         # src/lexer/lexer.c:82:19
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=2
	.loc	2 82 32                         # src/lexer/lexer.c:82:32
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 82 23                         # src/lexer/lexer.c:82:23
	movsbl	(%rax,%rcx), %edi
	callq	is_blank
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 82 42                         # src/lexer/lexer.c:82:42
	cmpl	$1, %eax
	sete	%al
	movb	%al, -42(%rbp)                  # 1-byte Spill
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=2
	.loc	2 0 42                          # src/lexer/lexer.c:0:42
	movb	-42(%rbp), %al                  # 1-byte Reload
	.loc	2 82 3                          # src/lexer/lexer.c:82:3
	testb	$1, %al
	jne	.LBB4_8
	jmp	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=2
	.loc	2 83 5 is_stmt 1                # src/lexer/lexer.c:83:5
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	2 82 3                          # src/lexer/lexer.c:82:3
	jmp	.LBB4_5
.LBB4_9:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	2 84 23                         # src/lexer/lexer.c:84:23
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	addq	%rax, %rdi
	.loc	2 84 34 is_stmt 0               # src/lexer/lexer.c:84:34
	movq	-8(%rbp), %rsi
	.loc	2 84 45                         # src/lexer/lexer.c:84:45
	addq	$40, %rsi
	.loc	2 84 9                          # src/lexer/lexer.c:84:9
	callq	create_token
	.loc	2 84 7                          # src/lexer/lexer.c:84:7
	movq	%rax, -40(%rbp)
.Ltmp36:
	.loc	2 85 8 is_stmt 1                # src/lexer/lexer.c:85:8
	cmpq	$0, -40(%rbp)
.Ltmp37:
	.loc	2 85 7 is_stmt 0                # src/lexer/lexer.c:85:7
	jne	.LBB4_11
# %bb.10:
.Ltmp38:
	.loc	2 86 4 is_stmt 1                # src/lexer/lexer.c:86:4
	jmp	.LBB4_15
.Ltmp39:
.LBB4_11:                               #   in Loop: Header=BB4_1 Depth=1
	.loc	2 87 8                          # src/lexer/lexer.c:87:8
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
.Ltmp40:
	.loc	2 87 7 is_stmt 0                # src/lexer/lexer.c:87:7
	jne	.LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_1 Depth=1
.Ltmp41:
	.loc	2 88 30 is_stmt 1               # src/lexer/lexer.c:88:30
	movq	-40(%rbp), %rcx
	.loc	2 88 4 is_stmt 0                # src/lexer/lexer.c:88:4
	movq	-8(%rbp), %rax
	.loc	2 88 28                         # src/lexer/lexer.c:88:28
	movq	%rcx, 80(%rax)
	.loc	2 88 4                          # src/lexer/lexer.c:88:4
	jmp	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_1 Depth=1
.Ltmp42:
	.loc	2 91 16 is_stmt 1               # src/lexer/lexer.c:91:16
	movq	-32(%rbp), %rcx
	.loc	2 91 4 is_stmt 0                # src/lexer/lexer.c:91:4
	movq	-40(%rbp), %rax
	.loc	2 91 14                         # src/lexer/lexer.c:91:14
	movq	%rcx, 32(%rax)
	.loc	2 92 18 is_stmt 1               # src/lexer/lexer.c:92:18
	movq	-40(%rbp), %rcx
	.loc	2 92 4 is_stmt 0                # src/lexer/lexer.c:92:4
	movq	-32(%rbp), %rax
	.loc	2 92 16                         # src/lexer/lexer.c:92:16
	movq	%rcx, 40(%rax)
.Ltmp43:
.LBB4_14:                               #   in Loop: Header=BB4_1 Depth=1
	.loc	2 94 11 is_stmt 1               # src/lexer/lexer.c:94:11
	movq	-40(%rbp), %rax
	.loc	2 94 9 is_stmt 0                # src/lexer/lexer.c:94:9
	movq	%rax, -32(%rbp)
	.loc	2 95 8 is_stmt 1                # src/lexer/lexer.c:95:8
	movq	-40(%rbp), %rax
	.loc	2 95 13 is_stmt 0               # src/lexer/lexer.c:95:13
	movl	8(%rax), %eax
	.loc	2 95 5                          # src/lexer/lexer.c:95:5
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc	2 96 23 is_stmt 1               # src/lexer/lexer.c:96:23
	movq	-8(%rbp), %rdi
	.loc	2 96 42 is_stmt 0               # src/lexer/lexer.c:96:42
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 96 3                          # src/lexer/lexer.c:96:3
	leaq	-32(%rbp), %rsi
	movsbl	(%rax,%rcx), %edx
	callq	check_lexical_error
.Ltmp44:
	.loc	2 80 2 is_stmt 1                # src/lexer/lexer.c:80:2
	jmp	.LBB4_1
.LBB4_15:
.Ltmp45:
	.loc	2 98 6                          # src/lexer/lexer.c:98:6
	cmpq	$0, -40(%rbp)
.Ltmp46:
	.loc	2 98 6 is_stmt 0                # src/lexer/lexer.c:98:6
	je	.LBB4_17
# %bb.16:
.Ltmp47:
	.loc	2 99 3 is_stmt 1                # src/lexer/lexer.c:99:3
	leaq	-40(%rbp), %rdi
	callq	get_eof_token
.Ltmp48:
.LBB4_17:
	.loc	2 100 1                         # src/lexer/lexer.c:100:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp49:
.Lfunc_end4:
	.size	lexical_analysis, .Lfunc_end4-lexical_analysis
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	3 "/usr/include" "dirent.h"
	.file	4 "/usr/include" "signal.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "sigaction.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits/types" "siginfo_t.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	8 "/usr/include/x86_64-linux-gnu/bits/types" "__sigval_t.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "__sigset_t.h"
	.file	10 "/usr/include/x86_64-linux-gnu/bits" "struct_stat.h"
	.file	11 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timespec.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits" "termios.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits" "termios-struct.h"
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0xbfe DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x7f DW_TAG_enumeration_type
	.long	169                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5a:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x60:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x66:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6c:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x72:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x78:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7e:0x6 DW_TAG_enumerator
	.long	.Linfo_string16                 # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x84:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8a:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x90:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x96:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	16                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9c:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	17                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa2:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa9:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xb0:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0xb1:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	463                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	579                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xd9:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xee:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	650                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xfd:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x112:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	650                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x120:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string43                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	470                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x12f:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	470                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x148:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	579                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x156:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string44                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	655                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x164:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string45                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	470                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x173:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x188:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string46                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	660                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x196:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	579                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1a4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string198                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	463                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1b2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string199                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	470                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1c0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string45                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	470                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1cf:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1d6:0x5 DW_TAG_pointer_type
	.long	475                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1db:0xb DW_TAG_typedef
	.long	486                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1e6:0x5d DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1ee:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1fa:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x206:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x212:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x21e:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	591                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x22a:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x236:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x243:0x5 DW_TAG_pointer_type
	.long	584                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x248:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x24f:0x5 DW_TAG_pointer_type
	.long	596                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x254:0xb DW_TAG_typedef
	.long	607                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x25f:0x21 DW_TAG_structure_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x267:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x273:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	640                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x280:0x5 DW_TAG_pointer_type
	.long	607                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x285:0x5 DW_TAG_pointer_type
	.long	486                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x28a:0x5 DW_TAG_pointer_type
	.long	470                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x28f:0x5 DW_TAG_pointer_type
	.long	463                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x294:0x5 DW_TAG_pointer_type
	.long	665                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x299:0xb DW_TAG_typedef
	.long	676                             # DW_AT_type
	.long	.Linfo_string197                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2a4:0xbe DW_TAG_structure_type
	.long	.Linfo_string196                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2ad:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	866                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2b9:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2c5:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2d1:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2dd:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2e9:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2f5:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x301:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x30d:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	892                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x319:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	958                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x325:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1024                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x331:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	470                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x33d:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1737                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x349:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2569                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x355:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	2918                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x362:0x5 DW_TAG_pointer_type
	.long	871                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x367:0xb DW_TAG_typedef
	.long	882                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x372:0x5 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x377:0x5 DW_TAG_pointer_type
	.long	579                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x37c:0x5 DW_TAG_pointer_type
	.long	897                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x381:0xb DW_TAG_typedef
	.long	908                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x38c:0x2d DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x394:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3a0:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	953                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3b9:0x5 DW_TAG_pointer_type
	.long	908                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3be:0x5 DW_TAG_pointer_type
	.long	963                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3c3:0xb DW_TAG_typedef
	.long	974                             # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3ce:0x2d DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3d6:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3e2:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ee:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1019                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3fb:0x5 DW_TAG_pointer_type
	.long	974                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x400:0x5 DW_TAG_pointer_type
	.long	1029                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x405:0xb DW_TAG_typedef
	.long	1040                            # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x410:0x2d DW_TAG_structure_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x418:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1085                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x424:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1732                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x430:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1732                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x43d:0x5 DW_TAG_pointer_type
	.long	1090                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x442:0xb DW_TAG_typedef
	.long	1101                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x44d:0x51 DW_TAG_structure_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x455:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x461:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x46d:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x479:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x485:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x491:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x49e:0x5 DW_TAG_pointer_type
	.long	1187                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4a3:0xc9 DW_TAG_structure_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4ab:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4b7:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4c3:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4cf:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4db:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4e7:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4f3:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1388                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ff:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1442                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x50b:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1503                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x517:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1576                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x523:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	958                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x52f:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1654                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x53b:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	591                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x547:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x553:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x55f:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x56c:0x5 DW_TAG_pointer_type
	.long	1393                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x571:0xb DW_TAG_typedef
	.long	1404                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x57c:0x21 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x584:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x590:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1437                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x59d:0x5 DW_TAG_pointer_type
	.long	1404                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5a2:0x5 DW_TAG_pointer_type
	.long	1447                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5a7:0xb DW_TAG_typedef
	.long	1458                            # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5b2:0x2d DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5ba:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5c6:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5d2:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5df:0x5 DW_TAG_pointer_type
	.long	1508                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5e4:0xb DW_TAG_typedef
	.long	1519                            # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5ef:0x39 DW_TAG_structure_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5f7:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x603:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x60f:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1576                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x61b:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1654                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x628:0x5 DW_TAG_pointer_type
	.long	1581                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x62d:0xb DW_TAG_typedef
	.long	1592                            # DW_AT_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x638:0x39 DW_TAG_structure_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x640:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x64c:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x658:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x664:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1649                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x671:0x5 DW_TAG_pointer_type
	.long	1592                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x676:0x5 DW_TAG_pointer_type
	.long	1659                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x67b:0xb DW_TAG_typedef
	.long	1670                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x686:0x39 DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x68e:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x69a:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6a6:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	579                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6b2:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1727                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6bf:0x5 DW_TAG_pointer_type
	.long	1670                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6c4:0x5 DW_TAG_pointer_type
	.long	1040                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6c9:0x56 DW_TAG_structure_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6d1:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1757                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6dd:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6e1:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1823                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6ed:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1846                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6fa:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2516                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x706:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x712:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2563                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x71f:0xb DW_TAG_typedef
	.long	1834                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x72a:0x5 DW_TAG_pointer_type
	.long	1839                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x72f:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x730:0x5 DW_TAG_formal_parameter
	.long	463                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x736:0x5 DW_TAG_pointer_type
	.long	1851                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x73b:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x73c:0x5 DW_TAG_formal_parameter
	.long	463                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x741:0x5 DW_TAG_formal_parameter
	.long	1868                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x746:0x5 DW_TAG_formal_parameter
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x74c:0x5 DW_TAG_pointer_type
	.long	1873                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x751:0xb DW_TAG_typedef
	.long	1884                            # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x75c:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x760:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x76c:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x778:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x784:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x790:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x79c:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7a0:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2395                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7ac:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1976                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x7b8:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7bc:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2414                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7c8:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2425                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x7d5:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2017                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x7e1:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7e5:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7f1:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7fd:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2436                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x80a:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2070                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x816:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x81a:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2414                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x826:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2425                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x832:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2436                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x83f:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2123                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x84b:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x84f:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2414                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x85b:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2425                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x867:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x873:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2480                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x87f:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2480                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x88c:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2200                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x898:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x89c:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8a8:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2498                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8b4:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2240                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x8c0:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8c4:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2256                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x8d0:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8d4:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8e0:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8ed:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2505                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8fb:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2311                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x907:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x90b:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2491                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x917:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x924:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2352                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x930:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x934:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x940:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x94c:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	169                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x95b:0xc DW_TAG_array_type
	.long	463                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x960:0x6 DW_TAG_subrange_type
	.long	2407                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x967:0x7 DW_TAG_base_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0x96e:0xb DW_TAG_typedef
	.long	463                             # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x979:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x984:0xb DW_TAG_typedef
	.long	2447                            # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x98f:0x21 DW_TAG_union_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x997:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9a3:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9b0:0xb DW_TAG_typedef
	.long	2491                            # DW_AT_type
	.long	.Linfo_string126                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9bb:0x7 DW_TAG_base_type
	.long	.Linfo_string125                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x9c2:0x7 DW_TAG_base_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x9c9:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9d4:0xb DW_TAG_typedef
	.long	2527                            # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x9df:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9e3:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x9f0:0xc DW_TAG_array_type
	.long	2556                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x9f5:0x6 DW_TAG_subrange_type
	.long	2407                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x9fc:0x7 DW_TAG_base_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xa03:0x5 DW_TAG_pointer_type
	.long	2568                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xa08:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0xa09:0x5 DW_TAG_pointer_type
	.long	2574                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0xa0e:0xbd DW_TAG_structure_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa16:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2763                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa22:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2774                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa2e:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2785                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa3a:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2796                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa46:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2425                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa52:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2807                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa5e:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa6a:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2763                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa76:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2818                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa82:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2829                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa8e:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2840                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa9a:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2851                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaa6:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2851                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xab2:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	2851                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xabe:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2906                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xacb:0xb DW_TAG_typedef
	.long	2556                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xad6:0xb DW_TAG_typedef
	.long	2556                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xae1:0xb DW_TAG_typedef
	.long	2556                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xaec:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xaf7:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb02:0xb DW_TAG_typedef
	.long	2491                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb0d:0xb DW_TAG_typedef
	.long	2491                            # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb18:0xb DW_TAG_typedef
	.long	2491                            # DW_AT_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb23:0x21 DW_TAG_structure_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb2b:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2884                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb37:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2895                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb44:0xb DW_TAG_typedef
	.long	2491                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb4f:0xb DW_TAG_typedef
	.long	2491                            # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xb5a:0xc DW_TAG_array_type
	.long	2895                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xb5f:0x6 DW_TAG_subrange_type
	.long	2407                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb66:0x5 DW_TAG_pointer_type
	.long	2923                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0xb6b:0x69 DW_TAG_structure_type
	.long	.Linfo_string195                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb73:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3028                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb7f:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	3028                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb8b:0xc DW_TAG_member
	.long	.Linfo_string186                # DW_AT_name
	.long	3028                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb97:0xc DW_TAG_member
	.long	.Linfo_string187                # DW_AT_name
	.long	3028                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xba3:0xc DW_TAG_member
	.long	.Linfo_string188                # DW_AT_name
	.long	3039                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbaf:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	3057                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbbb:0xc DW_TAG_member
	.long	.Linfo_string192                # DW_AT_name
	.long	3069                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbc7:0xc DW_TAG_member
	.long	.Linfo_string194                # DW_AT_name
	.long	3069                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xbd4:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbdf:0xb DW_TAG_typedef
	.long	3050                            # DW_AT_type
	.long	.Linfo_string190                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xbea:0x7 DW_TAG_base_type
	.long	.Linfo_string189                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0xbf1:0xc DW_TAG_array_type
	.long	3039                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xbf6:0x6 DW_TAG_subrange_type
	.long	2407                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xbfd:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string193                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/lexer.c"             # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=56
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=90
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=103
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=117
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=131
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=144
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=157
.Linfo_string9:
	.asciz	"expansion"                     # string offset=169
.Linfo_string10:
	.asciz	"operator"                      # string offset=179
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=188
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=197
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=205
.Linfo_string14:
	.asciz	"outfile"                       # string offset=213
.Linfo_string15:
	.asciz	"append"                        # string offset=221
.Linfo_string16:
	.asciz	"infile"                        # string offset=228
.Linfo_string17:
	.asciz	"and_if"                        # string offset=235
.Linfo_string18:
	.asciz	"or_if"                         # string offset=242
.Linfo_string19:
	.asciz	"word"                          # string offset=248
.Linfo_string20:
	.asciz	"name"                          # string offset=253
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=258
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=274
.Linfo_string23:
	.asciz	"e_token"                       # string offset=284
.Linfo_string24:
	.asciz	"get_token_type"                # string offset=292
.Linfo_string25:
	.asciz	"int"                           # string offset=307
.Linfo_string26:
	.asciz	"init_token_attr"               # string offset=311
.Linfo_string27:
	.asciz	"get_eof_token"                 # string offset=327
.Linfo_string28:
	.asciz	"create_token"                  # string offset=341
.Linfo_string29:
	.asciz	"type"                          # string offset=354
.Linfo_string30:
	.asciz	"quote_nbr"                     # string offset=359
.Linfo_string31:
	.asciz	"length"                        # string offset=369
.Linfo_string32:
	.asciz	"lexeme"                        # string offset=376
.Linfo_string33:
	.asciz	"char"                          # string offset=383
.Linfo_string34:
	.asciz	"next"                          # string offset=388
.Linfo_string35:
	.asciz	"s_expan"                       # string offset=393
.Linfo_string36:
	.asciz	"t_expan"                       # string offset=401
.Linfo_string37:
	.asciz	"prev"                          # string offset=409
.Linfo_string38:
	.asciz	"s_token"                       # string offset=414
.Linfo_string39:
	.asciz	"t_token"                       # string offset=422
.Linfo_string40:
	.asciz	"lexical_analysis"              # string offset=430
.Linfo_string41:
	.asciz	"input"                         # string offset=447
.Linfo_string42:
	.asciz	"token"                         # string offset=453
.Linfo_string43:
	.asciz	"eof"                           # string offset=459
.Linfo_string44:
	.asciz	"operator_nbr"                  # string offset=463
.Linfo_string45:
	.asciz	"new"                           # string offset=476
.Linfo_string46:
	.asciz	"minishell"                     # string offset=480
.Linfo_string47:
	.asciz	"dir"                           # string offset=490
.Linfo_string48:
	.asciz	"__dirstream"                   # string offset=494
.Linfo_string49:
	.asciz	"DIR"                           # string offset=506
.Linfo_string50:
	.asciz	"state"                         # string offset=510
.Linfo_string51:
	.asciz	"path"                          # string offset=516
.Linfo_string52:
	.asciz	"prompt"                        # string offset=521
.Linfo_string53:
	.asciz	"env_array"                     # string offset=528
.Linfo_string54:
	.asciz	"env"                           # string offset=538
.Linfo_string55:
	.asciz	"value"                         # string offset=542
.Linfo_string56:
	.asciz	"s_env"                         # string offset=548
.Linfo_string57:
	.asciz	"t_env"                         # string offset=554
.Linfo_string58:
	.asciz	"local"                         # string offset=560
.Linfo_string59:
	.asciz	"s_var"                         # string offset=566
.Linfo_string60:
	.asciz	"t_var"                         # string offset=572
.Linfo_string61:
	.asciz	"syntax_tree"                   # string offset=578
.Linfo_string62:
	.asciz	"node"                          # string offset=590
.Linfo_string63:
	.asciz	"id"                            # string offset=595
.Linfo_string64:
	.asciz	"pipe_fd"                       # string offset=598
.Linfo_string65:
	.asciz	"left"                          # string offset=606
.Linfo_string66:
	.asciz	"pid"                           # string offset=611
.Linfo_string67:
	.asciz	"wstatus"                       # string offset=615
.Linfo_string68:
	.asciz	"arg"                           # string offset=623
.Linfo_string69:
	.asciz	"s_arg"                         # string offset=627
.Linfo_string70:
	.asciz	"t_arg"                         # string offset=633
.Linfo_string71:
	.asciz	"pipe"                          # string offset=639
.Linfo_string72:
	.asciz	"to_close"                      # string offset=644
.Linfo_string73:
	.asciz	"write"                         # string offset=653
.Linfo_string74:
	.asciz	"read"                          # string offset=659
.Linfo_string75:
	.asciz	"s_pipe"                        # string offset=664
.Linfo_string76:
	.asciz	"t_pipe"                        # string offset=671
.Linfo_string77:
	.asciz	"redir"                         # string offset=678
.Linfo_string78:
	.asciz	"in_fd"                         # string offset=684
.Linfo_string79:
	.asciz	"out_fd"                        # string offset=690
.Linfo_string80:
	.asciz	"fd"                            # string offset=697
.Linfo_string81:
	.asciz	"s_infile"                      # string offset=700
.Linfo_string82:
	.asciz	"t_infile"                      # string offset=709
.Linfo_string83:
	.asciz	"s_outfile"                     # string offset=718
.Linfo_string84:
	.asciz	"t_outfile"                     # string offset=728
.Linfo_string85:
	.asciz	"s_redir"                       # string offset=738
.Linfo_string86:
	.asciz	"t_redir"                       # string offset=746
.Linfo_string87:
	.asciz	"assign"                        # string offset=754
.Linfo_string88:
	.asciz	"arg_array"                     # string offset=761
.Linfo_string89:
	.asciz	"s_cmd"                         # string offset=771
.Linfo_string90:
	.asciz	"right"                         # string offset=777
.Linfo_string91:
	.asciz	"s_ast_node"                    # string offset=783
.Linfo_string92:
	.asciz	"t_ast_node"                    # string offset=794
.Linfo_string93:
	.asciz	"s_ast"                         # string offset=805
.Linfo_string94:
	.asciz	"t_ast"                         # string offset=811
.Linfo_string95:
	.asciz	"token_stream"                  # string offset=817
.Linfo_string96:
	.asciz	"sighandler"                    # string offset=830
.Linfo_string97:
	.asciz	"__sigaction_handler"           # string offset=841
.Linfo_string98:
	.asciz	"sa_handler"                    # string offset=861
.Linfo_string99:
	.asciz	"__sighandler_t"                # string offset=872
.Linfo_string100:
	.asciz	"sa_sigaction"                  # string offset=887
.Linfo_string101:
	.asciz	"si_signo"                      # string offset=900
.Linfo_string102:
	.asciz	"si_errno"                      # string offset=909
.Linfo_string103:
	.asciz	"si_code"                       # string offset=918
.Linfo_string104:
	.asciz	"__pad0"                        # string offset=926
.Linfo_string105:
	.asciz	"_sifields"                     # string offset=933
.Linfo_string106:
	.asciz	"_pad"                          # string offset=943
.Linfo_string107:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=948
.Linfo_string108:
	.asciz	"_kill"                         # string offset=968
.Linfo_string109:
	.asciz	"si_pid"                        # string offset=974
.Linfo_string110:
	.asciz	"__pid_t"                       # string offset=981
.Linfo_string111:
	.asciz	"si_uid"                        # string offset=989
.Linfo_string112:
	.asciz	"__uid_t"                       # string offset=996
.Linfo_string113:
	.asciz	"_timer"                        # string offset=1004
.Linfo_string114:
	.asciz	"si_tid"                        # string offset=1011
.Linfo_string115:
	.asciz	"si_overrun"                    # string offset=1018
.Linfo_string116:
	.asciz	"si_sigval"                     # string offset=1029
.Linfo_string117:
	.asciz	"sival_int"                     # string offset=1039
.Linfo_string118:
	.asciz	"sival_ptr"                     # string offset=1049
.Linfo_string119:
	.asciz	"sigval"                        # string offset=1059
.Linfo_string120:
	.asciz	"__sigval_t"                    # string offset=1066
.Linfo_string121:
	.asciz	"_rt"                           # string offset=1077
.Linfo_string122:
	.asciz	"_sigchld"                      # string offset=1081
.Linfo_string123:
	.asciz	"si_status"                     # string offset=1090
.Linfo_string124:
	.asciz	"si_utime"                      # string offset=1100
.Linfo_string125:
	.asciz	"long int"                      # string offset=1109
.Linfo_string126:
	.asciz	"__clock_t"                     # string offset=1118
.Linfo_string127:
	.asciz	"si_stime"                      # string offset=1128
.Linfo_string128:
	.asciz	"_sigfault"                     # string offset=1137
.Linfo_string129:
	.asciz	"si_addr"                       # string offset=1147
.Linfo_string130:
	.asciz	"si_addr_lsb"                   # string offset=1155
.Linfo_string131:
	.asciz	"short"                         # string offset=1167
.Linfo_string132:
	.asciz	"_bounds"                       # string offset=1173
.Linfo_string133:
	.asciz	"_addr_bnd"                     # string offset=1181
.Linfo_string134:
	.asciz	"_lower"                        # string offset=1191
.Linfo_string135:
	.asciz	"_upper"                        # string offset=1198
.Linfo_string136:
	.asciz	"_pkey"                         # string offset=1205
.Linfo_string137:
	.asciz	"__uint32_t"                    # string offset=1211
.Linfo_string138:
	.asciz	"_sigpoll"                      # string offset=1222
.Linfo_string139:
	.asciz	"si_band"                       # string offset=1231
.Linfo_string140:
	.asciz	"si_fd"                         # string offset=1239
.Linfo_string141:
	.asciz	"_sigsys"                       # string offset=1245
.Linfo_string142:
	.asciz	"_call_addr"                    # string offset=1253
.Linfo_string143:
	.asciz	"_syscall"                      # string offset=1264
.Linfo_string144:
	.asciz	"_arch"                         # string offset=1273
.Linfo_string145:
	.asciz	"siginfo_t"                     # string offset=1279
.Linfo_string146:
	.asciz	"sa_mask"                       # string offset=1289
.Linfo_string147:
	.asciz	"__val"                         # string offset=1297
.Linfo_string148:
	.asciz	"long unsigned int"             # string offset=1303
.Linfo_string149:
	.asciz	"__sigset_t"                    # string offset=1321
.Linfo_string150:
	.asciz	"sa_flags"                      # string offset=1332
.Linfo_string151:
	.asciz	"sa_restorer"                   # string offset=1341
.Linfo_string152:
	.asciz	"sigaction"                     # string offset=1353
.Linfo_string153:
	.asciz	"statbuf"                       # string offset=1363
.Linfo_string154:
	.asciz	"st_dev"                        # string offset=1371
.Linfo_string155:
	.asciz	"__dev_t"                       # string offset=1378
.Linfo_string156:
	.asciz	"st_ino"                        # string offset=1386
.Linfo_string157:
	.asciz	"__ino_t"                       # string offset=1393
.Linfo_string158:
	.asciz	"st_nlink"                      # string offset=1401
.Linfo_string159:
	.asciz	"__nlink_t"                     # string offset=1410
.Linfo_string160:
	.asciz	"st_mode"                       # string offset=1420
.Linfo_string161:
	.asciz	"__mode_t"                      # string offset=1428
.Linfo_string162:
	.asciz	"st_uid"                        # string offset=1437
.Linfo_string163:
	.asciz	"st_gid"                        # string offset=1444
.Linfo_string164:
	.asciz	"__gid_t"                       # string offset=1451
.Linfo_string165:
	.asciz	"st_rdev"                       # string offset=1459
.Linfo_string166:
	.asciz	"st_size"                       # string offset=1467
.Linfo_string167:
	.asciz	"__off_t"                       # string offset=1475
.Linfo_string168:
	.asciz	"st_blksize"                    # string offset=1483
.Linfo_string169:
	.asciz	"__blksize_t"                   # string offset=1494
.Linfo_string170:
	.asciz	"st_blocks"                     # string offset=1506
.Linfo_string171:
	.asciz	"__blkcnt_t"                    # string offset=1516
.Linfo_string172:
	.asciz	"st_atim"                       # string offset=1527
.Linfo_string173:
	.asciz	"tv_sec"                        # string offset=1535
.Linfo_string174:
	.asciz	"__time_t"                      # string offset=1542
.Linfo_string175:
	.asciz	"tv_nsec"                       # string offset=1551
.Linfo_string176:
	.asciz	"__syscall_slong_t"             # string offset=1559
.Linfo_string177:
	.asciz	"timespec"                      # string offset=1577
.Linfo_string178:
	.asciz	"st_mtim"                       # string offset=1586
.Linfo_string179:
	.asciz	"st_ctim"                       # string offset=1594
.Linfo_string180:
	.asciz	"__glibc_reserved"              # string offset=1602
.Linfo_string181:
	.asciz	"stat"                          # string offset=1619
.Linfo_string182:
	.asciz	"term"                          # string offset=1624
.Linfo_string183:
	.asciz	"c_iflag"                       # string offset=1629
.Linfo_string184:
	.asciz	"tcflag_t"                      # string offset=1637
.Linfo_string185:
	.asciz	"c_oflag"                       # string offset=1646
.Linfo_string186:
	.asciz	"c_cflag"                       # string offset=1654
.Linfo_string187:
	.asciz	"c_lflag"                       # string offset=1662
.Linfo_string188:
	.asciz	"c_line"                        # string offset=1670
.Linfo_string189:
	.asciz	"unsigned char"                 # string offset=1677
.Linfo_string190:
	.asciz	"cc_t"                          # string offset=1691
.Linfo_string191:
	.asciz	"c_cc"                          # string offset=1696
.Linfo_string192:
	.asciz	"c_ispeed"                      # string offset=1701
.Linfo_string193:
	.asciz	"speed_t"                       # string offset=1710
.Linfo_string194:
	.asciz	"c_ospeed"                      # string offset=1718
.Linfo_string195:
	.asciz	"termios"                       # string offset=1727
.Linfo_string196:
	.asciz	"s_minishell"                   # string offset=1735
.Linfo_string197:
	.asciz	"t_minishell"                   # string offset=1747
.Linfo_string198:
	.asciz	"i"                             # string offset=1759
.Linfo_string199:
	.asciz	"index"                         # string offset=1761
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_token_type
	.addrsig_sym is_operator
	.addrsig_sym get_operator_type
	.addrsig_sym init_token_attr
	.addrsig_sym get_eof_token
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym create_token
	.addrsig_sym type_is_operator
	.addrsig_sym get_operator_token
	.addrsig_sym get_word_token
	.addrsig_sym is_operator_token
	.addrsig_sym __errno_location
	.addrsig_sym is_blank
	.addrsig_sym check_lexical_error
	.section	.debug_line,"",@progbits
.Lline_table_start0:

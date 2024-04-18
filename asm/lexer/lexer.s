	.text
	.file	"lexer.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/lexer/../../include/minishell.h"
	.globl	get_token_type                  # -- Begin function get_token_type
	.p2align	4, 0x90
	.type	get_token_type,@function
get_token_type:                         # @get_token_type
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/lexer/lexer.c"
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
	.globl	append_token_to_stream          # -- Begin function append_token_to_stream
	.p2align	4, 0x90
	.type	append_token_to_stream,@function
append_token_to_stream:                 # @append_token_to_stream
.Lfunc_begin4:
	.loc	2 104 0                         # src/lexer/lexer.c:104:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp34:
	.loc	2 105 7 prologue_end            # src/lexer/lexer.c:105:7
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
.Ltmp35:
	.loc	2 105 6 is_stmt 0               # src/lexer/lexer.c:105:6
	jne	.LBB4_2
# %bb.1:
.Ltmp36:
	.loc	2 106 29 is_stmt 1              # src/lexer/lexer.c:106:29
	movq	-16(%rbp), %rcx
	.loc	2 106 3 is_stmt 0               # src/lexer/lexer.c:106:3
	movq	-8(%rbp), %rax
	.loc	2 106 27                        # src/lexer/lexer.c:106:27
	movq	%rcx, 80(%rax)
	.loc	2 106 3                         # src/lexer/lexer.c:106:3
	jmp	.LBB4_3
.LBB4_2:
.Ltmp37:
	.loc	2 109 16 is_stmt 1              # src/lexer/lexer.c:109:16
	movq	-24(%rbp), %rax
	.loc	2 109 15 is_stmt 0              # src/lexer/lexer.c:109:15
	movq	(%rax), %rcx
	.loc	2 109 3                         # src/lexer/lexer.c:109:3
	movq	-16(%rbp), %rax
	.loc	2 109 13                        # src/lexer/lexer.c:109:13
	movq	%rcx, 32(%rax)
	.loc	2 110 20 is_stmt 1              # src/lexer/lexer.c:110:20
	movq	-16(%rbp), %rcx
	.loc	2 110 5 is_stmt 0               # src/lexer/lexer.c:110:5
	movq	-24(%rbp), %rax
	.loc	2 110 4                         # src/lexer/lexer.c:110:4
	movq	(%rax), %rax
	.loc	2 110 18                        # src/lexer/lexer.c:110:18
	movq	%rcx, 40(%rax)
.Ltmp38:
.LBB4_3:
	.loc	2 112 11 is_stmt 1              # src/lexer/lexer.c:112:11
	movq	-16(%rbp), %rcx
	.loc	2 112 3 is_stmt 0               # src/lexer/lexer.c:112:3
	movq	-24(%rbp), %rax
	.loc	2 112 9                         # src/lexer/lexer.c:112:9
	movq	%rcx, (%rax)
	.loc	2 113 1 is_stmt 1               # src/lexer/lexer.c:113:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp39:
.Lfunc_end4:
	.size	append_token_to_stream, .Lfunc_end4-append_token_to_stream
	.cfi_endproc
                                        # -- End function
	.globl	lexical_analysis                # -- Begin function lexical_analysis
	.p2align	4, 0x90
	.type	lexical_analysis,@function
lexical_analysis:                       # @lexical_analysis
.Lfunc_begin5:
	.loc	2 116 0                         # src/lexer/lexer.c:116:0
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
.Ltmp40:
	.loc	2 121 4 prologue_end            # src/lexer/lexer.c:121:4
	movl	$0, -20(%rbp)
	.loc	2 122 8                         # src/lexer/lexer.c:122:8
	movq	$0, -32(%rbp)
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	.loc	2 123 9                         # src/lexer/lexer.c:123:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	.loc	2 123 18 is_stmt 0              # src/lexer/lexer.c:123:18
	je	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	.loc	2 123 21                        # src/lexer/lexer.c:123:21
	callq	__errno_location
	.loc	2 123 27                        # src/lexer/lexer.c:123:27
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	.loc	2 0 27                          # src/lexer/lexer.c:0:27
	movb	-41(%rbp), %al                  # 1-byte Reload
	.loc	2 123 2                         # src/lexer/lexer.c:123:2
	testb	$1, %al
	jne	.LBB5_4
	jmp	.LBB5_12
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
.Ltmp41:
	.loc	2 125 3 is_stmt 1               # src/lexer/lexer.c:125:3
	jmp	.LBB5_5
.LBB5_5:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	2 125 10 is_stmt 0              # src/lexer/lexer.c:125:10
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -42(%rbp)                  # 1-byte Spill
	.loc	2 125 19                        # src/lexer/lexer.c:125:19
	je	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=2
	.loc	2 125 32                        # src/lexer/lexer.c:125:32
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 125 23                        # src/lexer/lexer.c:125:23
	movsbl	(%rax,%rcx), %edi
	callq	is_blank
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 125 42                        # src/lexer/lexer.c:125:42
	cmpl	$1, %eax
	sete	%al
	movb	%al, -42(%rbp)                  # 1-byte Spill
.LBB5_7:                                #   in Loop: Header=BB5_5 Depth=2
	.loc	2 0 42                          # src/lexer/lexer.c:0:42
	movb	-42(%rbp), %al                  # 1-byte Reload
	.loc	2 125 3                         # src/lexer/lexer.c:125:3
	testb	$1, %al
	jne	.LBB5_8
	jmp	.LBB5_9
.LBB5_8:                                #   in Loop: Header=BB5_5 Depth=2
	.loc	2 126 5 is_stmt 1               # src/lexer/lexer.c:126:5
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	2 125 3                         # src/lexer/lexer.c:125:3
	jmp	.LBB5_5
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	.loc	2 127 23                        # src/lexer/lexer.c:127:23
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	addq	%rax, %rdi
	.loc	2 127 34 is_stmt 0              # src/lexer/lexer.c:127:34
	movq	-8(%rbp), %rsi
	.loc	2 127 45                        # src/lexer/lexer.c:127:45
	addq	$40, %rsi
	.loc	2 127 9                         # src/lexer/lexer.c:127:9
	callq	create_token
	.loc	2 127 7                         # src/lexer/lexer.c:127:7
	movq	%rax, -40(%rbp)
.Ltmp42:
	.loc	2 128 8 is_stmt 1               # src/lexer/lexer.c:128:8
	cmpq	$0, -40(%rbp)
.Ltmp43:
	.loc	2 128 7 is_stmt 0               # src/lexer/lexer.c:128:7
	jne	.LBB5_11
# %bb.10:
.Ltmp44:
	.loc	2 129 4 is_stmt 1               # src/lexer/lexer.c:129:4
	jmp	.LBB5_12
.Ltmp45:
.LBB5_11:                               #   in Loop: Header=BB5_1 Depth=1
	.loc	2 130 26                        # src/lexer/lexer.c:130:26
	movq	-8(%rbp), %rdi
	.loc	2 130 37 is_stmt 0              # src/lexer/lexer.c:130:37
	movq	-40(%rbp), %rsi
	.loc	2 130 3                         # src/lexer/lexer.c:130:3
	leaq	-32(%rbp), %rdx
	callq	append_token_to_stream
	.loc	2 131 8 is_stmt 1               # src/lexer/lexer.c:131:8
	movq	-40(%rbp), %rax
	.loc	2 131 13 is_stmt 0              # src/lexer/lexer.c:131:13
	movl	8(%rax), %eax
	.loc	2 131 5                         # src/lexer/lexer.c:131:5
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc	2 132 23 is_stmt 1              # src/lexer/lexer.c:132:23
	movq	-8(%rbp), %rdi
	.loc	2 132 42 is_stmt 0              # src/lexer/lexer.c:132:42
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 132 3                         # src/lexer/lexer.c:132:3
	leaq	-32(%rbp), %rsi
	movsbl	(%rax,%rcx), %edx
	callq	check_lexical_error
.Ltmp46:
	.loc	2 123 2 is_stmt 1               # src/lexer/lexer.c:123:2
	jmp	.LBB5_1
.LBB5_12:
.Ltmp47:
	.loc	2 134 6                         # src/lexer/lexer.c:134:6
	cmpq	$0, -40(%rbp)
.Ltmp48:
	.loc	2 134 6 is_stmt 0               # src/lexer/lexer.c:134:6
	je	.LBB5_14
# %bb.13:
.Ltmp49:
	.loc	2 135 3 is_stmt 1               # src/lexer/lexer.c:135:3
	leaq	-40(%rbp), %rdi
	callq	get_eof_token
.Ltmp50:
.LBB5_14:
	.loc	2 136 1                         # src/lexer/lexer.c:136:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp51:
.Lfunc_end5:
	.size	lexical_analysis, .Lfunc_end5-lexical_analysis
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
	.byte	1                               # Abbrev [1] 0xb:0xc3e DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	527                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	643                             # DW_AT_type
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
	.long	.Linfo_string43                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	714                             # DW_AT_type
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
	.long	.Linfo_string43                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	714                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x120:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string44                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	534                             # DW_AT_type
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
	.long	534                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x148:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x156:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string45                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	719                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x164:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string46                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	534                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x173:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x188:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string47                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	724                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x196:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string46                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	534                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string199                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	714                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1b3:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1c8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string47                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	724                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1d6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	643                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1e4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string200                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1f2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string199                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	534                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x200:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string46                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	534                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x20f:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x216:0x5 DW_TAG_pointer_type
	.long	539                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x21b:0xb DW_TAG_typedef
	.long	550                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x226:0x5d DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x22e:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x23a:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x246:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x252:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x25e:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x26a:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	709                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x276:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	709                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x283:0x5 DW_TAG_pointer_type
	.long	648                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x288:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x28f:0x5 DW_TAG_pointer_type
	.long	660                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x294:0xb DW_TAG_typedef
	.long	671                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x29f:0x21 DW_TAG_structure_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2a7:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2b3:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	704                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2c0:0x5 DW_TAG_pointer_type
	.long	671                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c5:0x5 DW_TAG_pointer_type
	.long	550                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ca:0x5 DW_TAG_pointer_type
	.long	534                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2cf:0x5 DW_TAG_pointer_type
	.long	527                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2d4:0x5 DW_TAG_pointer_type
	.long	729                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d9:0xb DW_TAG_typedef
	.long	740                             # DW_AT_type
	.long	.Linfo_string198                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2e4:0xbe DW_TAG_structure_type
	.long	.Linfo_string197                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	930                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2f9:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x305:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x311:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	951                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x31d:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x329:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x335:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x341:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	951                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x34d:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	956                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x359:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	1022                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x365:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1088                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x371:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	534                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x37d:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1801                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x389:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2633                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x395:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	2982                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3a2:0x5 DW_TAG_pointer_type
	.long	935                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3a7:0xb DW_TAG_typedef
	.long	946                             # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3b2:0x5 DW_TAG_structure_type
	.long	.Linfo_string49                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x3b7:0x5 DW_TAG_pointer_type
	.long	643                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3bc:0x5 DW_TAG_pointer_type
	.long	961                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3c1:0xb DW_TAG_typedef
	.long	972                             # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3cc:0x2d DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3e0:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ec:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1017                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3f9:0x5 DW_TAG_pointer_type
	.long	972                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3fe:0x5 DW_TAG_pointer_type
	.long	1027                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x403:0xb DW_TAG_typedef
	.long	1038                            # DW_AT_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x40e:0x2d DW_TAG_structure_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x416:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x422:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x42e:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1083                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x43b:0x5 DW_TAG_pointer_type
	.long	1038                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x440:0x5 DW_TAG_pointer_type
	.long	1093                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x445:0xb DW_TAG_typedef
	.long	1104                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x450:0x2d DW_TAG_structure_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x458:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1149                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x464:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1796                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x470:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1796                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x47d:0x5 DW_TAG_pointer_type
	.long	1154                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x482:0xb DW_TAG_typedef
	.long	1165                            # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x48d:0x51 DW_TAG_structure_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x495:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4a1:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ad:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4b9:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4c5:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1246                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4d1:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1246                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4de:0x5 DW_TAG_pointer_type
	.long	1251                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4e3:0xc9 DW_TAG_structure_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4eb:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4f7:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x503:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x50f:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x51b:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x527:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x533:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1452                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x53f:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1506                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x54b:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1567                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x557:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1640                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x563:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1022                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x56f:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1718                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x57b:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x587:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	951                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x593:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1246                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1246                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5ac:0x5 DW_TAG_pointer_type
	.long	1457                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5b1:0xb DW_TAG_typedef
	.long	1468                            # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5bc:0x21 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5c4:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5d0:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1501                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5dd:0x5 DW_TAG_pointer_type
	.long	1468                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5e2:0x5 DW_TAG_pointer_type
	.long	1511                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5e7:0xb DW_TAG_typedef
	.long	1522                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5f2:0x2d DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5fa:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x606:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x612:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x61f:0x5 DW_TAG_pointer_type
	.long	1572                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x624:0xb DW_TAG_typedef
	.long	1583                            # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x62f:0x39 DW_TAG_structure_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x637:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x643:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x64f:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1640                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x65b:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1718                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x668:0x5 DW_TAG_pointer_type
	.long	1645                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x66d:0xb DW_TAG_typedef
	.long	1656                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x678:0x39 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x680:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x68c:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x698:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6a4:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1713                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6b1:0x5 DW_TAG_pointer_type
	.long	1656                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6b6:0x5 DW_TAG_pointer_type
	.long	1723                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6bb:0xb DW_TAG_typedef
	.long	1734                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6c6:0x39 DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6ce:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6da:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6e6:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6f2:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1791                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6ff:0x5 DW_TAG_pointer_type
	.long	1734                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x704:0x5 DW_TAG_pointer_type
	.long	1104                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x709:0x56 DW_TAG_structure_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x711:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1821                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x71d:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x721:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1887                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x72d:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1910                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x73a:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2580                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x746:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x752:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2627                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x75f:0xb DW_TAG_typedef
	.long	1898                            # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x76a:0x5 DW_TAG_pointer_type
	.long	1903                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x76f:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x770:0x5 DW_TAG_formal_parameter
	.long	527                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x776:0x5 DW_TAG_pointer_type
	.long	1915                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x77b:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x77c:0x5 DW_TAG_formal_parameter
	.long	527                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x781:0x5 DW_TAG_formal_parameter
	.long	1932                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x786:0x5 DW_TAG_formal_parameter
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x78c:0x5 DW_TAG_pointer_type
	.long	1937                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x791:0xb DW_TAG_typedef
	.long	1948                            # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x79c:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7a0:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7ac:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7b8:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7c4:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7d0:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2012                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7dc:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7e0:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2459                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7ec:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2040                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x7f8:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7fc:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2478                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x808:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2489                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x815:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2081                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x821:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x825:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x831:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x83d:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2500                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x84a:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2134                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x856:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x85a:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2478                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x866:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2489                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x872:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2500                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x87f:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2187                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x88b:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x88f:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2478                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x89b:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2489                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8a7:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8b3:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8bf:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8cc:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2264                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x8d8:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8dc:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8e8:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2562                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8f4:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2304                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x900:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x904:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2320                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x910:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x914:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x920:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x92d:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2569                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x93b:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2375                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x947:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x94b:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2555                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x957:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x964:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2416                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x970:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x974:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x980:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x98c:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	169                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x99b:0xc DW_TAG_array_type
	.long	527                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x9a0:0x6 DW_TAG_subrange_type
	.long	2471                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x9a7:0x7 DW_TAG_base_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0x9ae:0xb DW_TAG_typedef
	.long	527                             # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9b9:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9c4:0xb DW_TAG_typedef
	.long	2511                            # DW_AT_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x9cf:0x21 DW_TAG_union_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9d7:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9e3:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9f0:0xb DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.long	.Linfo_string127                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9fb:0x7 DW_TAG_base_type
	.long	.Linfo_string126                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xa02:0x7 DW_TAG_base_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xa09:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa14:0xb DW_TAG_typedef
	.long	2591                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xa1f:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa23:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2608                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xa30:0xc DW_TAG_array_type
	.long	2620                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xa35:0x6 DW_TAG_subrange_type
	.long	2471                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa3c:0x7 DW_TAG_base_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xa43:0x5 DW_TAG_pointer_type
	.long	2632                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xa48:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0xa49:0x5 DW_TAG_pointer_type
	.long	2638                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0xa4e:0xbd DW_TAG_structure_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa56:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2827                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa62:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2838                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa6e:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2849                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa7a:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2860                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa86:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2489                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa92:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2871                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa9e:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaaa:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2827                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xab6:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2882                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xac2:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2893                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xace:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2904                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xada:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2915                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xae6:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	2915                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaf2:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2915                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xafe:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	2970                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb0b:0xb DW_TAG_typedef
	.long	2620                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb16:0xb DW_TAG_typedef
	.long	2620                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb21:0xb DW_TAG_typedef
	.long	2620                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb2c:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb37:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb42:0xb DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb4d:0xb DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.long	.Linfo_string170                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb58:0xb DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb63:0x21 DW_TAG_structure_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb6b:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2948                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb77:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2959                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb84:0xb DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.long	.Linfo_string175                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb8f:0xb DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xb9a:0xc DW_TAG_array_type
	.long	2959                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xb9f:0x6 DW_TAG_subrange_type
	.long	2471                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xba6:0x5 DW_TAG_pointer_type
	.long	2987                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0xbab:0x69 DW_TAG_structure_type
	.long	.Linfo_string196                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xbb3:0xc DW_TAG_member
	.long	.Linfo_string184                # DW_AT_name
	.long	3092                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbbf:0xc DW_TAG_member
	.long	.Linfo_string186                # DW_AT_name
	.long	3092                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbcb:0xc DW_TAG_member
	.long	.Linfo_string187                # DW_AT_name
	.long	3092                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbd7:0xc DW_TAG_member
	.long	.Linfo_string188                # DW_AT_name
	.long	3092                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbe3:0xc DW_TAG_member
	.long	.Linfo_string189                # DW_AT_name
	.long	3103                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbef:0xc DW_TAG_member
	.long	.Linfo_string192                # DW_AT_name
	.long	3121                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbfb:0xc DW_TAG_member
	.long	.Linfo_string193                # DW_AT_name
	.long	3133                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc07:0xc DW_TAG_member
	.long	.Linfo_string195                # DW_AT_name
	.long	3133                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc14:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string185                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc1f:0xb DW_TAG_typedef
	.long	3114                            # DW_AT_type
	.long	.Linfo_string191                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc2a:0x7 DW_TAG_base_type
	.long	.Linfo_string190                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0xc31:0xc DW_TAG_array_type
	.long	3103                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xc36:0x6 DW_TAG_subrange_type
	.long	2471                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc3d:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string194                # DW_AT_name
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
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=56
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=114
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=127
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=141
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=155
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=168
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=181
.Linfo_string9:
	.asciz	"expansion"                     # string offset=193
.Linfo_string10:
	.asciz	"operator"                      # string offset=203
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=212
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=221
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=229
.Linfo_string14:
	.asciz	"outfile"                       # string offset=237
.Linfo_string15:
	.asciz	"append"                        # string offset=245
.Linfo_string16:
	.asciz	"infile"                        # string offset=252
.Linfo_string17:
	.asciz	"and_if"                        # string offset=259
.Linfo_string18:
	.asciz	"or_if"                         # string offset=266
.Linfo_string19:
	.asciz	"word"                          # string offset=272
.Linfo_string20:
	.asciz	"name"                          # string offset=277
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=282
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=298
.Linfo_string23:
	.asciz	"e_token"                       # string offset=308
.Linfo_string24:
	.asciz	"get_token_type"                # string offset=316
.Linfo_string25:
	.asciz	"int"                           # string offset=331
.Linfo_string26:
	.asciz	"init_token_attr"               # string offset=335
.Linfo_string27:
	.asciz	"get_eof_token"                 # string offset=351
.Linfo_string28:
	.asciz	"create_token"                  # string offset=365
.Linfo_string29:
	.asciz	"type"                          # string offset=378
.Linfo_string30:
	.asciz	"quote_nbr"                     # string offset=383
.Linfo_string31:
	.asciz	"length"                        # string offset=393
.Linfo_string32:
	.asciz	"lexeme"                        # string offset=400
.Linfo_string33:
	.asciz	"char"                          # string offset=407
.Linfo_string34:
	.asciz	"next"                          # string offset=412
.Linfo_string35:
	.asciz	"s_expan"                       # string offset=417
.Linfo_string36:
	.asciz	"t_expan"                       # string offset=425
.Linfo_string37:
	.asciz	"prev"                          # string offset=433
.Linfo_string38:
	.asciz	"s_token"                       # string offset=438
.Linfo_string39:
	.asciz	"t_token"                       # string offset=446
.Linfo_string40:
	.asciz	"append_token_to_stream"        # string offset=454
.Linfo_string41:
	.asciz	"lexical_analysis"              # string offset=477
.Linfo_string42:
	.asciz	"input"                         # string offset=494
.Linfo_string43:
	.asciz	"token"                         # string offset=500
.Linfo_string44:
	.asciz	"eof"                           # string offset=506
.Linfo_string45:
	.asciz	"operator_nbr"                  # string offset=510
.Linfo_string46:
	.asciz	"new"                           # string offset=523
.Linfo_string47:
	.asciz	"minishell"                     # string offset=527
.Linfo_string48:
	.asciz	"dir"                           # string offset=537
.Linfo_string49:
	.asciz	"__dirstream"                   # string offset=541
.Linfo_string50:
	.asciz	"DIR"                           # string offset=553
.Linfo_string51:
	.asciz	"state"                         # string offset=557
.Linfo_string52:
	.asciz	"path"                          # string offset=563
.Linfo_string53:
	.asciz	"prompt"                        # string offset=568
.Linfo_string54:
	.asciz	"env_array"                     # string offset=575
.Linfo_string55:
	.asciz	"env"                           # string offset=585
.Linfo_string56:
	.asciz	"value"                         # string offset=589
.Linfo_string57:
	.asciz	"s_env"                         # string offset=595
.Linfo_string58:
	.asciz	"t_env"                         # string offset=601
.Linfo_string59:
	.asciz	"local"                         # string offset=607
.Linfo_string60:
	.asciz	"s_var"                         # string offset=613
.Linfo_string61:
	.asciz	"t_var"                         # string offset=619
.Linfo_string62:
	.asciz	"syntax_tree"                   # string offset=625
.Linfo_string63:
	.asciz	"node"                          # string offset=637
.Linfo_string64:
	.asciz	"id"                            # string offset=642
.Linfo_string65:
	.asciz	"pipe_fd"                       # string offset=645
.Linfo_string66:
	.asciz	"left"                          # string offset=653
.Linfo_string67:
	.asciz	"pid"                           # string offset=658
.Linfo_string68:
	.asciz	"wstatus"                       # string offset=662
.Linfo_string69:
	.asciz	"arg"                           # string offset=670
.Linfo_string70:
	.asciz	"s_arg"                         # string offset=674
.Linfo_string71:
	.asciz	"t_arg"                         # string offset=680
.Linfo_string72:
	.asciz	"pipe"                          # string offset=686
.Linfo_string73:
	.asciz	"to_close"                      # string offset=691
.Linfo_string74:
	.asciz	"write"                         # string offset=700
.Linfo_string75:
	.asciz	"read"                          # string offset=706
.Linfo_string76:
	.asciz	"s_pipe"                        # string offset=711
.Linfo_string77:
	.asciz	"t_pipe"                        # string offset=718
.Linfo_string78:
	.asciz	"redir"                         # string offset=725
.Linfo_string79:
	.asciz	"in_fd"                         # string offset=731
.Linfo_string80:
	.asciz	"out_fd"                        # string offset=737
.Linfo_string81:
	.asciz	"fd"                            # string offset=744
.Linfo_string82:
	.asciz	"s_infile"                      # string offset=747
.Linfo_string83:
	.asciz	"t_infile"                      # string offset=756
.Linfo_string84:
	.asciz	"s_outfile"                     # string offset=765
.Linfo_string85:
	.asciz	"t_outfile"                     # string offset=775
.Linfo_string86:
	.asciz	"s_redir"                       # string offset=785
.Linfo_string87:
	.asciz	"t_redir"                       # string offset=793
.Linfo_string88:
	.asciz	"assign"                        # string offset=801
.Linfo_string89:
	.asciz	"arg_array"                     # string offset=808
.Linfo_string90:
	.asciz	"s_cmd"                         # string offset=818
.Linfo_string91:
	.asciz	"right"                         # string offset=824
.Linfo_string92:
	.asciz	"s_ast_node"                    # string offset=830
.Linfo_string93:
	.asciz	"t_ast_node"                    # string offset=841
.Linfo_string94:
	.asciz	"s_ast"                         # string offset=852
.Linfo_string95:
	.asciz	"t_ast"                         # string offset=858
.Linfo_string96:
	.asciz	"token_stream"                  # string offset=864
.Linfo_string97:
	.asciz	"sighandler"                    # string offset=877
.Linfo_string98:
	.asciz	"__sigaction_handler"           # string offset=888
.Linfo_string99:
	.asciz	"sa_handler"                    # string offset=908
.Linfo_string100:
	.asciz	"__sighandler_t"                # string offset=919
.Linfo_string101:
	.asciz	"sa_sigaction"                  # string offset=934
.Linfo_string102:
	.asciz	"si_signo"                      # string offset=947
.Linfo_string103:
	.asciz	"si_errno"                      # string offset=956
.Linfo_string104:
	.asciz	"si_code"                       # string offset=965
.Linfo_string105:
	.asciz	"__pad0"                        # string offset=973
.Linfo_string106:
	.asciz	"_sifields"                     # string offset=980
.Linfo_string107:
	.asciz	"_pad"                          # string offset=990
.Linfo_string108:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=995
.Linfo_string109:
	.asciz	"_kill"                         # string offset=1015
.Linfo_string110:
	.asciz	"si_pid"                        # string offset=1021
.Linfo_string111:
	.asciz	"__pid_t"                       # string offset=1028
.Linfo_string112:
	.asciz	"si_uid"                        # string offset=1036
.Linfo_string113:
	.asciz	"__uid_t"                       # string offset=1043
.Linfo_string114:
	.asciz	"_timer"                        # string offset=1051
.Linfo_string115:
	.asciz	"si_tid"                        # string offset=1058
.Linfo_string116:
	.asciz	"si_overrun"                    # string offset=1065
.Linfo_string117:
	.asciz	"si_sigval"                     # string offset=1076
.Linfo_string118:
	.asciz	"sival_int"                     # string offset=1086
.Linfo_string119:
	.asciz	"sival_ptr"                     # string offset=1096
.Linfo_string120:
	.asciz	"sigval"                        # string offset=1106
.Linfo_string121:
	.asciz	"__sigval_t"                    # string offset=1113
.Linfo_string122:
	.asciz	"_rt"                           # string offset=1124
.Linfo_string123:
	.asciz	"_sigchld"                      # string offset=1128
.Linfo_string124:
	.asciz	"si_status"                     # string offset=1137
.Linfo_string125:
	.asciz	"si_utime"                      # string offset=1147
.Linfo_string126:
	.asciz	"long int"                      # string offset=1156
.Linfo_string127:
	.asciz	"__clock_t"                     # string offset=1165
.Linfo_string128:
	.asciz	"si_stime"                      # string offset=1175
.Linfo_string129:
	.asciz	"_sigfault"                     # string offset=1184
.Linfo_string130:
	.asciz	"si_addr"                       # string offset=1194
.Linfo_string131:
	.asciz	"si_addr_lsb"                   # string offset=1202
.Linfo_string132:
	.asciz	"short"                         # string offset=1214
.Linfo_string133:
	.asciz	"_bounds"                       # string offset=1220
.Linfo_string134:
	.asciz	"_addr_bnd"                     # string offset=1228
.Linfo_string135:
	.asciz	"_lower"                        # string offset=1238
.Linfo_string136:
	.asciz	"_upper"                        # string offset=1245
.Linfo_string137:
	.asciz	"_pkey"                         # string offset=1252
.Linfo_string138:
	.asciz	"__uint32_t"                    # string offset=1258
.Linfo_string139:
	.asciz	"_sigpoll"                      # string offset=1269
.Linfo_string140:
	.asciz	"si_band"                       # string offset=1278
.Linfo_string141:
	.asciz	"si_fd"                         # string offset=1286
.Linfo_string142:
	.asciz	"_sigsys"                       # string offset=1292
.Linfo_string143:
	.asciz	"_call_addr"                    # string offset=1300
.Linfo_string144:
	.asciz	"_syscall"                      # string offset=1311
.Linfo_string145:
	.asciz	"_arch"                         # string offset=1320
.Linfo_string146:
	.asciz	"siginfo_t"                     # string offset=1326
.Linfo_string147:
	.asciz	"sa_mask"                       # string offset=1336
.Linfo_string148:
	.asciz	"__val"                         # string offset=1344
.Linfo_string149:
	.asciz	"long unsigned int"             # string offset=1350
.Linfo_string150:
	.asciz	"__sigset_t"                    # string offset=1368
.Linfo_string151:
	.asciz	"sa_flags"                      # string offset=1379
.Linfo_string152:
	.asciz	"sa_restorer"                   # string offset=1388
.Linfo_string153:
	.asciz	"sigaction"                     # string offset=1400
.Linfo_string154:
	.asciz	"statbuf"                       # string offset=1410
.Linfo_string155:
	.asciz	"st_dev"                        # string offset=1418
.Linfo_string156:
	.asciz	"__dev_t"                       # string offset=1425
.Linfo_string157:
	.asciz	"st_ino"                        # string offset=1433
.Linfo_string158:
	.asciz	"__ino_t"                       # string offset=1440
.Linfo_string159:
	.asciz	"st_nlink"                      # string offset=1448
.Linfo_string160:
	.asciz	"__nlink_t"                     # string offset=1457
.Linfo_string161:
	.asciz	"st_mode"                       # string offset=1467
.Linfo_string162:
	.asciz	"__mode_t"                      # string offset=1475
.Linfo_string163:
	.asciz	"st_uid"                        # string offset=1484
.Linfo_string164:
	.asciz	"st_gid"                        # string offset=1491
.Linfo_string165:
	.asciz	"__gid_t"                       # string offset=1498
.Linfo_string166:
	.asciz	"st_rdev"                       # string offset=1506
.Linfo_string167:
	.asciz	"st_size"                       # string offset=1514
.Linfo_string168:
	.asciz	"__off_t"                       # string offset=1522
.Linfo_string169:
	.asciz	"st_blksize"                    # string offset=1530
.Linfo_string170:
	.asciz	"__blksize_t"                   # string offset=1541
.Linfo_string171:
	.asciz	"st_blocks"                     # string offset=1553
.Linfo_string172:
	.asciz	"__blkcnt_t"                    # string offset=1563
.Linfo_string173:
	.asciz	"st_atim"                       # string offset=1574
.Linfo_string174:
	.asciz	"tv_sec"                        # string offset=1582
.Linfo_string175:
	.asciz	"__time_t"                      # string offset=1589
.Linfo_string176:
	.asciz	"tv_nsec"                       # string offset=1598
.Linfo_string177:
	.asciz	"__syscall_slong_t"             # string offset=1606
.Linfo_string178:
	.asciz	"timespec"                      # string offset=1624
.Linfo_string179:
	.asciz	"st_mtim"                       # string offset=1633
.Linfo_string180:
	.asciz	"st_ctim"                       # string offset=1641
.Linfo_string181:
	.asciz	"__glibc_reserved"              # string offset=1649
.Linfo_string182:
	.asciz	"stat"                          # string offset=1666
.Linfo_string183:
	.asciz	"term"                          # string offset=1671
.Linfo_string184:
	.asciz	"c_iflag"                       # string offset=1676
.Linfo_string185:
	.asciz	"tcflag_t"                      # string offset=1684
.Linfo_string186:
	.asciz	"c_oflag"                       # string offset=1693
.Linfo_string187:
	.asciz	"c_cflag"                       # string offset=1701
.Linfo_string188:
	.asciz	"c_lflag"                       # string offset=1709
.Linfo_string189:
	.asciz	"c_line"                        # string offset=1717
.Linfo_string190:
	.asciz	"unsigned char"                 # string offset=1724
.Linfo_string191:
	.asciz	"cc_t"                          # string offset=1738
.Linfo_string192:
	.asciz	"c_cc"                          # string offset=1743
.Linfo_string193:
	.asciz	"c_ispeed"                      # string offset=1748
.Linfo_string194:
	.asciz	"speed_t"                       # string offset=1757
.Linfo_string195:
	.asciz	"c_ospeed"                      # string offset=1765
.Linfo_string196:
	.asciz	"termios"                       # string offset=1774
.Linfo_string197:
	.asciz	"s_minishell"                   # string offset=1782
.Linfo_string198:
	.asciz	"t_minishell"                   # string offset=1794
.Linfo_string199:
	.asciz	"index"                         # string offset=1806
.Linfo_string200:
	.asciz	"i"                             # string offset=1812
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
	.addrsig_sym append_token_to_stream
	.addrsig_sym __errno_location
	.addrsig_sym is_blank
	.addrsig_sym check_lexical_error
	.section	.debug_line,"",@progbits
.Lline_table_start0:

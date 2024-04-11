	.text
	.file	"command_expan.c"
	.globl	is_expansion_name               # -- Begin function is_expansion_name
	.p2align	4, 0x90
	.type	is_expansion_name,@function
is_expansion_name:                      # @is_expansion_name
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/command_expan.c"
	.loc	1 16 0                          # src/parsing/command_expan.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
.Ltmp0:
	.loc	1 17 6 prologue_end             # src/parsing/command_expan.c:17:6
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 17 16 is_stmt 0               # src/parsing/command_expan.c:17:16
	cmpl	$36, %eax
	.loc	1 17 23                         # src/parsing/command_expan.c:17:23
	jne	.LBB0_3
# %bb.1:
	.loc	1 17 37                         # src/parsing/command_expan.c:17:37
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 17 46                         # src/parsing/command_expan.c:17:46
	movq	-16(%rbp), %rax
	.loc	1 17 54                         # src/parsing/command_expan.c:17:54
	addq	$1, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 18 14 is_stmt 1               # src/parsing/command_expan.c:18:14
	movq	-24(%rbp), %rdi
	.loc	1 18 4 is_stmt 0                # src/parsing/command_expan.c:18:4
	callq	ft_strlen
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 17 26 is_stmt 1               # src/parsing/command_expan.c:17:26
	callq	ft_strncmp
	.loc	1 18 21                         # src/parsing/command_expan.c:18:21
	cmpl	$0, %eax
.Ltmp1:
	.loc	1 17 6                          # src/parsing/command_expan.c:17:6
	jne	.LBB0_3
# %bb.2:
.Ltmp2:
	.loc	1 19 3                          # src/parsing/command_expan.c:19:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_4
.Ltmp3:
.LBB0_3:
	.loc	1 20 2                          # src/parsing/command_expan.c:20:2
	movb	$0, -1(%rbp)
.LBB0_4:
	.loc	1 21 1                          # src/parsing/command_expan.c:21:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_expansion_name, .Lfunc_end0-is_expansion_name
	.cfi_endproc
                                        # -- End function
	.globl	manage_empty_expansion          # -- Begin function manage_empty_expansion
	.p2align	4, 0x90
	.type	manage_empty_expansion,@function
manage_empty_expansion:                 # @manage_empty_expansion
.Lfunc_begin1:
	.loc	1 24 0                          # src/parsing/command_expan.c:24:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp5:
	.loc	1 25 18 prologue_end            # src/parsing/command_expan.c:25:18
	movq	-8(%rbp), %rax
	.loc	1 25 17 is_stmt 0               # src/parsing/command_expan.c:25:17
	movq	(%rax), %rdi
	.loc	1 25 6                          # src/parsing/command_expan.c:25:6
	callq	ft_strlen
	.loc	1 25 36                         # src/parsing/command_expan.c:25:36
	cmpq	$0, %rax
	.loc	1 25 41                         # src/parsing/command_expan.c:25:41
	jne	.LBB1_3
# %bb.1:
	.loc	1 25 54                         # src/parsing/command_expan.c:25:54
	movq	-16(%rbp), %rdi
	.loc	1 25 44                         # src/parsing/command_expan.c:25:44
	callq	ft_strlen
	.loc	1 25 62                         # src/parsing/command_expan.c:25:62
	cmpq	$0, %rax
.Ltmp6:
	.loc	1 25 6                          # src/parsing/command_expan.c:25:6
	jbe	.LBB1_3
# %bb.2:
.Ltmp7:
	.loc	1 27 10 is_stmt 1               # src/parsing/command_expan.c:27:10
	movq	-8(%rbp), %rax
	.loc	1 27 9 is_stmt 0                # src/parsing/command_expan.c:27:9
	movq	(%rax), %rdi
	.loc	1 27 3                          # src/parsing/command_expan.c:27:3
	callq	free
	.loc	1 28 5 is_stmt 1                # src/parsing/command_expan.c:28:5
	movq	-8(%rbp), %rax
	.loc	1 28 22 is_stmt 0               # src/parsing/command_expan.c:28:22
	movq	$0, (%rax)
.Ltmp8:
.LBB1_3:
	.loc	1 30 1 is_stmt 1                # src/parsing/command_expan.c:30:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end1:
	.size	manage_empty_expansion, .Lfunc_end1-manage_empty_expansion
	.cfi_endproc
                                        # -- End function
	.globl	remove_expansion_name           # -- Begin function remove_expansion_name
	.p2align	4, 0x90
	.type	remove_expansion_name,@function
remove_expansion_name:                  # @remove_expansion_name
.Lfunc_begin2:
	.loc	1 33 0                          # src/parsing/command_expan.c:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp10:
	.loc	1 37 4 prologue_end             # src/parsing/command_expan.c:37:4
	movl	$0, -32(%rbp)
	.loc	1 38 4                          # src/parsing/command_expan.c:38:4
	movl	$0, -28(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 39 9                          # src/parsing/command_expan.c:39:9
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	1 39 2 is_stmt 0                # src/parsing/command_expan.c:39:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp11:
	.loc	1 41 25 is_stmt 1               # src/parsing/command_expan.c:41:25
	movq	-8(%rbp), %rdi
	.loc	1 41 33 is_stmt 0               # src/parsing/command_expan.c:41:33
	movq	-24(%rbp), %rsi
	.loc	1 41 39                         # src/parsing/command_expan.c:41:39
	movl	-28(%rbp), %edx
	.loc	1 41 7                          # src/parsing/command_expan.c:41:7
	callq	is_expansion_name
.Ltmp12:
	.loc	1 41 7                          # src/parsing/command_expan.c:41:7
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:
.Ltmp13:
	.loc	1 43 18 is_stmt 1               # src/parsing/command_expan.c:43:18
	movq	-24(%rbp), %rdi
	.loc	1 43 8 is_stmt 0                # src/parsing/command_expan.c:43:8
	callq	ft_strlen
	.loc	1 43 26                         # src/parsing/command_expan.c:43:26
	movslq	-28(%rbp), %rcx
	.loc	1 43 24                         # src/parsing/command_expan.c:43:24
	addq	%rcx, %rax
	.loc	1 43 28                         # src/parsing/command_expan.c:43:28
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 43 6                          # src/parsing/command_expan.c:43:6
	movl	%eax, -28(%rbp)
	.loc	1 44 4 is_stmt 1                # src/parsing/command_expan.c:44:4
	jmp	.LBB2_5
.Ltmp14:
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 46 27                         # src/parsing/command_expan.c:46:27
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 46 5 is_stmt 0                # src/parsing/command_expan.c:46:5
	movq	-16(%rbp), %rax
	.loc	1 46 4                          # src/parsing/command_expan.c:46:4
	movq	(%rax), %rax
	.loc	1 46 3                          # src/parsing/command_expan.c:46:3
	movslq	-32(%rbp), %rcx
	.loc	1 46 25                         # src/parsing/command_expan.c:46:25
	movb	%dl, (%rax,%rcx)
	.loc	1 47 4 is_stmt 1                # src/parsing/command_expan.c:47:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 48 4                          # src/parsing/command_expan.c:48:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.Ltmp15:
	.loc	1 39 2                          # src/parsing/command_expan.c:39:2
	jmp	.LBB2_1
.LBB2_5:
	.loc	1 50 2                          # src/parsing/command_expan.c:50:2
	jmp	.LBB2_6
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	.loc	1 50 9 is_stmt 0                # src/parsing/command_expan.c:50:9
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	1 50 2                          # src/parsing/command_expan.c:50:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
.Ltmp16:
	.loc	1 52 27 is_stmt 1               # src/parsing/command_expan.c:52:27
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 52 5 is_stmt 0                # src/parsing/command_expan.c:52:5
	movq	-16(%rbp), %rax
	.loc	1 52 4                          # src/parsing/command_expan.c:52:4
	movq	(%rax), %rax
	.loc	1 52 3                          # src/parsing/command_expan.c:52:3
	movslq	-32(%rbp), %rcx
	.loc	1 52 25                         # src/parsing/command_expan.c:52:25
	movb	%dl, (%rax,%rcx)
	.loc	1 53 4 is_stmt 1                # src/parsing/command_expan.c:53:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 54 4                          # src/parsing/command_expan.c:54:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.Ltmp17:
	.loc	1 50 2                          # src/parsing/command_expan.c:50:2
	jmp	.LBB2_6
.LBB2_8:
	.loc	1 56 4                          # src/parsing/command_expan.c:56:4
	movq	-16(%rbp), %rax
	.loc	1 56 3 is_stmt 0                # src/parsing/command_expan.c:56:3
	movq	(%rax), %rax
	.loc	1 56 2                          # src/parsing/command_expan.c:56:2
	movslq	-32(%rbp), %rcx
	.loc	1 56 24                         # src/parsing/command_expan.c:56:24
	movb	$0, (%rax,%rcx)
	.loc	1 57 28 is_stmt 1               # src/parsing/command_expan.c:57:28
	movq	-16(%rbp), %rdi
	.loc	1 57 46 is_stmt 0               # src/parsing/command_expan.c:57:46
	movq	-8(%rbp), %rsi
	.loc	1 57 2                          # src/parsing/command_expan.c:57:2
	callq	manage_empty_expansion
	.loc	1 58 1 is_stmt 1                # src/parsing/command_expan.c:58:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp18:
.Lfunc_end2:
	.size	remove_expansion_name, .Lfunc_end2-remove_expansion_name
	.cfi_endproc
                                        # -- End function
	.globl	expand_lexeme_variable          # -- Begin function expand_lexeme_variable
	.p2align	4, 0x90
	.type	expand_lexeme_variable,@function
expand_lexeme_variable:                 # @expand_lexeme_variable
.Lfunc_begin3:
	.loc	1 61 0                          # src/parsing/command_expan.c:61:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.Ltmp19:
	.loc	1 65 21 prologue_end            # src/parsing/command_expan.c:65:21
	movq	-16(%rbp), %rdi
	.loc	1 65 11 is_stmt 0               # src/parsing/command_expan.c:65:11
	callq	ft_strlen
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 65 41                         # src/parsing/command_expan.c:65:41
	movq	-24(%rbp), %rdi
	.loc	1 65 31                         # src/parsing/command_expan.c:65:31
	callq	ft_strlen
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	.loc	1 65 29                         # src/parsing/command_expan.c:65:29
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 65 9                          # src/parsing/command_expan.c:65:9
	movl	%eax, -36(%rbp)
.Ltmp20:
	.loc	1 66 6 is_stmt 1                # src/parsing/command_expan.c:66:6
	cmpq	$0, -32(%rbp)
.Ltmp21:
	.loc	1 66 6 is_stmt 0                # src/parsing/command_expan.c:66:6
	je	.LBB3_2
# %bb.1:
.Ltmp22:
	.loc	1 67 23 is_stmt 1               # src/parsing/command_expan.c:67:23
	movq	-32(%rbp), %rdi
	.loc	1 67 13 is_stmt 0               # src/parsing/command_expan.c:67:13
	callq	ft_strlen
	movq	%rax, %rcx
	.loc	1 67 10                         # src/parsing/command_expan.c:67:10
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
.Ltmp23:
.LBB3_2:
	.loc	1 68 27 is_stmt 1               # src/parsing/command_expan.c:68:27
	movl	-36(%rbp), %eax
	.loc	1 68 34 is_stmt 0               # src/parsing/command_expan.c:68:34
	addl	$1, %eax
	.loc	1 68 27                         # src/parsing/command_expan.c:68:27
	movslq	%eax, %rdi
	.loc	1 68 20                         # src/parsing/command_expan.c:68:20
	callq	malloc
	.loc	1 68 18                         # src/parsing/command_expan.c:68:18
	movq	%rax, -48(%rbp)
.Ltmp24:
	.loc	1 69 7 is_stmt 1                # src/parsing/command_expan.c:69:7
	cmpq	$0, -48(%rbp)
.Ltmp25:
	.loc	1 69 6 is_stmt 0                # src/parsing/command_expan.c:69:6
	jne	.LBB3_4
# %bb.3:
.Ltmp26:
	.loc	1 70 11 is_stmt 1               # src/parsing/command_expan.c:70:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 70 3 is_stmt 0                # src/parsing/command_expan.c:70:3
	movq	$0, -8(%rbp)
	jmp	.LBB3_8
.Ltmp27:
.LBB3_4:
	.loc	1 71 6 is_stmt 1                # src/parsing/command_expan.c:71:6
	cmpq	$0, -32(%rbp)
.Ltmp28:
	.loc	1 71 6 is_stmt 0                # src/parsing/command_expan.c:71:6
	je	.LBB3_6
# %bb.5:
.Ltmp29:
	.loc	1 72 35 is_stmt 1               # src/parsing/command_expan.c:72:35
	movq	-16(%rbp), %rdi
	.loc	1 72 61 is_stmt 0               # src/parsing/command_expan.c:72:61
	movq	-32(%rbp), %rdx
	.loc	1 72 68                         # src/parsing/command_expan.c:72:68
	movq	-24(%rbp), %rcx
	.loc	1 72 3                          # src/parsing/command_expan.c:72:3
	leaq	-48(%rbp), %rsi
	callq	replace_expansion_name_by_value
	jmp	.LBB3_7
.LBB3_6:
	.loc	1 74 25 is_stmt 1               # src/parsing/command_expan.c:74:25
	movq	-16(%rbp), %rdi
	.loc	1 74 51 is_stmt 0               # src/parsing/command_expan.c:74:51
	movq	-24(%rbp), %rdx
	.loc	1 74 3                          # src/parsing/command_expan.c:74:3
	leaq	-48(%rbp), %rsi
	callq	remove_expansion_name
.Ltmp30:
.LBB3_7:
	.loc	1 75 7 is_stmt 1                # src/parsing/command_expan.c:75:7
	movq	-16(%rbp), %rdi
	.loc	1 75 2 is_stmt 0                # src/parsing/command_expan.c:75:2
	callq	free
	.loc	1 76 10 is_stmt 1               # src/parsing/command_expan.c:76:10
	movq	-48(%rbp), %rax
	.loc	1 76 2 is_stmt 0                # src/parsing/command_expan.c:76:2
	movq	%rax, -8(%rbp)
.LBB3_8:
	.loc	1 77 1 is_stmt 1                # src/parsing/command_expan.c:77:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp31:
.Lfunc_end3:
	.size	expand_lexeme_variable, .Lfunc_end3-expand_lexeme_variable
	.cfi_endproc
                                        # -- End function
	.globl	manage_expansion                # -- Begin function manage_expansion
	.p2align	4, 0x90
	.type	manage_expansion,@function
manage_expansion:                       # @manage_expansion
.Lfunc_begin4:
	.loc	1 80 0                          # src/parsing/command_expan.c:80:0
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
	movq	%rdx, -24(%rbp)
.Ltmp32:
	.loc	1 85 8 prologue_end             # src/parsing/command_expan.c:85:8
	movq	$0, -32(%rbp)
	.loc	1 86 16                         # src/parsing/command_expan.c:86:16
	movq	-16(%rbp), %rax
	.loc	1 86 15 is_stmt 0               # src/parsing/command_expan.c:86:15
	movq	(%rax), %rax
	.loc	1 86 24                         # src/parsing/command_expan.c:86:24
	movq	24(%rax), %rax
	.loc	1 86 12                         # src/parsing/command_expan.c:86:12
	movq	%rax, -48(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 87 2 is_stmt 1                # src/parsing/command_expan.c:87:2
	cmpq	$0, -48(%rbp)
	je	.LBB4_9
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp33:
	.loc	1 89 31                         # src/parsing/command_expan.c:89:31
	movq	-24(%rbp), %rdi
	.loc	1 89 36 is_stmt 0               # src/parsing/command_expan.c:89:36
	movq	-48(%rbp), %rax
	.loc	1 89 47                         # src/parsing/command_expan.c:89:47
	movq	(%rax), %rsi
	.loc	1 89 11                         # src/parsing/command_expan.c:89:11
	callq	get_expansion_value
	.loc	1 89 9                          # src/parsing/command_expan.c:89:9
	movq	%rax, -32(%rbp)
.Ltmp34:
	.loc	1 90 34 is_stmt 1               # src/parsing/command_expan.c:90:34
	movq	-32(%rbp), %rdi
	.loc	1 90 7 is_stmt 0                # src/parsing/command_expan.c:90:7
	callq	is_expansion_stored_in_env
.Ltmp35:
	.loc	1 90 7                          # src/parsing/command_expan.c:90:7
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp36:
	.loc	1 92 48 is_stmt 1               # src/parsing/command_expan.c:92:48
	movq	-16(%rbp), %rax
	.loc	1 92 47 is_stmt 0               # src/parsing/command_expan.c:92:47
	movq	(%rax), %rax
	.loc	1 92 56                         # src/parsing/command_expan.c:92:56
	movq	16(%rax), %rdi
	.loc	1 93 6 is_stmt 1                # src/parsing/command_expan.c:93:6
	movq	-48(%rbp), %rax
	.loc	1 93 17 is_stmt 0               # src/parsing/command_expan.c:93:17
	movq	(%rax), %rsi
	.loc	1 93 23                         # src/parsing/command_expan.c:93:23
	movq	-32(%rbp), %rdx
	.loc	1 92 23 is_stmt 1               # src/parsing/command_expan.c:92:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 92 6 is_stmt 0                # src/parsing/command_expan.c:92:6
	movq	-16(%rbp), %rax
	.loc	1 92 5                          # src/parsing/command_expan.c:92:5
	movq	(%rax), %rax
	.loc	1 92 21                         # src/parsing/command_expan.c:92:21
	movq	%rcx, 16(%rax)
	.loc	1 94 9 is_stmt 1                # src/parsing/command_expan.c:94:9
	movq	-32(%rbp), %rdi
	.loc	1 94 4 is_stmt 0                # src/parsing/command_expan.c:94:4
	callq	free
	.loc	1 95 3 is_stmt 1                # src/parsing/command_expan.c:95:3
	jmp	.LBB4_8
.Ltmp37:
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 96 27                         # src/parsing/command_expan.c:96:27
	movq	-48(%rbp), %rax
	.loc	1 96 38 is_stmt 0               # src/parsing/command_expan.c:96:38
	movq	(%rax), %rdi
	.loc	1 96 12                         # src/parsing/command_expan.c:96:12
	callq	is_exit_status
.Ltmp38:
	.loc	1 96 12                         # src/parsing/command_expan.c:96:12
	testb	$1, %al
	jne	.LBB4_5
	jmp	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp39:
	.loc	1 98 31 is_stmt 1               # src/parsing/command_expan.c:98:31
	movq	-8(%rbp), %rax
	movzbl	44(%rax), %edi
	.loc	1 98 23 is_stmt 0               # src/parsing/command_expan.c:98:23
	callq	ft_itoa
	.loc	1 98 21                         # src/parsing/command_expan.c:98:21
	movq	%rax, -40(%rbp)
	.loc	1 99 48 is_stmt 1               # src/parsing/command_expan.c:99:48
	movq	-16(%rbp), %rax
	.loc	1 99 47 is_stmt 0               # src/parsing/command_expan.c:99:47
	movq	(%rax), %rax
	.loc	1 99 56                         # src/parsing/command_expan.c:99:56
	movq	16(%rax), %rdi
	.loc	1 100 6 is_stmt 1               # src/parsing/command_expan.c:100:6
	movq	-48(%rbp), %rax
	.loc	1 100 17 is_stmt 0              # src/parsing/command_expan.c:100:17
	movq	(%rax), %rsi
	.loc	1 100 23                        # src/parsing/command_expan.c:100:23
	movq	-40(%rbp), %rdx
	.loc	1 99 23 is_stmt 1               # src/parsing/command_expan.c:99:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 99 6 is_stmt 0                # src/parsing/command_expan.c:99:6
	movq	-16(%rbp), %rax
	.loc	1 99 5                          # src/parsing/command_expan.c:99:5
	movq	(%rax), %rax
	.loc	1 99 21                         # src/parsing/command_expan.c:99:21
	movq	%rcx, 16(%rax)
	.loc	1 101 9 is_stmt 1               # src/parsing/command_expan.c:101:9
	movq	-40(%rbp), %rdi
	.loc	1 101 4 is_stmt 0               # src/parsing/command_expan.c:101:4
	callq	free
	.loc	1 102 3 is_stmt 1               # src/parsing/command_expan.c:102:3
	jmp	.LBB4_7
.Ltmp40:
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 104 48                        # src/parsing/command_expan.c:104:48
	movq	-16(%rbp), %rax
	.loc	1 104 47 is_stmt 0              # src/parsing/command_expan.c:104:47
	movq	(%rax), %rax
	.loc	1 104 56                        # src/parsing/command_expan.c:104:56
	movq	16(%rax), %rdi
	.loc	1 105 6 is_stmt 1               # src/parsing/command_expan.c:105:6
	movq	-48(%rbp), %rax
	.loc	1 105 17 is_stmt 0              # src/parsing/command_expan.c:105:17
	movq	(%rax), %rsi
	.loc	1 104 23 is_stmt 1              # src/parsing/command_expan.c:104:23
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 104 6 is_stmt 0               # src/parsing/command_expan.c:104:6
	movq	-16(%rbp), %rax
	.loc	1 104 5                         # src/parsing/command_expan.c:104:5
	movq	(%rax), %rax
	.loc	1 104 21                        # src/parsing/command_expan.c:104:21
	movq	%rcx, 16(%rax)
.Ltmp41:
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 0 21                          # src/parsing/command_expan.c:0:21
	jmp	.LBB4_8
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 106 15 is_stmt 1              # src/parsing/command_expan.c:106:15
	movq	-48(%rbp), %rax
	.loc	1 106 26 is_stmt 0              # src/parsing/command_expan.c:106:26
	movq	8(%rax), %rax
	.loc	1 106 13                        # src/parsing/command_expan.c:106:13
	movq	%rax, -48(%rbp)
.Ltmp42:
	.loc	1 87 2 is_stmt 1                # src/parsing/command_expan.c:87:2
	jmp	.LBB4_1
.LBB4_9:
	.loc	1 108 1                         # src/parsing/command_expan.c:108:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp43:
.Lfunc_end4:
	.size	manage_expansion, .Lfunc_end4-manage_expansion
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	2 "/usr/include" "dirent.h"
	.file	3 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/../../include/minishell.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc04 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	455                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x52:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x60:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x6f:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x92:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa1:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xb6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xc4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	481                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xee:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xfd:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	462                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x116:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x124:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x132:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x140:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x14e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x15d:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x172:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	486                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x180:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string184                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	3081                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x18e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	720                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x19c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1aa:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string185                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1b8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	1565                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1c7:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1ce:0x5 DW_TAG_pointer_type
	.long	467                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1d3:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1da:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1e1:0x5 DW_TAG_pointer_type
	.long	462                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1e6:0x5 DW_TAG_pointer_type
	.long	491                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1eb:0xb DW_TAG_typedef
	.long	502                             # DW_AT_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1f6:0xbe DW_TAG_structure_type
	.long	.Linfo_string182                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1ff:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	692                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x20b:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x217:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x223:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x22f:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x23b:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x247:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	713                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x253:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x25f:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x26b:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x277:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	852                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x283:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1624                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x28f:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1738                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x29b:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2577                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2a7:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2926                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2b4:0x5 DW_TAG_pointer_type
	.long	697                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2b9:0xb DW_TAG_typedef
	.long	708                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2c4:0x5 DW_TAG_structure_type
	.long	.Linfo_string20                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x2c9:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2d0:0x5 DW_TAG_pointer_type
	.long	725                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2d5:0xb DW_TAG_typedef
	.long	736                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2e0:0x2d DW_TAG_structure_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2e8:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2f4:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x300:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	781                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x30d:0x5 DW_TAG_pointer_type
	.long	736                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x312:0x5 DW_TAG_pointer_type
	.long	791                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x317:0xb DW_TAG_typedef
	.long	802                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x322:0x2d DW_TAG_structure_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x336:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x342:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	847                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x34f:0x5 DW_TAG_pointer_type
	.long	802                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x354:0x5 DW_TAG_pointer_type
	.long	857                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x359:0xb DW_TAG_typedef
	.long	868                             # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x364:0x2d DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x36c:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	913                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x378:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1619                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x384:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1619                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x391:0x5 DW_TAG_pointer_type
	.long	918                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x396:0xb DW_TAG_typedef
	.long	929                             # DW_AT_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3a1:0x51 DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3a9:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3b5:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3c1:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	1010                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3cd:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3d9:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	1015                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3e5:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1015                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3f2:0x5 DW_TAG_pointer_type
	.long	474                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3f7:0x5 DW_TAG_pointer_type
	.long	1020                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3fc:0xc9 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x404:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x410:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x41c:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x428:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x434:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x440:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x44c:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	1221                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x458:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	1275                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x464:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1336                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x470:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x47c:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x488:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1487                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x494:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1565                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a0:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4ac:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1015                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4b8:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1015                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4c5:0x5 DW_TAG_pointer_type
	.long	1226                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4ca:0xb DW_TAG_typedef
	.long	1237                            # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4d5:0x21 DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4dd:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1270                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4f6:0x5 DW_TAG_pointer_type
	.long	1237                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4fb:0x5 DW_TAG_pointer_type
	.long	1280                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x500:0xb DW_TAG_typedef
	.long	1291                            # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x50b:0x2d DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x513:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1010                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x51f:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1010                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x52b:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1010                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x538:0x5 DW_TAG_pointer_type
	.long	1341                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x53d:0xb DW_TAG_typedef
	.long	1352                            # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x548:0x39 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x550:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x55c:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x568:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1409                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x574:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1487                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x581:0x5 DW_TAG_pointer_type
	.long	1414                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x586:0xb DW_TAG_typedef
	.long	1425                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x591:0x39 DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x599:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5a5:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5b1:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5bd:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1482                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5ca:0x5 DW_TAG_pointer_type
	.long	1425                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5cf:0x5 DW_TAG_pointer_type
	.long	1492                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5d4:0xb DW_TAG_typedef
	.long	1503                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5df:0x39 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5e7:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5f3:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ff:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x60b:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1560                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x618:0x5 DW_TAG_pointer_type
	.long	1503                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x61d:0x5 DW_TAG_pointer_type
	.long	1570                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x622:0xb DW_TAG_typedef
	.long	1581                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x62d:0x21 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x635:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x641:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1614                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x64e:0x5 DW_TAG_pointer_type
	.long	1581                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x653:0x5 DW_TAG_pointer_type
	.long	868                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x658:0x5 DW_TAG_pointer_type
	.long	1629                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x65d:0xb DW_TAG_typedef
	.long	1640                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x668:0x5d DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x670:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x67c:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x688:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x694:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6a0:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1565                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6ac:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1733                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6b8:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1733                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6c5:0x5 DW_TAG_pointer_type
	.long	1640                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6ca:0x56 DW_TAG_structure_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6d2:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1758                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6de:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6e2:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1824                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6ee:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1847                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x6fb:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2524                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x707:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x713:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2571                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x720:0xb DW_TAG_typedef
	.long	1835                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x72b:0x5 DW_TAG_pointer_type
	.long	1840                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x730:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x731:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x737:0x5 DW_TAG_pointer_type
	.long	1852                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x73c:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x73d:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x742:0x5 DW_TAG_formal_parameter
	.long	1869                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x747:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x74d:0x5 DW_TAG_pointer_type
	.long	1874                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x752:0xb DW_TAG_typedef
	.long	1885                            # DW_AT_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x75d:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x761:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x76d:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x779:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x785:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x791:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1949                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x79d:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7a1:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2396                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7ad:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1977                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7b9:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7bd:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2415                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7c9:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2426                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7d6:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2018                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7e2:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7e6:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7f2:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7fe:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2444                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x80b:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2071                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x817:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x81b:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2415                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x827:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2426                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x833:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2444                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x840:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2124                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x84c:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x850:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2415                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x85c:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2426                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x868:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x874:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2488                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x880:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2488                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x88d:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2201                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x899:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x89d:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8a9:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2506                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8b5:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2241                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8c1:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8c5:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2257                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8d1:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8d5:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8e1:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8ee:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2513                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8fc:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2312                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x908:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x90c:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2499                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x918:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x925:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2353                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x931:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x935:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x941:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x94d:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2437                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x95c:0xc DW_TAG_array_type
	.long	474                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x961:0x6 DW_TAG_subrange_type
	.long	2408                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x968:0x7 DW_TAG_base_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x96f:0xb DW_TAG_typedef
	.long	474                             # DW_AT_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x97a:0xb DW_TAG_typedef
	.long	2437                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x985:0x7 DW_TAG_base_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x98c:0xb DW_TAG_typedef
	.long	2455                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x997:0x21 DW_TAG_union_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x99f:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9ab:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x9b8:0xb DW_TAG_typedef
	.long	2499                            # DW_AT_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x9c3:0x7 DW_TAG_base_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9ca:0x7 DW_TAG_base_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x9d1:0xb DW_TAG_typedef
	.long	2437                            # DW_AT_type
	.long	.Linfo_string124                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9dc:0xb DW_TAG_typedef
	.long	2535                            # DW_AT_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x9e7:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9eb:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2552                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x9f8:0xc DW_TAG_array_type
	.long	2564                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x9fd:0x6 DW_TAG_subrange_type
	.long	2408                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa04:0x7 DW_TAG_base_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xa0b:0x5 DW_TAG_pointer_type
	.long	2576                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa10:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0xa11:0x5 DW_TAG_pointer_type
	.long	2582                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xa16:0xbd DW_TAG_structure_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa1e:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2771                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa2a:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2782                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa36:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2793                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa42:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2804                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa4e:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2426                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa5a:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2815                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa66:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa72:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2771                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa7e:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2826                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa8a:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2837                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa96:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2848                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaa2:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2859                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaae:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2859                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaba:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2859                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xac6:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2914                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xad3:0xb DW_TAG_typedef
	.long	2564                            # DW_AT_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xade:0xb DW_TAG_typedef
	.long	2564                            # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xae9:0xb DW_TAG_typedef
	.long	2564                            # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xaf4:0xb DW_TAG_typedef
	.long	2437                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xaff:0xb DW_TAG_typedef
	.long	2437                            # DW_AT_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb0a:0xb DW_TAG_typedef
	.long	2499                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb15:0xb DW_TAG_typedef
	.long	2499                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb20:0xb DW_TAG_typedef
	.long	2499                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb2b:0x21 DW_TAG_structure_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb33:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2892                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb3f:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2903                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb4c:0xb DW_TAG_typedef
	.long	2499                            # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb57:0xb DW_TAG_typedef
	.long	2499                            # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xb62:0xc DW_TAG_array_type
	.long	2903                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb67:0x6 DW_TAG_subrange_type
	.long	2408                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb6e:0x5 DW_TAG_pointer_type
	.long	2931                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xb73:0x69 DW_TAG_structure_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb7b:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	3036                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb87:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	3036                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb93:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	3036                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb9f:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	3036                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbab:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3047                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbb7:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	3058                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbc3:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	3070                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbcf:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3070                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xbdc:0xb DW_TAG_typedef
	.long	2437                            # DW_AT_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbe7:0xb DW_TAG_typedef
	.long	713                             # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xbf2:0xc DW_TAG_array_type
	.long	3047                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xbf7:0x6 DW_TAG_subrange_type
	.long	2408                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xbfe:0xb DW_TAG_typedef
	.long	2437                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc09:0x5 DW_TAG_pointer_type
	.long	1624                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_expan.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=66
.Linfo_string3:
	.asciz	"is_expansion_name"             # string offset=103
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=121
.Linfo_string5:
	.asciz	"manage_empty_expansion"        # string offset=127
.Linfo_string6:
	.asciz	"remove_expansion_name"         # string offset=150
.Linfo_string7:
	.asciz	"expand_lexeme_variable"        # string offset=172
.Linfo_string8:
	.asciz	"char"                          # string offset=195
.Linfo_string9:
	.asciz	"manage_expansion"              # string offset=200
.Linfo_string10:
	.asciz	"lexeme"                        # string offset=217
.Linfo_string11:
	.asciz	"name"                          # string offset=224
.Linfo_string12:
	.asciz	"j"                             # string offset=229
.Linfo_string13:
	.asciz	"int"                           # string offset=231
.Linfo_string14:
	.asciz	"lexeme_expanded"               # string offset=235
.Linfo_string15:
	.asciz	"i"                             # string offset=251
.Linfo_string16:
	.asciz	"value"                         # string offset=253
.Linfo_string17:
	.asciz	"length"                        # string offset=259
.Linfo_string18:
	.asciz	"minishell"                     # string offset=266
.Linfo_string19:
	.asciz	"dir"                           # string offset=276
.Linfo_string20:
	.asciz	"__dirstream"                   # string offset=280
.Linfo_string21:
	.asciz	"DIR"                           # string offset=292
.Linfo_string22:
	.asciz	"state"                         # string offset=296
.Linfo_string23:
	.asciz	"input"                         # string offset=302
.Linfo_string24:
	.asciz	"path"                          # string offset=308
.Linfo_string25:
	.asciz	"prompt"                        # string offset=313
.Linfo_string26:
	.asciz	"operator_nbr"                  # string offset=320
.Linfo_string27:
	.asciz	"exit_status"                   # string offset=333
.Linfo_string28:
	.asciz	"unsigned char"                 # string offset=345
.Linfo_string29:
	.asciz	"env_array"                     # string offset=359
.Linfo_string30:
	.asciz	"env"                           # string offset=369
.Linfo_string31:
	.asciz	"next"                          # string offset=373
.Linfo_string32:
	.asciz	"s_env"                         # string offset=378
.Linfo_string33:
	.asciz	"t_env"                         # string offset=384
.Linfo_string34:
	.asciz	"local"                         # string offset=390
.Linfo_string35:
	.asciz	"s_var"                         # string offset=396
.Linfo_string36:
	.asciz	"t_var"                         # string offset=402
.Linfo_string37:
	.asciz	"syntax_tree"                   # string offset=408
.Linfo_string38:
	.asciz	"node"                          # string offset=420
.Linfo_string39:
	.asciz	"id"                            # string offset=425
.Linfo_string40:
	.asciz	"type"                          # string offset=428
.Linfo_string41:
	.asciz	"pipe_fd"                       # string offset=433
.Linfo_string42:
	.asciz	"left"                          # string offset=441
.Linfo_string43:
	.asciz	"pid"                           # string offset=446
.Linfo_string44:
	.asciz	"wstatus"                       # string offset=450
.Linfo_string45:
	.asciz	"arg"                           # string offset=458
.Linfo_string46:
	.asciz	"s_arg"                         # string offset=462
.Linfo_string47:
	.asciz	"t_arg"                         # string offset=468
.Linfo_string48:
	.asciz	"pipe"                          # string offset=474
.Linfo_string49:
	.asciz	"to_close"                      # string offset=479
.Linfo_string50:
	.asciz	"write"                         # string offset=488
.Linfo_string51:
	.asciz	"read"                          # string offset=494
.Linfo_string52:
	.asciz	"s_pipe"                        # string offset=499
.Linfo_string53:
	.asciz	"t_pipe"                        # string offset=506
.Linfo_string54:
	.asciz	"redir"                         # string offset=513
.Linfo_string55:
	.asciz	"in_fd"                         # string offset=519
.Linfo_string56:
	.asciz	"out_fd"                        # string offset=525
.Linfo_string57:
	.asciz	"infile"                        # string offset=532
.Linfo_string58:
	.asciz	"fd"                            # string offset=539
.Linfo_string59:
	.asciz	"s_infile"                      # string offset=542
.Linfo_string60:
	.asciz	"t_infile"                      # string offset=551
.Linfo_string61:
	.asciz	"outfile"                       # string offset=560
.Linfo_string62:
	.asciz	"s_outfile"                     # string offset=568
.Linfo_string63:
	.asciz	"t_outfile"                     # string offset=578
.Linfo_string64:
	.asciz	"s_redir"                       # string offset=588
.Linfo_string65:
	.asciz	"t_redir"                       # string offset=596
.Linfo_string66:
	.asciz	"assign"                        # string offset=604
.Linfo_string67:
	.asciz	"expansion"                     # string offset=611
.Linfo_string68:
	.asciz	"s_expan"                       # string offset=621
.Linfo_string69:
	.asciz	"t_expan"                       # string offset=629
.Linfo_string70:
	.asciz	"arg_array"                     # string offset=637
.Linfo_string71:
	.asciz	"prev"                          # string offset=647
.Linfo_string72:
	.asciz	"s_cmd"                         # string offset=652
.Linfo_string73:
	.asciz	"right"                         # string offset=658
.Linfo_string74:
	.asciz	"s_ast_node"                    # string offset=664
.Linfo_string75:
	.asciz	"t_ast_node"                    # string offset=675
.Linfo_string76:
	.asciz	"s_ast"                         # string offset=686
.Linfo_string77:
	.asciz	"t_ast"                         # string offset=692
.Linfo_string78:
	.asciz	"token_stream"                  # string offset=698
.Linfo_string79:
	.asciz	"quote_nbr"                     # string offset=711
.Linfo_string80:
	.asciz	"s_token"                       # string offset=721
.Linfo_string81:
	.asciz	"t_token"                       # string offset=729
.Linfo_string82:
	.asciz	"sighandler"                    # string offset=737
.Linfo_string83:
	.asciz	"__sigaction_handler"           # string offset=748
.Linfo_string84:
	.asciz	"sa_handler"                    # string offset=768
.Linfo_string85:
	.asciz	"__sighandler_t"                # string offset=779
.Linfo_string86:
	.asciz	"sa_sigaction"                  # string offset=794
.Linfo_string87:
	.asciz	"si_signo"                      # string offset=807
.Linfo_string88:
	.asciz	"si_errno"                      # string offset=816
.Linfo_string89:
	.asciz	"si_code"                       # string offset=825
.Linfo_string90:
	.asciz	"__pad0"                        # string offset=833
.Linfo_string91:
	.asciz	"_sifields"                     # string offset=840
.Linfo_string92:
	.asciz	"_pad"                          # string offset=850
.Linfo_string93:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=855
.Linfo_string94:
	.asciz	"_kill"                         # string offset=875
.Linfo_string95:
	.asciz	"si_pid"                        # string offset=881
.Linfo_string96:
	.asciz	"__pid_t"                       # string offset=888
.Linfo_string97:
	.asciz	"si_uid"                        # string offset=896
.Linfo_string98:
	.asciz	"unsigned int"                  # string offset=903
.Linfo_string99:
	.asciz	"__uid_t"                       # string offset=916
.Linfo_string100:
	.asciz	"_timer"                        # string offset=924
.Linfo_string101:
	.asciz	"si_tid"                        # string offset=931
.Linfo_string102:
	.asciz	"si_overrun"                    # string offset=938
.Linfo_string103:
	.asciz	"si_sigval"                     # string offset=949
.Linfo_string104:
	.asciz	"sival_int"                     # string offset=959
.Linfo_string105:
	.asciz	"sival_ptr"                     # string offset=969
.Linfo_string106:
	.asciz	"sigval"                        # string offset=979
.Linfo_string107:
	.asciz	"__sigval_t"                    # string offset=986
.Linfo_string108:
	.asciz	"_rt"                           # string offset=997
.Linfo_string109:
	.asciz	"_sigchld"                      # string offset=1001
.Linfo_string110:
	.asciz	"si_status"                     # string offset=1010
.Linfo_string111:
	.asciz	"si_utime"                      # string offset=1020
.Linfo_string112:
	.asciz	"long int"                      # string offset=1029
.Linfo_string113:
	.asciz	"__clock_t"                     # string offset=1038
.Linfo_string114:
	.asciz	"si_stime"                      # string offset=1048
.Linfo_string115:
	.asciz	"_sigfault"                     # string offset=1057
.Linfo_string116:
	.asciz	"si_addr"                       # string offset=1067
.Linfo_string117:
	.asciz	"si_addr_lsb"                   # string offset=1075
.Linfo_string118:
	.asciz	"short"                         # string offset=1087
.Linfo_string119:
	.asciz	"_bounds"                       # string offset=1093
.Linfo_string120:
	.asciz	"_addr_bnd"                     # string offset=1101
.Linfo_string121:
	.asciz	"_lower"                        # string offset=1111
.Linfo_string122:
	.asciz	"_upper"                        # string offset=1118
.Linfo_string123:
	.asciz	"_pkey"                         # string offset=1125
.Linfo_string124:
	.asciz	"__uint32_t"                    # string offset=1131
.Linfo_string125:
	.asciz	"_sigpoll"                      # string offset=1142
.Linfo_string126:
	.asciz	"si_band"                       # string offset=1151
.Linfo_string127:
	.asciz	"si_fd"                         # string offset=1159
.Linfo_string128:
	.asciz	"_sigsys"                       # string offset=1165
.Linfo_string129:
	.asciz	"_call_addr"                    # string offset=1173
.Linfo_string130:
	.asciz	"_syscall"                      # string offset=1184
.Linfo_string131:
	.asciz	"_arch"                         # string offset=1193
.Linfo_string132:
	.asciz	"siginfo_t"                     # string offset=1199
.Linfo_string133:
	.asciz	"sa_mask"                       # string offset=1209
.Linfo_string134:
	.asciz	"__val"                         # string offset=1217
.Linfo_string135:
	.asciz	"long unsigned int"             # string offset=1223
.Linfo_string136:
	.asciz	"__sigset_t"                    # string offset=1241
.Linfo_string137:
	.asciz	"sa_flags"                      # string offset=1252
.Linfo_string138:
	.asciz	"sa_restorer"                   # string offset=1261
.Linfo_string139:
	.asciz	"sigaction"                     # string offset=1273
.Linfo_string140:
	.asciz	"statbuf"                       # string offset=1283
.Linfo_string141:
	.asciz	"st_dev"                        # string offset=1291
.Linfo_string142:
	.asciz	"__dev_t"                       # string offset=1298
.Linfo_string143:
	.asciz	"st_ino"                        # string offset=1306
.Linfo_string144:
	.asciz	"__ino_t"                       # string offset=1313
.Linfo_string145:
	.asciz	"st_nlink"                      # string offset=1321
.Linfo_string146:
	.asciz	"__nlink_t"                     # string offset=1330
.Linfo_string147:
	.asciz	"st_mode"                       # string offset=1340
.Linfo_string148:
	.asciz	"__mode_t"                      # string offset=1348
.Linfo_string149:
	.asciz	"st_uid"                        # string offset=1357
.Linfo_string150:
	.asciz	"st_gid"                        # string offset=1364
.Linfo_string151:
	.asciz	"__gid_t"                       # string offset=1371
.Linfo_string152:
	.asciz	"st_rdev"                       # string offset=1379
.Linfo_string153:
	.asciz	"st_size"                       # string offset=1387
.Linfo_string154:
	.asciz	"__off_t"                       # string offset=1395
.Linfo_string155:
	.asciz	"st_blksize"                    # string offset=1403
.Linfo_string156:
	.asciz	"__blksize_t"                   # string offset=1414
.Linfo_string157:
	.asciz	"st_blocks"                     # string offset=1426
.Linfo_string158:
	.asciz	"__blkcnt_t"                    # string offset=1436
.Linfo_string159:
	.asciz	"st_atim"                       # string offset=1447
.Linfo_string160:
	.asciz	"tv_sec"                        # string offset=1455
.Linfo_string161:
	.asciz	"__time_t"                      # string offset=1462
.Linfo_string162:
	.asciz	"tv_nsec"                       # string offset=1471
.Linfo_string163:
	.asciz	"__syscall_slong_t"             # string offset=1479
.Linfo_string164:
	.asciz	"timespec"                      # string offset=1497
.Linfo_string165:
	.asciz	"st_mtim"                       # string offset=1506
.Linfo_string166:
	.asciz	"st_ctim"                       # string offset=1514
.Linfo_string167:
	.asciz	"__glibc_reserved"              # string offset=1522
.Linfo_string168:
	.asciz	"stat"                          # string offset=1539
.Linfo_string169:
	.asciz	"term"                          # string offset=1544
.Linfo_string170:
	.asciz	"c_iflag"                       # string offset=1549
.Linfo_string171:
	.asciz	"tcflag_t"                      # string offset=1557
.Linfo_string172:
	.asciz	"c_oflag"                       # string offset=1566
.Linfo_string173:
	.asciz	"c_cflag"                       # string offset=1574
.Linfo_string174:
	.asciz	"c_lflag"                       # string offset=1582
.Linfo_string175:
	.asciz	"c_line"                        # string offset=1590
.Linfo_string176:
	.asciz	"cc_t"                          # string offset=1597
.Linfo_string177:
	.asciz	"c_cc"                          # string offset=1602
.Linfo_string178:
	.asciz	"c_ispeed"                      # string offset=1607
.Linfo_string179:
	.asciz	"speed_t"                       # string offset=1616
.Linfo_string180:
	.asciz	"c_ospeed"                      # string offset=1624
.Linfo_string181:
	.asciz	"termios"                       # string offset=1633
.Linfo_string182:
	.asciz	"s_minishell"                   # string offset=1641
.Linfo_string183:
	.asciz	"t_minishell"                   # string offset=1653
.Linfo_string184:
	.asciz	"token"                         # string offset=1665
.Linfo_string185:
	.asciz	"last_exit_status"              # string offset=1671
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_expansion_name
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strlen
	.addrsig_sym manage_empty_expansion
	.addrsig_sym free
	.addrsig_sym remove_expansion_name
	.addrsig_sym expand_lexeme_variable
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym replace_expansion_name_by_value
	.addrsig_sym get_expansion_value
	.addrsig_sym is_expansion_stored_in_env
	.addrsig_sym is_exit_status
	.addrsig_sym ft_itoa
	.section	.debug_line,"",@progbits
.Lline_table_start0:

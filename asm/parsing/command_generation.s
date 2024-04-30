	.text
	.file	"command_generation.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/../../include/minishell.h"
	.globl	init_command_attributes         # -- Begin function init_command_attributes
	.p2align	4, 0x90
	.type	init_command_attributes,@function
init_command_attributes:                # @init_command_attributes
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/command_generation.c"
	.loc	2 16 0                          # src/parsing/command_generation.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp0:
	.loc	2 17 15 prologue_end            # src/parsing/command_generation.c:17:15
	movl	-12(%rbp), %ecx
	.loc	2 17 4 is_stmt 0                # src/parsing/command_generation.c:17:4
	movq	-8(%rbp), %rax
	.loc	2 17 3                          # src/parsing/command_generation.c:17:3
	movq	(%rax), %rax
	.loc	2 17 13                         # src/parsing/command_generation.c:17:13
	movl	%ecx, (%rax)
	.loc	2 18 4 is_stmt 1                # src/parsing/command_generation.c:18:4
	movq	-8(%rbp), %rax
	.loc	2 18 3 is_stmt 0                # src/parsing/command_generation.c:18:3
	movq	(%rax), %rax
	.loc	2 18 15                         # src/parsing/command_generation.c:18:15
	movl	$0, 8(%rax)
	.loc	2 19 4 is_stmt 1                # src/parsing/command_generation.c:19:4
	movq	-8(%rbp), %rax
	.loc	2 19 3 is_stmt 0                # src/parsing/command_generation.c:19:3
	movq	(%rax), %rax
	.loc	2 19 14                         # src/parsing/command_generation.c:19:14
	movl	$-1, 4(%rax)
	.loc	2 20 4 is_stmt 1                # src/parsing/command_generation.c:20:4
	movq	-8(%rbp), %rax
	.loc	2 20 3 is_stmt 0                # src/parsing/command_generation.c:20:3
	movq	(%rax), %rax
	.loc	2 20 14                         # src/parsing/command_generation.c:20:14
	movq	$0, 32(%rax)
	.loc	2 21 4 is_stmt 1                # src/parsing/command_generation.c:21:4
	movq	-8(%rbp), %rax
	.loc	2 21 3 is_stmt 0                # src/parsing/command_generation.c:21:3
	movq	(%rax), %rax
	.loc	2 21 15                         # src/parsing/command_generation.c:21:15
	movq	$0, 16(%rax)
	.loc	2 22 4 is_stmt 1                # src/parsing/command_generation.c:22:4
	movq	-8(%rbp), %rax
	.loc	2 22 3 is_stmt 0                # src/parsing/command_generation.c:22:3
	movq	(%rax), %rax
	.loc	2 22 15                         # src/parsing/command_generation.c:22:15
	movq	$0, 96(%rax)
	.loc	2 23 4 is_stmt 1                # src/parsing/command_generation.c:23:4
	movq	-8(%rbp), %rax
	.loc	2 23 3 is_stmt 0                # src/parsing/command_generation.c:23:3
	movq	(%rax), %rax
	.loc	2 23 15                         # src/parsing/command_generation.c:23:15
	movq	$0, 104(%rax)
	.loc	2 24 4 is_stmt 1                # src/parsing/command_generation.c:24:4
	movq	-8(%rbp), %rax
	.loc	2 24 3 is_stmt 0                # src/parsing/command_generation.c:24:3
	movq	(%rax), %rax
	.loc	2 24 15                         # src/parsing/command_generation.c:24:15
	movq	$0, 24(%rax)
	.loc	2 25 4 is_stmt 1                # src/parsing/command_generation.c:25:4
	movq	-8(%rbp), %rax
	.loc	2 25 3 is_stmt 0                # src/parsing/command_generation.c:25:3
	movq	(%rax), %rax
	.loc	2 25 15                         # src/parsing/command_generation.c:25:15
	movq	$0, 40(%rax)
	.loc	2 26 4 is_stmt 1                # src/parsing/command_generation.c:26:4
	movq	-8(%rbp), %rax
	.loc	2 26 3 is_stmt 0                # src/parsing/command_generation.c:26:3
	movq	(%rax), %rax
	.loc	2 26 16                         # src/parsing/command_generation.c:26:16
	movq	$0, 48(%rax)
	.loc	2 27 4 is_stmt 1                # src/parsing/command_generation.c:27:4
	movq	-8(%rbp), %rax
	.loc	2 27 3 is_stmt 0                # src/parsing/command_generation.c:27:3
	movq	(%rax), %rax
	.loc	2 27 17                         # src/parsing/command_generation.c:27:17
	movq	$0, 64(%rax)
	.loc	2 28 4 is_stmt 1                # src/parsing/command_generation.c:28:4
	movq	-8(%rbp), %rax
	.loc	2 28 3 is_stmt 0                # src/parsing/command_generation.c:28:3
	movq	(%rax), %rax
	.loc	2 28 17                         # src/parsing/command_generation.c:28:17
	movq	$0, 56(%rax)
	.loc	2 29 4 is_stmt 1                # src/parsing/command_generation.c:29:4
	movq	-8(%rbp), %rax
	.loc	2 29 3 is_stmt 0                # src/parsing/command_generation.c:29:3
	movq	(%rax), %rax
	.loc	2 29 18                         # src/parsing/command_generation.c:29:18
	movq	$0, 72(%rax)
	.loc	2 30 4 is_stmt 1                # src/parsing/command_generation.c:30:4
	movq	-8(%rbp), %rax
	.loc	2 30 3 is_stmt 0                # src/parsing/command_generation.c:30:3
	movq	(%rax), %rax
	.loc	2 30 20                         # src/parsing/command_generation.c:30:20
	movq	$0, 88(%rax)
	.loc	2 31 1 is_stmt 1                # src/parsing/command_generation.c:31:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	init_command_attributes, .Lfunc_end0-init_command_attributes
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_name            # -- Begin function extract_command_name
	.p2align	4, 0x90
	.type	extract_command_name,@function
extract_command_name:                   # @extract_command_name
.Lfunc_begin1:
	.loc	2 34 0                          # src/parsing/command_generation.c:34:0
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
.Ltmp2:
	.loc	2 37 7 prologue_end             # src/parsing/command_generation.c:37:7
	cmpq	$0, -16(%rbp)
	.loc	2 37 11 is_stmt 0               # src/parsing/command_generation.c:37:11
	je	.LBB1_3
# %bb.1:
	.loc	2 37 15                         # src/parsing/command_generation.c:37:15
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	.loc	2 37 26                         # src/parsing/command_generation.c:37:26
	je	.LBB1_3
# %bb.2:
	.loc	2 37 31                         # src/parsing/command_generation.c:37:31
	movq	-8(%rbp), %rax
	.loc	2 37 29                         # src/parsing/command_generation.c:37:29
	cmpq	$0, (%rax)
.Ltmp3:
	.loc	2 37 6                          # src/parsing/command_generation.c:37:6
	je	.LBB1_4
.LBB1_3:
.Ltmp4:
	.loc	2 38 3 is_stmt 1                # src/parsing/command_generation.c:38:3
	jmp	.LBB1_7
.Ltmp5:
.LBB1_4:
	.loc	2 39 21                         # src/parsing/command_generation.c:39:21
	movq	-16(%rbp), %rax
	.loc	2 39 26 is_stmt 0               # src/parsing/command_generation.c:39:26
	movq	(%rax), %rdi
	.loc	2 39 11                         # src/parsing/command_generation.c:39:11
	callq	ft_strlen
                                        # kill: def $eax killed $eax killed $rax
	.loc	2 39 9                          # src/parsing/command_generation.c:39:9
	movl	%eax, -20(%rbp)
	.loc	2 40 23 is_stmt 1               # src/parsing/command_generation.c:40:23
	movl	-20(%rbp), %eax
	.loc	2 40 30 is_stmt 0               # src/parsing/command_generation.c:40:30
	addl	$1, %eax
	.loc	2 40 23                         # src/parsing/command_generation.c:40:23
	movslq	%eax, %rdi
	.loc	2 40 16                         # src/parsing/command_generation.c:40:16
	callq	malloc
	movq	%rax, %rcx
	.loc	2 40 4                          # src/parsing/command_generation.c:40:4
	movq	-8(%rbp), %rax
	.loc	2 40 14                         # src/parsing/command_generation.c:40:14
	movq	%rcx, (%rax)
.Ltmp6:
	.loc	2 41 9 is_stmt 1                # src/parsing/command_generation.c:41:9
	movq	-8(%rbp), %rax
	.loc	2 41 7 is_stmt 0                # src/parsing/command_generation.c:41:7
	cmpq	$0, (%rax)
.Ltmp7:
	.loc	2 41 6                          # src/parsing/command_generation.c:41:6
	jne	.LBB1_6
# %bb.5:
.Ltmp8:
	.loc	2 43 3 is_stmt 1                # src/parsing/command_generation.c:43:3
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 44 3                          # src/parsing/command_generation.c:44:3
	callq	__errno_location
	.loc	2 44 9 is_stmt 0                # src/parsing/command_generation.c:44:9
	movl	$6, (%rax)
	.loc	2 45 3 is_stmt 1                # src/parsing/command_generation.c:45:3
	jmp	.LBB1_7
.Ltmp9:
.LBB1_6:
	.loc	2 47 15                         # src/parsing/command_generation.c:47:15
	movq	-8(%rbp), %rax
	.loc	2 47 14 is_stmt 0               # src/parsing/command_generation.c:47:14
	movq	(%rax), %rdi
	.loc	2 47 26                         # src/parsing/command_generation.c:47:26
	movq	-16(%rbp), %rax
	.loc	2 47 31                         # src/parsing/command_generation.c:47:31
	movq	(%rax), %rsi
	.loc	2 47 38                         # src/parsing/command_generation.c:47:38
	movl	-20(%rbp), %eax
	.loc	2 47 45                         # src/parsing/command_generation.c:47:45
	addl	$1, %eax
	.loc	2 47 38                         # src/parsing/command_generation.c:47:38
	movslq	%eax, %rdx
	.loc	2 47 2                          # src/parsing/command_generation.c:47:2
	callq	ft_strlcpy
.LBB1_7:
	.loc	2 48 1 is_stmt 1                # src/parsing/command_generation.c:48:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end1:
	.size	extract_command_name, .Lfunc_end1-extract_command_name
	.cfi_endproc
                                        # -- End function
	.globl	extract_command                 # -- Begin function extract_command
	.p2align	4, 0x90
	.type	extract_command,@function
extract_command:                        # @extract_command
.Lfunc_begin2:
	.loc	2 51 0                          # src/parsing/command_generation.c:51:0
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
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp11:
	.loc	2 52 10 prologue_end            # src/parsing/command_generation.c:52:10
	movq	-24(%rbp), %rcx
	.loc	2 52 9 is_stmt 0                # src/parsing/command_generation.c:52:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 52 16                         # src/parsing/command_generation.c:52:16
	je	.LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 52 21                         # src/parsing/command_generation.c:52:21
	movq	-24(%rbp), %rax
	.loc	2 52 20                         # src/parsing/command_generation.c:52:20
	movq	(%rax), %rcx
	.loc	2 52 34                         # src/parsing/command_generation.c:52:34
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$18, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 53 3 is_stmt 1                # src/parsing/command_generation.c:53:3
	je	.LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 53 6 is_stmt 0                # src/parsing/command_generation.c:53:6
	callq	__errno_location
	movq	%rax, %rcx
	.loc	2 53 12                         # src/parsing/command_generation.c:53:12
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 53 17                         # src/parsing/command_generation.c:53:17
	jne	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 53 40                         # src/parsing/command_generation.c:53:40
	movq	-24(%rbp), %rax
	.loc	2 53 39                         # src/parsing/command_generation.c:53:39
	movq	(%rax), %rdi
	.loc	2 53 20                         # src/parsing/command_generation.c:53:20
	callq	is_operator_token
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 53 48                         # src/parsing/command_generation.c:53:48
	cmpl	$0, %eax
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 0 48                          # src/parsing/command_generation.c:0:48
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 52 2 is_stmt 1                # src/parsing/command_generation.c:52:2
	testb	$1, %al
	jne	.LBB2_6
	jmp	.LBB2_13
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp12:
	.loc	2 55 24                         # src/parsing/command_generation.c:55:24
	movq	-24(%rbp), %rax
	.loc	2 55 23 is_stmt 0               # src/parsing/command_generation.c:55:23
	movq	(%rax), %rax
	.loc	2 55 32                         # src/parsing/command_generation.c:55:32
	movl	(%rax), %edi
	.loc	2 55 7                          # src/parsing/command_generation.c:55:7
	callq	is_redirection
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 55 38                         # src/parsing/command_generation.c:55:38
	cmpl	$1, %eax
.Ltmp13:
	.loc	2 55 7                          # src/parsing/command_generation.c:55:7
	jne	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp14:
	.loc	2 56 22 is_stmt 1               # src/parsing/command_generation.c:56:22
	movq	-8(%rbp), %rdi
	.loc	2 56 34 is_stmt 0               # src/parsing/command_generation.c:56:34
	movq	-24(%rbp), %rax
	.loc	2 56 33                         # src/parsing/command_generation.c:56:33
	movq	(%rax), %rsi
	.loc	2 56 44                         # src/parsing/command_generation.c:56:44
	movq	-16(%rbp), %rax
	.loc	2 56 43                         # src/parsing/command_generation.c:56:43
	movq	(%rax), %rdx
	.loc	2 56 50                         # src/parsing/command_generation.c:56:50
	addq	$48, %rdx
	.loc	2 56 4                          # src/parsing/command_generation.c:56:4
	callq	get_command_redir
	jmp	.LBB2_12
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp15:
	.loc	2 57 14 is_stmt 1               # src/parsing/command_generation.c:57:14
	movq	-24(%rbp), %rax
	.loc	2 57 13 is_stmt 0               # src/parsing/command_generation.c:57:13
	movq	(%rax), %rax
	.loc	2 57 27                         # src/parsing/command_generation.c:57:27
	cmpl	$17, (%rax)
.Ltmp16:
	.loc	2 57 12                         # src/parsing/command_generation.c:57:12
	jne	.LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp17:
	.loc	2 58 24 is_stmt 1               # src/parsing/command_generation.c:58:24
	movq	-24(%rbp), %rax
	.loc	2 58 23 is_stmt 0               # src/parsing/command_generation.c:58:23
	movq	(%rax), %rdi
	.loc	2 58 34                         # src/parsing/command_generation.c:58:34
	movq	-16(%rbp), %rax
	.loc	2 58 33                         # src/parsing/command_generation.c:58:33
	movq	(%rax), %rsi
	.loc	2 58 40                         # src/parsing/command_generation.c:58:40
	addq	$64, %rsi
	.loc	2 58 4                          # src/parsing/command_generation.c:58:4
	callq	get_command_assign
	jmp	.LBB2_11
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp18:
	.loc	2 61 20 is_stmt 1               # src/parsing/command_generation.c:61:20
	movq	-8(%rbp), %rdi
	.loc	2 61 32 is_stmt 0               # src/parsing/command_generation.c:61:32
	movq	-24(%rbp), %rax
	.loc	2 61 31                         # src/parsing/command_generation.c:61:31
	movq	(%rax), %rsi
	.loc	2 61 42                         # src/parsing/command_generation.c:61:42
	movq	-16(%rbp), %rax
	.loc	2 61 41                         # src/parsing/command_generation.c:61:41
	movq	(%rax), %rdx
	.loc	2 61 48                         # src/parsing/command_generation.c:61:48
	addq	$32, %rdx
	.loc	2 61 53                         # src/parsing/command_generation.c:61:53
	movq	-8(%rbp), %rax
	.loc	2 61 64                         # src/parsing/command_generation.c:61:64
	movq	56(%rax), %rcx
	.loc	2 61 4                          # src/parsing/command_generation.c:61:4
	callq	get_command_arg
	.loc	2 62 28 is_stmt 1               # src/parsing/command_generation.c:62:28
	movq	-16(%rbp), %rax
	.loc	2 62 27 is_stmt 0               # src/parsing/command_generation.c:62:27
	movq	(%rax), %rdi
	.loc	2 62 34                         # src/parsing/command_generation.c:62:34
	addq	$16, %rdi
	.loc	2 62 42                         # src/parsing/command_generation.c:62:42
	movq	-16(%rbp), %rax
	.loc	2 62 41                         # src/parsing/command_generation.c:62:41
	movq	(%rax), %rax
	.loc	2 62 48                         # src/parsing/command_generation.c:62:48
	movq	32(%rax), %rsi
	.loc	2 62 4                          # src/parsing/command_generation.c:62:4
	callq	extract_command_name
.Ltmp19:
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	.loc	2 0 4                           # src/parsing/command_generation.c:0:4
	jmp	.LBB2_12
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	.loc	2 64 14 is_stmt 1               # src/parsing/command_generation.c:64:14
	movq	-24(%rbp), %rax
	.loc	2 64 13 is_stmt 0               # src/parsing/command_generation.c:64:13
	movq	(%rax), %rax
	.loc	2 64 22                         # src/parsing/command_generation.c:64:22
	movq	40(%rax), %rcx
	.loc	2 64 4                          # src/parsing/command_generation.c:64:4
	movq	-24(%rbp), %rax
	.loc	2 64 10                         # src/parsing/command_generation.c:64:10
	movq	%rcx, (%rax)
.Ltmp20:
	.loc	2 52 2 is_stmt 1                # src/parsing/command_generation.c:52:2
	jmp	.LBB2_1
.LBB2_13:
.Ltmp21:
	.loc	2 66 8                          # src/parsing/command_generation.c:66:8
	movq	-16(%rbp), %rax
	.loc	2 66 7 is_stmt 0                # src/parsing/command_generation.c:66:7
	movq	(%rax), %rax
	.loc	2 66 6                          # src/parsing/command_generation.c:66:6
	cmpq	$0, 32(%rax)
	.loc	2 66 18                         # src/parsing/command_generation.c:66:18
	je	.LBB2_16
# %bb.14:
	.loc	2 66 21                         # src/parsing/command_generation.c:66:21
	callq	__errno_location
	.loc	2 66 27                         # src/parsing/command_generation.c:66:27
	cmpl	$0, (%rax)
.Ltmp22:
	.loc	2 66 6                          # src/parsing/command_generation.c:66:6
	jne	.LBB2_16
# %bb.15:
.Ltmp23:
	.loc	2 68 35 is_stmt 1               # src/parsing/command_generation.c:68:35
	movq	-8(%rbp), %rax
	.loc	2 68 46 is_stmt 0               # src/parsing/command_generation.c:68:46
	movq	24(%rax), %rdi
	.loc	2 68 54                         # src/parsing/command_generation.c:68:54
	movq	-16(%rbp), %rax
	.loc	2 68 53                         # src/parsing/command_generation.c:68:53
	movq	(%rax), %rax
	.loc	2 68 60                         # src/parsing/command_generation.c:68:60
	movq	16(%rax), %rsi
	.loc	2 68 18                         # src/parsing/command_generation.c:68:18
	callq	get_command_path
	movq	%rax, %rcx
	.loc	2 68 5                          # src/parsing/command_generation.c:68:5
	movq	-16(%rbp), %rax
	.loc	2 68 4                          # src/parsing/command_generation.c:68:4
	movq	(%rax), %rax
	.loc	2 68 16                         # src/parsing/command_generation.c:68:16
	movq	%rcx, 24(%rax)
	.loc	2 69 47 is_stmt 1               # src/parsing/command_generation.c:69:47
	movq	-16(%rbp), %rax
	.loc	2 69 46 is_stmt 0               # src/parsing/command_generation.c:69:46
	movq	(%rax), %rax
	.loc	2 69 53                         # src/parsing/command_generation.c:69:53
	movq	32(%rax), %rdi
	.loc	2 69 23                         # src/parsing/command_generation.c:69:23
	callq	get_command_arg_array
	movq	%rax, %rcx
	.loc	2 69 5                          # src/parsing/command_generation.c:69:5
	movq	-16(%rbp), %rax
	.loc	2 69 4                          # src/parsing/command_generation.c:69:4
	movq	(%rax), %rax
	.loc	2 69 21                         # src/parsing/command_generation.c:69:21
	movq	%rcx, 88(%rax)
.Ltmp24:
.LBB2_16:
	.loc	2 71 1 is_stmt 1                # src/parsing/command_generation.c:71:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end2:
	.size	extract_command, .Lfunc_end2-extract_command
	.cfi_endproc
                                        # -- End function
	.globl	get_command_type                # -- Begin function get_command_type
	.p2align	4, 0x90
	.type	get_command_type,@function
get_command_type:                       # @get_command_type
.Lfunc_begin3:
	.loc	2 74 0                          # src/parsing/command_generation.c:74:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp26:
	.loc	2 75 8 prologue_end             # src/parsing/command_generation.c:75:8
	movq	-8(%rbp), %rax
	.loc	2 75 7 is_stmt 0                # src/parsing/command_generation.c:75:7
	movq	(%rax), %rax
	.loc	2 75 6                          # src/parsing/command_generation.c:75:6
	cmpq	$0, 64(%rax)
	.loc	2 75 21                         # src/parsing/command_generation.c:75:21
	je	.LBB3_3
# %bb.1:
	.loc	2 75 27                         # src/parsing/command_generation.c:75:27
	movq	-8(%rbp), %rax
	.loc	2 75 26                         # src/parsing/command_generation.c:75:26
	movq	(%rax), %rax
	.loc	2 75 25                         # src/parsing/command_generation.c:75:25
	cmpq	$0, 32(%rax)
.Ltmp27:
	.loc	2 75 6                          # src/parsing/command_generation.c:75:6
	jne	.LBB3_3
# %bb.2:
.Ltmp28:
	.loc	2 76 5 is_stmt 1                # src/parsing/command_generation.c:76:5
	movq	-8(%rbp), %rax
	.loc	2 76 4 is_stmt 0                # src/parsing/command_generation.c:76:4
	movq	(%rax), %rax
	.loc	2 76 16                         # src/parsing/command_generation.c:76:16
	movl	$3, 8(%rax)
	.loc	2 76 3                          # src/parsing/command_generation.c:76:3
	jmp	.LBB3_7
.LBB3_3:
.Ltmp29:
	.loc	2 77 24 is_stmt 1               # src/parsing/command_generation.c:77:24
	movq	-8(%rbp), %rax
	.loc	2 77 23 is_stmt 0               # src/parsing/command_generation.c:77:23
	movq	(%rax), %rax
	.loc	2 77 30                         # src/parsing/command_generation.c:77:30
	movq	16(%rax), %rdi
	.loc	2 77 11                         # src/parsing/command_generation.c:77:11
	callq	is_builtin
.Ltmp30:
	.loc	2 77 11                         # src/parsing/command_generation.c:77:11
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_5
.LBB3_4:
.Ltmp31:
	.loc	2 78 5 is_stmt 1                # src/parsing/command_generation.c:78:5
	movq	-8(%rbp), %rax
	.loc	2 78 4 is_stmt 0                # src/parsing/command_generation.c:78:4
	movq	(%rax), %rax
	.loc	2 78 16                         # src/parsing/command_generation.c:78:16
	movl	$2, 8(%rax)
	.loc	2 78 3                          # src/parsing/command_generation.c:78:3
	jmp	.LBB3_6
.LBB3_5:
	.loc	2 80 5 is_stmt 1                # src/parsing/command_generation.c:80:5
	movq	-8(%rbp), %rax
	.loc	2 80 4 is_stmt 0                # src/parsing/command_generation.c:80:4
	movq	(%rax), %rax
	.loc	2 80 16                         # src/parsing/command_generation.c:80:16
	movl	$1, 8(%rax)
.Ltmp32:
.LBB3_6:
	.loc	2 0 16                          # src/parsing/command_generation.c:0:16
	jmp	.LBB3_7
.LBB3_7:
	.loc	2 81 1 is_stmt 1                # src/parsing/command_generation.c:81:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp33:
.Lfunc_end3:
	.size	get_command_type, .Lfunc_end3-get_command_type
	.cfi_endproc
                                        # -- End function
	.globl	get_command                     # -- Begin function get_command
	.p2align	4, 0x90
	.type	get_command,@function
get_command:                            # @get_command
.Lfunc_begin4:
	.loc	2 84 0                          # src/parsing/command_generation.c:84:0
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
.Ltmp34:
	.loc	2 87 8 prologue_end             # src/parsing/command_generation.c:87:8
	movl	$112, %edi
	callq	malloc
	.loc	2 87 6 is_stmt 0                # src/parsing/command_generation.c:87:6
	movq	%rax, -40(%rbp)
.Ltmp35:
	.loc	2 88 7 is_stmt 1                # src/parsing/command_generation.c:88:7
	cmpq	$0, -40(%rbp)
.Ltmp36:
	.loc	2 88 6 is_stmt 0                # src/parsing/command_generation.c:88:6
	jne	.LBB4_2
# %bb.1:
.Ltmp37:
	.loc	2 89 11 is_stmt 1               # src/parsing/command_generation.c:89:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 89 3 is_stmt 0                # src/parsing/command_generation.c:89:3
	movq	$0, -8(%rbp)
	jmp	.LBB4_3
.Ltmp38:
.LBB4_2:
	.loc	2 90 32 is_stmt 1               # src/parsing/command_generation.c:90:32
	movl	-28(%rbp), %esi
	.loc	2 90 2 is_stmt 0                # src/parsing/command_generation.c:90:2
	leaq	-40(%rbp), %rdi
	callq	init_command_attributes
	.loc	2 91 18 is_stmt 1               # src/parsing/command_generation.c:91:18
	movq	-16(%rbp), %rdi
	.loc	2 91 35 is_stmt 0               # src/parsing/command_generation.c:91:35
	movq	-24(%rbp), %rdx
	.loc	2 91 2                          # src/parsing/command_generation.c:91:2
	leaq	-40(%rbp), %rsi
	callq	extract_command
	.loc	2 92 2 is_stmt 1                # src/parsing/command_generation.c:92:2
	leaq	-40(%rbp), %rdi
	callq	get_command_type
	.loc	2 93 10                         # src/parsing/command_generation.c:93:10
	movq	-40(%rbp), %rax
	.loc	2 93 2 is_stmt 0                # src/parsing/command_generation.c:93:2
	movq	%rax, -8(%rbp)
.LBB4_3:
	.loc	2 94 1 is_stmt 1                # src/parsing/command_generation.c:94:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp39:
.Lfunc_end4:
	.size	get_command, .Lfunc_end4-get_command
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
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc6f DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x33 DW_TAG_enumeration_type
	.long	93                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x32:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x38:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3e:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x44:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4a:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x50:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x5d:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x64:0x7f DW_TAG_enumeration_type
	.long	93                              # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x70:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x76:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7c:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x82:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x88:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8e:0x6 DW_TAG_enumerator
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x94:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9a:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa0:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa6:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xac:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb2:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb8:0x6 DW_TAG_enumerator
	.long	.Linfo_string23                 # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xbe:0x6 DW_TAG_enumerator
	.long	.Linfo_string24                 # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc4:0x6 DW_TAG_enumerator
	.long	.Linfo_string25                 # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xca:0x6 DW_TAG_enumerator
	.long	.Linfo_string26                 # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd0:0x6 DW_TAG_enumerator
	.long	.Linfo_string27                 # DW_AT_name
	.byte	16                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd6:0x6 DW_TAG_enumerator
	.long	.Linfo_string28                 # DW_AT_name
	.byte	17                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xdc:0x6 DW_TAG_enumerator
	.long	.Linfo_string29                 # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xe3:0x1f DW_TAG_enumeration_type
	.long	93                              # DW_AT_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xef:0x6 DW_TAG_enumerator
	.long	.Linfo_string31                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xf5:0x6 DW_TAG_enumerator
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xfb:0x6 DW_TAG_enumerator
	.long	.Linfo_string33                 # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x102:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x103:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x118:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string77                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	1270                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x126:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x135:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x14a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string78                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	1260                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x158:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string47                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	791                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x166:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string79                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x175:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x18a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	1275                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x198:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string77                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	1270                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string209                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	3188                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1b5:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1ca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string77                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	1270                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1d9:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string39                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	555                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1f2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	1275                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x200:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string209                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	3188                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x20e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x21c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string77                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	555                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x22b:0x5 DW_TAG_pointer_type
	.long	560                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x230:0xb DW_TAG_typedef
	.long	571                             # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x23b:0xc9 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x243:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x24f:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x25b:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x267:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x273:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x27f:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x28b:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	791                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x297:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	845                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2a3:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	911                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2af:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	984                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2bb:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1140                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2c7:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	1062                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2d3:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1206                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2df:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1260                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2eb:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1265                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2f7:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1265                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x304:0x7 DW_TAG_base_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x30b:0x5 DW_TAG_pointer_type
	.long	784                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x310:0x7 DW_TAG_base_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x317:0x5 DW_TAG_pointer_type
	.long	796                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x31c:0xb DW_TAG_typedef
	.long	807                             # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x327:0x21 DW_TAG_structure_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x32f:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x33b:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	840                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x348:0x5 DW_TAG_pointer_type
	.long	807                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x34d:0x5 DW_TAG_pointer_type
	.long	850                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x352:0xb DW_TAG_typedef
	.long	861                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x35d:0x2d DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x365:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x371:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x37d:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x38a:0x5 DW_TAG_pointer_type
	.long	772                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x38f:0x5 DW_TAG_pointer_type
	.long	916                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x394:0xb DW_TAG_typedef
	.long	927                             # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x39f:0x39 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3a7:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3b3:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3bf:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	984                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3cb:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	1062                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3d8:0x5 DW_TAG_pointer_type
	.long	989                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3dd:0xb DW_TAG_typedef
	.long	1000                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3e8:0x39 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3f0:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3fc:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x408:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x414:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x421:0x5 DW_TAG_pointer_type
	.long	1000                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x426:0x5 DW_TAG_pointer_type
	.long	1067                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x42b:0xb DW_TAG_typedef
	.long	1078                            # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x436:0x39 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x43e:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x44a:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x456:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x462:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1135                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x46f:0x5 DW_TAG_pointer_type
	.long	1078                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x474:0x5 DW_TAG_pointer_type
	.long	1145                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x479:0xb DW_TAG_typedef
	.long	1156                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x484:0x2d DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x48c:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x498:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4a4:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1201                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x4b1:0x5 DW_TAG_pointer_type
	.long	1156                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4b6:0x5 DW_TAG_pointer_type
	.long	1211                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4bb:0xb DW_TAG_typedef
	.long	1222                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4c6:0x21 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x4ce:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4da:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1255                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x4e7:0x5 DW_TAG_pointer_type
	.long	1222                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4ec:0x5 DW_TAG_pointer_type
	.long	779                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4f1:0x5 DW_TAG_pointer_type
	.long	571                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4f6:0x5 DW_TAG_pointer_type
	.long	555                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4fb:0x5 DW_TAG_pointer_type
	.long	1280                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x500:0xb DW_TAG_typedef
	.long	1291                            # DW_AT_type
	.long	.Linfo_string208                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x50b:0xbe DW_TAG_structure_type
	.long	.Linfo_string207                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x514:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1481                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x520:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x52c:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x538:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	1260                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x544:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x550:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x55c:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x568:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1260                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x574:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1502                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x580:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1140                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x58c:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1568                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x598:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1731                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5a4:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	1845                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5b0:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2677                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5bc:0xc DW_TAG_member
	.long	.Linfo_string193                # DW_AT_name
	.long	3026                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x5c9:0x5 DW_TAG_pointer_type
	.long	1486                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5ce:0xb DW_TAG_typedef
	.long	1497                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x5d9:0x5 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                              # Abbrev [11] 0x5de:0x5 DW_TAG_pointer_type
	.long	1507                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5e3:0xb DW_TAG_typedef
	.long	1518                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5ee:0x2d DW_TAG_structure_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x5f6:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x602:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x60e:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1563                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x61b:0x5 DW_TAG_pointer_type
	.long	1518                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x620:0x5 DW_TAG_pointer_type
	.long	1573                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x625:0xb DW_TAG_typedef
	.long	1584                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x630:0x2d DW_TAG_structure_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x638:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1629                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x644:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1726                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x650:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1726                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x65d:0x5 DW_TAG_pointer_type
	.long	1634                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x662:0xb DW_TAG_typedef
	.long	1645                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x66d:0x51 DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x675:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x681:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x68d:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x699:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6a5:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1265                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6b1:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1265                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x6be:0x5 DW_TAG_pointer_type
	.long	1584                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6c3:0x5 DW_TAG_pointer_type
	.long	1736                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6c8:0xb DW_TAG_typedef
	.long	1747                            # DW_AT_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6d3:0x5d DW_TAG_structure_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x6db:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6e7:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6f3:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6ff:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	779                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x70b:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1206                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x717:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1840                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x723:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1840                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x730:0x5 DW_TAG_pointer_type
	.long	1747                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x735:0x56 DW_TAG_structure_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x73d:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1865                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x749:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x74d:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1931                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x759:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	1954                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x766:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2624                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x772:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x77e:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2671                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x78b:0xb DW_TAG_typedef
	.long	1942                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x796:0x5 DW_TAG_pointer_type
	.long	1947                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x79b:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	19                              # Abbrev [19] 0x79c:0x5 DW_TAG_formal_parameter
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7a2:0x5 DW_TAG_pointer_type
	.long	1959                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x7a7:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	19                              # Abbrev [19] 0x7a8:0x5 DW_TAG_formal_parameter
	.long	772                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7ad:0x5 DW_TAG_formal_parameter
	.long	1976                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7b2:0x5 DW_TAG_formal_parameter
	.long	258                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7b8:0x5 DW_TAG_pointer_type
	.long	1981                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x7bd:0xb DW_TAG_typedef
	.long	1992                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x7c8:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x7cc:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7d8:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7e4:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7f0:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7fc:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2056                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x808:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x80c:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2503                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x818:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2084                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x824:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x828:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2522                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x834:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x841:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2125                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x84d:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x851:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x85d:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x869:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x876:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2178                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x882:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x886:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2522                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x892:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x89e:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x8ab:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2231                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x8b7:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x8bb:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2522                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8c7:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8d3:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8df:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2588                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8eb:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2588                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x8f8:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2308                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x904:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x908:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x914:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2606                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x920:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2348                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x92c:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x930:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2364                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x93c:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x940:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x94c:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x959:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2613                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x967:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2419                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x973:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x977:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2599                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x983:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x990:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2460                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x99c:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x9a0:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x9ac:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x9b8:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	93                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x9c7:0xc DW_TAG_array_type
	.long	772                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x9cc:0x6 DW_TAG_subrange_type
	.long	2515                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x9d3:0x7 DW_TAG_base_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	12                              # Abbrev [12] 0x9da:0xb DW_TAG_typedef
	.long	772                             # DW_AT_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9e5:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string123                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9f0:0xb DW_TAG_typedef
	.long	2555                            # DW_AT_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x9fb:0x21 DW_TAG_union_type
	.long	.Linfo_string130                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xa03:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xa0f:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xa1c:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xa27:0x7 DW_TAG_base_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xa2e:0x7 DW_TAG_base_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0xa35:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa40:0xb DW_TAG_typedef
	.long	2635                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xa4b:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xa4f:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2652                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0xa5c:0xc DW_TAG_array_type
	.long	2664                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa61:0x6 DW_TAG_subrange_type
	.long	2515                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa68:0x7 DW_TAG_base_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xa6f:0x5 DW_TAG_pointer_type
	.long	2676                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xa74:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0xa75:0x5 DW_TAG_pointer_type
	.long	2682                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xa7a:0xbd DW_TAG_structure_type
	.long	.Linfo_string192                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xa82:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2871                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xa8e:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2882                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xa9a:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2893                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xaa6:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2904                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xab2:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xabe:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2915                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xaca:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xad6:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2871                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xae2:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2926                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xaee:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	2937                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xafa:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	2948                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xb06:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	2959                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xb12:0xc DW_TAG_member
	.long	.Linfo_string189                # DW_AT_name
	.long	2959                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xb1e:0xc DW_TAG_member
	.long	.Linfo_string190                # DW_AT_name
	.long	2959                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xb2a:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	3014                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xb37:0xb DW_TAG_typedef
	.long	2664                            # DW_AT_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb42:0xb DW_TAG_typedef
	.long	2664                            # DW_AT_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb4d:0xb DW_TAG_typedef
	.long	2664                            # DW_AT_type
	.long	.Linfo_string170                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb58:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb63:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string175                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb6e:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb79:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string180                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb84:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb8f:0x21 DW_TAG_structure_type
	.long	.Linfo_string188                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xb97:0xc DW_TAG_member
	.long	.Linfo_string184                # DW_AT_name
	.long	2992                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xba3:0xc DW_TAG_member
	.long	.Linfo_string186                # DW_AT_name
	.long	3003                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xbb0:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string185                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xbbb:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string187                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0xbc6:0xc DW_TAG_array_type
	.long	3003                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xbcb:0x6 DW_TAG_subrange_type
	.long	2515                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xbd2:0x5 DW_TAG_pointer_type
	.long	3031                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xbd7:0x69 DW_TAG_structure_type
	.long	.Linfo_string206                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xbdf:0xc DW_TAG_member
	.long	.Linfo_string194                # DW_AT_name
	.long	3136                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xbeb:0xc DW_TAG_member
	.long	.Linfo_string196                # DW_AT_name
	.long	3136                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xbf7:0xc DW_TAG_member
	.long	.Linfo_string197                # DW_AT_name
	.long	3136                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xc03:0xc DW_TAG_member
	.long	.Linfo_string198                # DW_AT_name
	.long	3136                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xc0f:0xc DW_TAG_member
	.long	.Linfo_string199                # DW_AT_name
	.long	3147                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xc1b:0xc DW_TAG_member
	.long	.Linfo_string202                # DW_AT_name
	.long	3165                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xc27:0xc DW_TAG_member
	.long	.Linfo_string203                # DW_AT_name
	.long	3177                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xc33:0xc DW_TAG_member
	.long	.Linfo_string205                # DW_AT_name
	.long	3177                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xc40:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string195                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xc4b:0xb DW_TAG_typedef
	.long	3158                            # DW_AT_type
	.long	.Linfo_string201                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc56:0x7 DW_TAG_base_type
	.long	.Linfo_string200                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	21                              # Abbrev [21] 0xc5d:0xc DW_TAG_array_type
	.long	3147                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xc62:0x6 DW_TAG_subrange_type
	.long	2515                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xc69:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string204                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc74:0x5 DW_TAG_pointer_type
	.long	1731                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_generation.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=71
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=140
.Linfo_string4:
	.asciz	"error_syntax"                  # string offset=153
.Linfo_string5:
	.asciz	"error_token"                   # string offset=166
.Linfo_string6:
	.asciz	"error_and"                     # string offset=178
.Linfo_string7:
	.asciz	"error_file"                    # string offset=188
.Linfo_string8:
	.asciz	"error_builtin"                 # string offset=199
.Linfo_string9:
	.asciz	"error_malloc"                  # string offset=213
.Linfo_string10:
	.asciz	"error_command"                 # string offset=226
.Linfo_string11:
	.asciz	"l_parentheses"                 # string offset=240
.Linfo_string12:
	.asciz	"r_parentheses"                 # string offset=254
.Linfo_string13:
	.asciz	"simple_quote"                  # string offset=268
.Linfo_string14:
	.asciz	"double_quote"                  # string offset=281
.Linfo_string15:
	.asciz	"exit_status"                   # string offset=294
.Linfo_string16:
	.asciz	"expansion"                     # string offset=306
.Linfo_string17:
	.asciz	"operator"                      # string offset=316
.Linfo_string18:
	.asciz	"wildcard"                      # string offset=325
.Linfo_string19:
	.asciz	"pipe_op"                       # string offset=334
.Linfo_string20:
	.asciz	"heredoc"                       # string offset=342
.Linfo_string21:
	.asciz	"outfile"                       # string offset=350
.Linfo_string22:
	.asciz	"append"                        # string offset=358
.Linfo_string23:
	.asciz	"infile"                        # string offset=365
.Linfo_string24:
	.asciz	"and_if"                        # string offset=372
.Linfo_string25:
	.asciz	"or_if"                         # string offset=379
.Linfo_string26:
	.asciz	"word"                          # string offset=385
.Linfo_string27:
	.asciz	"name"                          # string offset=390
.Linfo_string28:
	.asciz	"assignment_word"               # string offset=395
.Linfo_string29:
	.asciz	"eof_token"                     # string offset=411
.Linfo_string30:
	.asciz	"e_token"                       # string offset=421
.Linfo_string31:
	.asciz	"command"                       # string offset=429
.Linfo_string32:
	.asciz	"builtin"                       # string offset=437
.Linfo_string33:
	.asciz	"assignment"                    # string offset=445
.Linfo_string34:
	.asciz	"e_cmd_type"                    # string offset=456
.Linfo_string35:
	.asciz	"init_command_attributes"       # string offset=467
.Linfo_string36:
	.asciz	"extract_command_name"          # string offset=491
.Linfo_string37:
	.asciz	"extract_command"               # string offset=512
.Linfo_string38:
	.asciz	"get_command_type"              # string offset=528
.Linfo_string39:
	.asciz	"get_command"                   # string offset=545
.Linfo_string40:
	.asciz	"id"                            # string offset=557
.Linfo_string41:
	.asciz	"int"                           # string offset=560
.Linfo_string42:
	.asciz	"pid"                           # string offset=564
.Linfo_string43:
	.asciz	"type"                          # string offset=568
.Linfo_string44:
	.asciz	"wstatus"                       # string offset=573
.Linfo_string45:
	.asciz	"char"                          # string offset=581
.Linfo_string46:
	.asciz	"path"                          # string offset=586
.Linfo_string47:
	.asciz	"arg"                           # string offset=591
.Linfo_string48:
	.asciz	"value"                         # string offset=595
.Linfo_string49:
	.asciz	"next"                          # string offset=601
.Linfo_string50:
	.asciz	"s_arg"                         # string offset=606
.Linfo_string51:
	.asciz	"t_arg"                         # string offset=612
.Linfo_string52:
	.asciz	"pipe"                          # string offset=618
.Linfo_string53:
	.asciz	"to_close"                      # string offset=623
.Linfo_string54:
	.asciz	"write"                         # string offset=632
.Linfo_string55:
	.asciz	"read"                          # string offset=638
.Linfo_string56:
	.asciz	"s_pipe"                        # string offset=643
.Linfo_string57:
	.asciz	"t_pipe"                        # string offset=650
.Linfo_string58:
	.asciz	"redir"                         # string offset=657
.Linfo_string59:
	.asciz	"in_fd"                         # string offset=663
.Linfo_string60:
	.asciz	"out_fd"                        # string offset=669
.Linfo_string61:
	.asciz	"fd"                            # string offset=676
.Linfo_string62:
	.asciz	"s_infile"                      # string offset=679
.Linfo_string63:
	.asciz	"t_infile"                      # string offset=688
.Linfo_string64:
	.asciz	"s_outfile"                     # string offset=697
.Linfo_string65:
	.asciz	"t_outfile"                     # string offset=707
.Linfo_string66:
	.asciz	"s_redir"                       # string offset=717
.Linfo_string67:
	.asciz	"t_redir"                       # string offset=725
.Linfo_string68:
	.asciz	"assign"                        # string offset=733
.Linfo_string69:
	.asciz	"s_var"                         # string offset=740
.Linfo_string70:
	.asciz	"t_var"                         # string offset=746
.Linfo_string71:
	.asciz	"s_expan"                       # string offset=752
.Linfo_string72:
	.asciz	"t_expan"                       # string offset=760
.Linfo_string73:
	.asciz	"arg_array"                     # string offset=768
.Linfo_string74:
	.asciz	"prev"                          # string offset=778
.Linfo_string75:
	.asciz	"s_cmd"                         # string offset=783
.Linfo_string76:
	.asciz	"t_cmd"                         # string offset=789
.Linfo_string77:
	.asciz	"cmd"                           # string offset=795
.Linfo_string78:
	.asciz	"cmd_name"                      # string offset=799
.Linfo_string79:
	.asciz	"length"                        # string offset=808
.Linfo_string80:
	.asciz	"minishell"                     # string offset=815
.Linfo_string81:
	.asciz	"dir"                           # string offset=825
.Linfo_string82:
	.asciz	"__dirstream"                   # string offset=829
.Linfo_string83:
	.asciz	"DIR"                           # string offset=841
.Linfo_string84:
	.asciz	"state"                         # string offset=845
.Linfo_string85:
	.asciz	"input"                         # string offset=851
.Linfo_string86:
	.asciz	"prompt"                        # string offset=857
.Linfo_string87:
	.asciz	"operator_nbr"                  # string offset=864
.Linfo_string88:
	.asciz	"env_array"                     # string offset=877
.Linfo_string89:
	.asciz	"env"                           # string offset=887
.Linfo_string90:
	.asciz	"s_env"                         # string offset=891
.Linfo_string91:
	.asciz	"t_env"                         # string offset=897
.Linfo_string92:
	.asciz	"local"                         # string offset=903
.Linfo_string93:
	.asciz	"syntax_tree"                   # string offset=909
.Linfo_string94:
	.asciz	"node"                          # string offset=921
.Linfo_string95:
	.asciz	"pipe_fd"                       # string offset=926
.Linfo_string96:
	.asciz	"left"                          # string offset=934
.Linfo_string97:
	.asciz	"right"                         # string offset=939
.Linfo_string98:
	.asciz	"s_ast_node"                    # string offset=945
.Linfo_string99:
	.asciz	"t_ast_node"                    # string offset=956
.Linfo_string100:
	.asciz	"s_ast"                         # string offset=967
.Linfo_string101:
	.asciz	"t_ast"                         # string offset=973
.Linfo_string102:
	.asciz	"token_stream"                  # string offset=979
.Linfo_string103:
	.asciz	"quote_nbr"                     # string offset=992
.Linfo_string104:
	.asciz	"lexeme"                        # string offset=1002
.Linfo_string105:
	.asciz	"s_token"                       # string offset=1009
.Linfo_string106:
	.asciz	"t_token"                       # string offset=1017
.Linfo_string107:
	.asciz	"sighandler"                    # string offset=1025
.Linfo_string108:
	.asciz	"__sigaction_handler"           # string offset=1036
.Linfo_string109:
	.asciz	"sa_handler"                    # string offset=1056
.Linfo_string110:
	.asciz	"__sighandler_t"                # string offset=1067
.Linfo_string111:
	.asciz	"sa_sigaction"                  # string offset=1082
.Linfo_string112:
	.asciz	"si_signo"                      # string offset=1095
.Linfo_string113:
	.asciz	"si_errno"                      # string offset=1104
.Linfo_string114:
	.asciz	"si_code"                       # string offset=1113
.Linfo_string115:
	.asciz	"__pad0"                        # string offset=1121
.Linfo_string116:
	.asciz	"_sifields"                     # string offset=1128
.Linfo_string117:
	.asciz	"_pad"                          # string offset=1138
.Linfo_string118:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1143
.Linfo_string119:
	.asciz	"_kill"                         # string offset=1163
.Linfo_string120:
	.asciz	"si_pid"                        # string offset=1169
.Linfo_string121:
	.asciz	"__pid_t"                       # string offset=1176
.Linfo_string122:
	.asciz	"si_uid"                        # string offset=1184
.Linfo_string123:
	.asciz	"__uid_t"                       # string offset=1191
.Linfo_string124:
	.asciz	"_timer"                        # string offset=1199
.Linfo_string125:
	.asciz	"si_tid"                        # string offset=1206
.Linfo_string126:
	.asciz	"si_overrun"                    # string offset=1213
.Linfo_string127:
	.asciz	"si_sigval"                     # string offset=1224
.Linfo_string128:
	.asciz	"sival_int"                     # string offset=1234
.Linfo_string129:
	.asciz	"sival_ptr"                     # string offset=1244
.Linfo_string130:
	.asciz	"sigval"                        # string offset=1254
.Linfo_string131:
	.asciz	"__sigval_t"                    # string offset=1261
.Linfo_string132:
	.asciz	"_rt"                           # string offset=1272
.Linfo_string133:
	.asciz	"_sigchld"                      # string offset=1276
.Linfo_string134:
	.asciz	"si_status"                     # string offset=1285
.Linfo_string135:
	.asciz	"si_utime"                      # string offset=1295
.Linfo_string136:
	.asciz	"long int"                      # string offset=1304
.Linfo_string137:
	.asciz	"__clock_t"                     # string offset=1313
.Linfo_string138:
	.asciz	"si_stime"                      # string offset=1323
.Linfo_string139:
	.asciz	"_sigfault"                     # string offset=1332
.Linfo_string140:
	.asciz	"si_addr"                       # string offset=1342
.Linfo_string141:
	.asciz	"si_addr_lsb"                   # string offset=1350
.Linfo_string142:
	.asciz	"short"                         # string offset=1362
.Linfo_string143:
	.asciz	"_bounds"                       # string offset=1368
.Linfo_string144:
	.asciz	"_addr_bnd"                     # string offset=1376
.Linfo_string145:
	.asciz	"_lower"                        # string offset=1386
.Linfo_string146:
	.asciz	"_upper"                        # string offset=1393
.Linfo_string147:
	.asciz	"_pkey"                         # string offset=1400
.Linfo_string148:
	.asciz	"__uint32_t"                    # string offset=1406
.Linfo_string149:
	.asciz	"_sigpoll"                      # string offset=1417
.Linfo_string150:
	.asciz	"si_band"                       # string offset=1426
.Linfo_string151:
	.asciz	"si_fd"                         # string offset=1434
.Linfo_string152:
	.asciz	"_sigsys"                       # string offset=1440
.Linfo_string153:
	.asciz	"_call_addr"                    # string offset=1448
.Linfo_string154:
	.asciz	"_syscall"                      # string offset=1459
.Linfo_string155:
	.asciz	"_arch"                         # string offset=1468
.Linfo_string156:
	.asciz	"siginfo_t"                     # string offset=1474
.Linfo_string157:
	.asciz	"sa_mask"                       # string offset=1484
.Linfo_string158:
	.asciz	"__val"                         # string offset=1492
.Linfo_string159:
	.asciz	"long unsigned int"             # string offset=1498
.Linfo_string160:
	.asciz	"__sigset_t"                    # string offset=1516
.Linfo_string161:
	.asciz	"sa_flags"                      # string offset=1527
.Linfo_string162:
	.asciz	"sa_restorer"                   # string offset=1536
.Linfo_string163:
	.asciz	"sigaction"                     # string offset=1548
.Linfo_string164:
	.asciz	"statbuf"                       # string offset=1558
.Linfo_string165:
	.asciz	"st_dev"                        # string offset=1566
.Linfo_string166:
	.asciz	"__dev_t"                       # string offset=1573
.Linfo_string167:
	.asciz	"st_ino"                        # string offset=1581
.Linfo_string168:
	.asciz	"__ino_t"                       # string offset=1588
.Linfo_string169:
	.asciz	"st_nlink"                      # string offset=1596
.Linfo_string170:
	.asciz	"__nlink_t"                     # string offset=1605
.Linfo_string171:
	.asciz	"st_mode"                       # string offset=1615
.Linfo_string172:
	.asciz	"__mode_t"                      # string offset=1623
.Linfo_string173:
	.asciz	"st_uid"                        # string offset=1632
.Linfo_string174:
	.asciz	"st_gid"                        # string offset=1639
.Linfo_string175:
	.asciz	"__gid_t"                       # string offset=1646
.Linfo_string176:
	.asciz	"st_rdev"                       # string offset=1654
.Linfo_string177:
	.asciz	"st_size"                       # string offset=1662
.Linfo_string178:
	.asciz	"__off_t"                       # string offset=1670
.Linfo_string179:
	.asciz	"st_blksize"                    # string offset=1678
.Linfo_string180:
	.asciz	"__blksize_t"                   # string offset=1689
.Linfo_string181:
	.asciz	"st_blocks"                     # string offset=1701
.Linfo_string182:
	.asciz	"__blkcnt_t"                    # string offset=1711
.Linfo_string183:
	.asciz	"st_atim"                       # string offset=1722
.Linfo_string184:
	.asciz	"tv_sec"                        # string offset=1730
.Linfo_string185:
	.asciz	"__time_t"                      # string offset=1737
.Linfo_string186:
	.asciz	"tv_nsec"                       # string offset=1746
.Linfo_string187:
	.asciz	"__syscall_slong_t"             # string offset=1754
.Linfo_string188:
	.asciz	"timespec"                      # string offset=1772
.Linfo_string189:
	.asciz	"st_mtim"                       # string offset=1781
.Linfo_string190:
	.asciz	"st_ctim"                       # string offset=1789
.Linfo_string191:
	.asciz	"__glibc_reserved"              # string offset=1797
.Linfo_string192:
	.asciz	"stat"                          # string offset=1814
.Linfo_string193:
	.asciz	"term"                          # string offset=1819
.Linfo_string194:
	.asciz	"c_iflag"                       # string offset=1824
.Linfo_string195:
	.asciz	"tcflag_t"                      # string offset=1832
.Linfo_string196:
	.asciz	"c_oflag"                       # string offset=1841
.Linfo_string197:
	.asciz	"c_cflag"                       # string offset=1849
.Linfo_string198:
	.asciz	"c_lflag"                       # string offset=1857
.Linfo_string199:
	.asciz	"c_line"                        # string offset=1865
.Linfo_string200:
	.asciz	"unsigned char"                 # string offset=1872
.Linfo_string201:
	.asciz	"cc_t"                          # string offset=1886
.Linfo_string202:
	.asciz	"c_cc"                          # string offset=1891
.Linfo_string203:
	.asciz	"c_ispeed"                      # string offset=1896
.Linfo_string204:
	.asciz	"speed_t"                       # string offset=1905
.Linfo_string205:
	.asciz	"c_ospeed"                      # string offset=1913
.Linfo_string206:
	.asciz	"termios"                       # string offset=1922
.Linfo_string207:
	.asciz	"s_minishell"                   # string offset=1930
.Linfo_string208:
	.asciz	"t_minishell"                   # string offset=1942
.Linfo_string209:
	.asciz	"token"                         # string offset=1954
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym init_command_attributes
	.addrsig_sym extract_command_name
	.addrsig_sym ft_strlen
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym __errno_location
	.addrsig_sym ft_strlcpy
	.addrsig_sym extract_command
	.addrsig_sym is_operator_token
	.addrsig_sym is_redirection
	.addrsig_sym get_command_redir
	.addrsig_sym get_command_assign
	.addrsig_sym get_command_arg
	.addrsig_sym get_command_path
	.addrsig_sym get_command_arg_array
	.addrsig_sym get_command_type
	.addrsig_sym is_builtin
	.section	.debug_line,"",@progbits
.Lline_table_start0:

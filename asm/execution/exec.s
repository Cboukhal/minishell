	.text
	.file	"exec.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/execution/../../include/minishell.h"
	.globl	is_first_command                # -- Begin function is_first_command
	.p2align	4, 0x90
	.type	is_first_command,@function
is_first_command:                       # @is_first_command
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/execution/exec.c"
	.loc	2 16 0                          # src/execution/exec.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	2 17 6 prologue_end             # src/execution/exec.c:17:6
	movq	-16(%rbp), %rax
	.loc	2 17 14 is_stmt 0               # src/execution/exec.c:17:14
	cmpl	$0, (%rax)
.Ltmp1:
	.loc	2 17 6                          # src/execution/exec.c:17:6
	jne	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	2 18 3 is_stmt 1                # src/execution/exec.c:18:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_3
.Ltmp3:
.LBB0_2:
	.loc	2 19 2                          # src/execution/exec.c:19:2
	movb	$0, -1(%rbp)
.LBB0_3:
	.loc	2 20 1                          # src/execution/exec.c:20:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_first_command, .Lfunc_end0-is_first_command
	.cfi_endproc
                                        # -- End function
	.globl	exec_command                    # -- Begin function exec_command
	.p2align	4, 0x90
	.type	exec_command,@function
exec_command:                           # @exec_command
.Lfunc_begin1:
	.loc	2 23 0                          # src/execution/exec.c:23:0
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
	.loc	2 24 9 prologue_end             # src/execution/exec.c:24:9
	movq	-16(%rbp), %rax
	.loc	2 24 8 is_stmt 0                # src/execution/exec.c:24:8
	movq	(%rax), %rax
	.loc	2 24 7                          # src/execution/exec.c:24:7
	cmpq	$0, 16(%rax)
.Ltmp6:
	.loc	2 24 6                          # src/execution/exec.c:24:6
	jne	.LBB1_2
# %bb.1:
.Ltmp7:
	.loc	2 25 3 is_stmt 1                # src/execution/exec.c:25:3
	jmp	.LBB1_20
.Ltmp8:
.LBB1_2:
	.loc	2 26 8                          # src/execution/exec.c:26:8
	movq	-16(%rbp), %rax
	.loc	2 26 7 is_stmt 0                # src/execution/exec.c:26:7
	movq	(%rax), %rax
	.loc	2 26 19                         # src/execution/exec.c:26:19
	cmpl	$3, 8(%rax)
.Ltmp9:
	.loc	2 26 6                          # src/execution/exec.c:26:6
	jne	.LBB1_4
# %bb.3:
.Ltmp10:
	.loc	2 27 19 is_stmt 1               # src/execution/exec.c:27:19
	movq	-8(%rbp), %rdi
	.loc	2 27 32 is_stmt 0               # src/execution/exec.c:27:32
	movq	-16(%rbp), %rax
	.loc	2 27 31                         # src/execution/exec.c:27:31
	movq	(%rax), %rsi
	.loc	2 27 3                          # src/execution/exec.c:27:3
	callq	assign_variable
	jmp	.LBB1_20
.LBB1_4:
.Ltmp11:
	.loc	2 28 13 is_stmt 1               # src/execution/exec.c:28:13
	movq	-16(%rbp), %rax
	.loc	2 28 12 is_stmt 0               # src/execution/exec.c:28:12
	movq	(%rax), %rax
	.loc	2 28 11                         # src/execution/exec.c:28:11
	cmpq	$0, 16(%rax)
	.loc	2 28 24                         # src/execution/exec.c:28:24
	je	.LBB1_7
# %bb.5:
	.loc	2 28 40                         # src/execution/exec.c:28:40
	movq	-16(%rbp), %rax
	.loc	2 28 39                         # src/execution/exec.c:28:39
	movq	(%rax), %rax
	.loc	2 28 46                         # src/execution/exec.c:28:46
	movq	16(%rax), %rdi
	.loc	2 28 27                         # src/execution/exec.c:28:27
	callq	is_builtin
.Ltmp12:
	.loc	2 28 11                         # src/execution/exec.c:28:11
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_7
.LBB1_6:
.Ltmp13:
	.loc	2 30 5 is_stmt 1                # src/execution/exec.c:30:5
	movq	-8(%rbp), %rax
	.loc	2 30 4 is_stmt 0                # src/execution/exec.c:30:4
	movq	(%rax), %rax
	.loc	2 30 29                         # src/execution/exec.c:30:29
	movl	$0, 44(%rax)
	.loc	2 31 17 is_stmt 1               # src/execution/exec.c:31:17
	movq	-8(%rbp), %rax
	.loc	2 31 16 is_stmt 0               # src/execution/exec.c:31:16
	movq	(%rax), %rdi
	.loc	2 31 30                         # src/execution/exec.c:31:30
	movq	-16(%rbp), %rax
	.loc	2 31 29                         # src/execution/exec.c:31:29
	movq	(%rax), %rsi
	.loc	2 31 3                          # src/execution/exec.c:31:3
	callq	exec_builtin
	.loc	2 32 2 is_stmt 1                # src/execution/exec.c:32:2
	jmp	.LBB1_19
.Ltmp14:
.LBB1_7:
	.loc	2 33 13                         # src/execution/exec.c:33:13
	movq	-16(%rbp), %rax
	.loc	2 33 12 is_stmt 0               # src/execution/exec.c:33:12
	movq	(%rax), %rax
	.loc	2 33 11                         # src/execution/exec.c:33:11
	cmpq	$0, 24(%rax)
	.loc	2 33 24                         # src/execution/exec.c:33:24
	je	.LBB1_14
# %bb.8:
	.loc	2 33 39                         # src/execution/exec.c:33:39
	movq	-16(%rbp), %rax
	.loc	2 33 38                         # src/execution/exec.c:33:38
	movq	(%rax), %rax
	.loc	2 33 45                         # src/execution/exec.c:33:45
	movq	16(%rax), %rdi
	.loc	2 33 27                         # src/execution/exec.c:33:27
	callq	ft_strlen
	.loc	2 33 51                         # src/execution/exec.c:33:51
	cmpq	$0, %rax
.Ltmp15:
	.loc	2 33 11                         # src/execution/exec.c:33:11
	jbe	.LBB1_14
# %bb.9:
.Ltmp16:
	.loc	2 35 17 is_stmt 1               # src/execution/exec.c:35:17
	callq	fork
	movl	%eax, %ecx
	.loc	2 35 5 is_stmt 0                # src/execution/exec.c:35:5
	movq	-16(%rbp), %rax
	.loc	2 35 4                          # src/execution/exec.c:35:4
	movq	(%rax), %rax
	.loc	2 35 15                         # src/execution/exec.c:35:15
	movl	%ecx, 4(%rax)
.Ltmp17:
	.loc	2 36 9 is_stmt 1                # src/execution/exec.c:36:9
	movq	-16(%rbp), %rax
	.loc	2 36 8 is_stmt 0                # src/execution/exec.c:36:8
	movq	(%rax), %rax
	.loc	2 36 19                         # src/execution/exec.c:36:19
	cmpl	$-1, 4(%rax)
.Ltmp18:
	.loc	2 36 7                          # src/execution/exec.c:36:7
	jne	.LBB1_11
# %bb.10:
.Ltmp19:
	.loc	2 37 4 is_stmt 1                # src/execution/exec.c:37:4
	movabsq	$.L.str, %rdi
	callq	perror
.Ltmp20:
.LBB1_11:
	.loc	2 38 9                          # src/execution/exec.c:38:9
	movq	-16(%rbp), %rax
	.loc	2 38 8 is_stmt 0                # src/execution/exec.c:38:8
	movq	(%rax), %rax
	.loc	2 38 19                         # src/execution/exec.c:38:19
	cmpl	$0, 4(%rax)
.Ltmp21:
	.loc	2 38 7                          # src/execution/exec.c:38:7
	jne	.LBB1_13
# %bb.12:
.Ltmp22:
	.loc	2 39 14 is_stmt 1               # src/execution/exec.c:39:14
	movq	-8(%rbp), %rdi
	.loc	2 39 27 is_stmt 0               # src/execution/exec.c:39:27
	movq	-16(%rbp), %rax
	.loc	2 39 26                         # src/execution/exec.c:39:26
	movq	(%rax), %rsi
	.loc	2 39 35                         # src/execution/exec.c:39:35
	movq	-8(%rbp), %rax
	.loc	2 39 34                         # src/execution/exec.c:39:34
	movq	(%rax), %rax
	.loc	2 39 47                         # src/execution/exec.c:39:47
	movq	48(%rax), %rdx
	.loc	2 39 4                          # src/execution/exec.c:39:4
	callq	child_job
.Ltmp23:
.LBB1_13:
	.loc	2 40 2 is_stmt 1                # src/execution/exec.c:40:2
	jmp	.LBB1_18
.Ltmp24:
.LBB1_14:
	.loc	2 41 14                         # src/execution/exec.c:41:14
	movq	-16(%rbp), %rax
	.loc	2 41 13 is_stmt 0               # src/execution/exec.c:41:13
	movq	(%rax), %rax
	.loc	2 41 20                         # src/execution/exec.c:41:20
	movq	16(%rax), %rax
	.loc	2 41 11                         # src/execution/exec.c:41:11
	movsbl	(%rax), %eax
	.loc	2 41 29                         # src/execution/exec.c:41:29
	cmpl	$36, %eax
.Ltmp25:
	.loc	2 41 11                         # src/execution/exec.c:41:11
	jne	.LBB1_16
# %bb.15:
.Ltmp26:
	.loc	2 42 3 is_stmt 1                # src/execution/exec.c:42:3
	jmp	.LBB1_20
.LBB1_16:
.Ltmp27:
	.loc	2 45 42                         # src/execution/exec.c:45:42
	movq	-16(%rbp), %rax
	.loc	2 45 41 is_stmt 0               # src/execution/exec.c:45:41
	movq	(%rax), %rax
	.loc	2 45 48                         # src/execution/exec.c:45:48
	movq	16(%rax), %rsi
	.loc	2 45 3                          # src/execution/exec.c:45:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 46 5 is_stmt 1                # src/execution/exec.c:46:5
	movq	-8(%rbp), %rax
	.loc	2 46 4 is_stmt 0                # src/execution/exec.c:46:4
	movq	(%rax), %rax
	.loc	2 46 29                         # src/execution/exec.c:46:29
	movl	$127, 44(%rax)
.Ltmp28:
# %bb.17:
	.loc	2 0 29                          # src/execution/exec.c:0:29
	jmp	.LBB1_18
.LBB1_18:
	jmp	.LBB1_19
.LBB1_19:
	jmp	.LBB1_20
.LBB1_20:
	.loc	2 48 1 is_stmt 1                # src/execution/exec.c:48:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp29:
.Lfunc_end1:
	.size	exec_command, .Lfunc_end1-exec_command
	.cfi_endproc
                                        # -- End function
	.globl	wait_command_ending             # -- Begin function wait_command_ending
	.p2align	4, 0x90
	.type	wait_command_ending,@function
wait_command_ending:                    # @wait_command_ending
.Lfunc_begin2:
	.loc	2 52 0                          # src/execution/exec.c:52:0
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
	movl	%ecx, -28(%rbp)
.Ltmp30:
	.loc	2 54 8 prologue_end             # src/execution/exec.c:54:8
	movq	-16(%rbp), %rax
	.loc	2 54 7 is_stmt 0                # src/execution/exec.c:54:7
	movq	(%rax), %rax
	.loc	2 54 6                          # src/execution/exec.c:54:6
	cmpq	$0, 24(%rax)
	.loc	2 54 20                         # src/execution/exec.c:54:20
	je	.LBB2_6
# %bb.1:
	.loc	2 54 25                         # src/execution/exec.c:54:25
	cmpl	$0, -28(%rbp)
	.loc	2 54 30                         # src/execution/exec.c:54:30
	jne	.LBB2_6
# %bb.2:
	.loc	2 54 35                         # src/execution/exec.c:54:35
	movq	-16(%rbp), %rax
	.loc	2 54 34                         # src/execution/exec.c:54:34
	movq	(%rax), %rax
	.loc	2 54 42                         # src/execution/exec.c:54:42
	movq	24(%rax), %rax
	.loc	2 54 33                         # src/execution/exec.c:54:33
	cmpl	$0, 4(%rax)
	.loc	2 55 3 is_stmt 1                # src/execution/exec.c:55:3
	je	.LBB2_6
# %bb.3:
	.loc	2 55 8 is_stmt 0                # src/execution/exec.c:55:8
	movq	-16(%rbp), %rax
	.loc	2 55 7                          # src/execution/exec.c:55:7
	movq	(%rax), %rax
	.loc	2 55 15                         # src/execution/exec.c:55:15
	movq	24(%rax), %rax
	.loc	2 55 6                          # src/execution/exec.c:55:6
	cmpq	$0, 24(%rax)
	.loc	2 55 26                         # src/execution/exec.c:55:26
	je	.LBB2_6
# %bb.4:
	.loc	2 55 31                         # src/execution/exec.c:55:31
	movq	-16(%rbp), %rax
	.loc	2 55 30                         # src/execution/exec.c:55:30
	movq	(%rax), %rax
	.loc	2 55 38                         # src/execution/exec.c:55:38
	movq	24(%rax), %rax
	.loc	2 55 49                         # src/execution/exec.c:55:49
	cmpl	$2, 8(%rax)
.Ltmp31:
	.loc	2 54 6 is_stmt 1                # src/execution/exec.c:54:6
	je	.LBB2_6
# %bb.5:
.Ltmp32:
	.loc	2 57 13                         # src/execution/exec.c:57:13
	movq	-16(%rbp), %rax
	.loc	2 57 12 is_stmt 0               # src/execution/exec.c:57:12
	movq	(%rax), %rax
	.loc	2 57 20                         # src/execution/exec.c:57:20
	movq	24(%rax), %rax
	.loc	2 57 26                         # src/execution/exec.c:57:26
	movl	4(%rax), %edi
	.loc	2 57 34                         # src/execution/exec.c:57:34
	movq	-16(%rbp), %rax
	.loc	2 57 33                         # src/execution/exec.c:57:33
	movq	(%rax), %rsi
	.loc	2 57 41                         # src/execution/exec.c:57:41
	addq	$16, %rsi
	.loc	2 57 3                          # src/execution/exec.c:57:3
	xorl	%edx, %edx
	callq	waitpid
	.loc	2 58 31 is_stmt 1               # src/execution/exec.c:58:31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	andl	$65280, %ecx                    # imm = 0xFF00
	sarl	$8, %ecx
	.loc	2 58 5 is_stmt 0                # src/execution/exec.c:58:5
	movq	-8(%rbp), %rax
	.loc	2 58 4                          # src/execution/exec.c:58:4
	movq	(%rax), %rax
	.loc	2 58 29                         # src/execution/exec.c:58:29
	movl	%ecx, 44(%rax)
.Ltmp33:
.LBB2_6:
	.loc	2 60 8 is_stmt 1                # src/execution/exec.c:60:8
	movq	-16(%rbp), %rax
	.loc	2 60 7 is_stmt 0                # src/execution/exec.c:60:7
	movq	(%rax), %rax
	.loc	2 60 6                          # src/execution/exec.c:60:6
	cmpq	$0, 32(%rax)
	.loc	2 60 21                         # src/execution/exec.c:60:21
	je	.LBB2_10
# %bb.7:
	.loc	2 60 26                         # src/execution/exec.c:60:26
	movq	-16(%rbp), %rax
	.loc	2 60 25                         # src/execution/exec.c:60:25
	movq	(%rax), %rax
	.loc	2 60 33                         # src/execution/exec.c:60:33
	movq	32(%rax), %rax
	.loc	2 60 24                         # src/execution/exec.c:60:24
	cmpq	$0, 24(%rax)
	.loc	2 61 3 is_stmt 1                # src/execution/exec.c:61:3
	je	.LBB2_10
# %bb.8:
	.loc	2 61 8 is_stmt 0                # src/execution/exec.c:61:8
	movq	-16(%rbp), %rax
	.loc	2 61 7                          # src/execution/exec.c:61:7
	movq	(%rax), %rax
	.loc	2 61 15                         # src/execution/exec.c:61:15
	movq	32(%rax), %rax
	.loc	2 61 27                         # src/execution/exec.c:61:27
	cmpl	$2, 8(%rax)
.Ltmp34:
	.loc	2 60 6 is_stmt 1                # src/execution/exec.c:60:6
	je	.LBB2_10
# %bb.9:
.Ltmp35:
	.loc	2 63 13                         # src/execution/exec.c:63:13
	movq	-16(%rbp), %rax
	.loc	2 63 12 is_stmt 0               # src/execution/exec.c:63:12
	movq	(%rax), %rax
	.loc	2 63 20                         # src/execution/exec.c:63:20
	movq	32(%rax), %rax
	.loc	2 63 27                         # src/execution/exec.c:63:27
	movl	4(%rax), %edi
	.loc	2 63 35                         # src/execution/exec.c:63:35
	movq	-16(%rbp), %rax
	.loc	2 63 34                         # src/execution/exec.c:63:34
	movq	(%rax), %rsi
	.loc	2 63 42                         # src/execution/exec.c:63:42
	addq	$16, %rsi
	.loc	2 63 3                          # src/execution/exec.c:63:3
	xorl	%edx, %edx
	callq	waitpid
	.loc	2 64 31 is_stmt 1               # src/execution/exec.c:64:31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	andl	$65280, %ecx                    # imm = 0xFF00
	sarl	$8, %ecx
	.loc	2 64 5 is_stmt 0                # src/execution/exec.c:64:5
	movq	-8(%rbp), %rax
	.loc	2 64 4                          # src/execution/exec.c:64:4
	movq	(%rax), %rax
	.loc	2 64 29                         # src/execution/exec.c:64:29
	movl	%ecx, 44(%rax)
.Ltmp36:
.LBB2_10:
	.loc	2 66 1 is_stmt 1                # src/execution/exec.c:66:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.Lfunc_end2:
	.size	wait_command_ending, .Lfunc_end2-wait_command_ending
	.cfi_endproc
                                        # -- End function
	.globl	execution                       # -- Begin function execution
	.p2align	4, 0x90
	.type	execution,@function
execution:                              # @execution
.Lfunc_begin3:
	.loc	2 69 0                          # src/execution/exec.c:69:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp38:
	.loc	2 73 4 prologue_end             # src/execution/exec.c:73:4
	movl	$0, -12(%rbp)
	.loc	2 74 8                          # src/execution/exec.c:74:8
	movq	-8(%rbp), %rax
	.loc	2 74 19 is_stmt 0               # src/execution/exec.c:74:19
	movq	72(%rax), %rax
	.loc	2 74 6                          # src/execution/exec.c:74:6
	movq	%rax, -24(%rbp)
	.loc	2 75 39 is_stmt 1               # src/execution/exec.c:75:39
	movq	-8(%rbp), %rax
	.loc	2 75 50 is_stmt 0               # src/execution/exec.c:75:50
	movq	56(%rax), %rdi
	.loc	2 75 25                         # src/execution/exec.c:75:25
	callq	get_env_array
	movq	%rax, %rcx
	.loc	2 75 2                          # src/execution/exec.c:75:2
	movq	-8(%rbp), %rax
	.loc	2 75 23                         # src/execution/exec.c:75:23
	movq	%rcx, 48(%rax)
	.loc	2 76 11 is_stmt 1               # src/execution/exec.c:76:11
	movl	$0, g_signal
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 77 9                          # src/execution/exec.c:77:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 77 13 is_stmt 0               # src/execution/exec.c:77:13
	je	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 77 16                         # src/execution/exec.c:77:16
	callq	__errno_location
	movq	%rax, %rcx
	.loc	2 77 22                         # src/execution/exec.c:77:22
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 77 27                         # src/execution/exec.c:77:27
	jne	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 77 39                         # src/execution/exec.c:77:39
	cmpl	$0, g_signal
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 39                          # src/execution/exec.c:0:39
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 77 2                          # src/execution/exec.c:77:2
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_15
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp39:
	.loc	2 79 7 is_stmt 1                # src/execution/exec.c:79:7
	movq	-24(%rbp), %rax
	.loc	2 79 12 is_stmt 0               # src/execution/exec.c:79:12
	movq	(%rax), %rax
	.loc	2 79 23                         # src/execution/exec.c:79:23
	cmpl	$2, 4(%rax)
.Ltmp40:
	.loc	2 79 7                          # src/execution/exec.c:79:7
	jne	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp41:
	.loc	2 80 30 is_stmt 1               # src/execution/exec.c:80:30
	movq	-24(%rbp), %rax
	.loc	2 80 35 is_stmt 0               # src/execution/exec.c:80:35
	movq	(%rax), %rsi
	.loc	2 80 41                         # src/execution/exec.c:80:41
	addq	$24, %rsi
	.loc	2 80 4                          # src/execution/exec.c:80:4
	leaq	-8(%rbp), %rdi
	callq	exec_command
	jmp	.LBB3_14
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp42:
	.loc	2 81 12 is_stmt 1               # src/execution/exec.c:81:12
	movq	-24(%rbp), %rax
	.loc	2 81 17 is_stmt 0               # src/execution/exec.c:81:17
	movq	(%rax), %rax
	.loc	2 81 28                         # src/execution/exec.c:81:28
	cmpl	$8, 4(%rax)
.Ltmp43:
	.loc	2 81 12                         # src/execution/exec.c:81:12
	jne	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp44:
	.loc	2 82 32 is_stmt 1               # src/execution/exec.c:82:32
	movl	-12(%rbp), %edx
	.loc	2 82 4 is_stmt 0                # src/execution/exec.c:82:4
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	exec_pipe
	jmp	.LBB3_13
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp45:
	.loc	2 83 12 is_stmt 1               # src/execution/exec.c:83:12
	movq	-24(%rbp), %rax
	.loc	2 83 17 is_stmt 0               # src/execution/exec.c:83:17
	movq	(%rax), %rax
	.loc	2 83 28                         # src/execution/exec.c:83:28
	cmpl	$13, 4(%rax)
	.loc	2 83 38                         # src/execution/exec.c:83:38
	je	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 83 41                         # src/execution/exec.c:83:41
	movq	-24(%rbp), %rax
	.loc	2 83 46                         # src/execution/exec.c:83:46
	movq	(%rax), %rax
	.loc	2 83 57                         # src/execution/exec.c:83:57
	cmpl	$14, 4(%rax)
.Ltmp46:
	.loc	2 83 12                         # src/execution/exec.c:83:12
	jne	.LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp47:
	.loc	2 84 4 is_stmt 1                # src/execution/exec.c:84:4
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	exec_list
.Ltmp48:
.LBB3_12:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 4 is_stmt 0                 # src/execution/exec.c:0:4
	jmp	.LBB3_13
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_14
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 85 36 is_stmt 1               # src/execution/exec.c:85:36
	movq	-24(%rbp), %rsi
	.loc	2 85 47 is_stmt 0               # src/execution/exec.c:85:47
	movq	-24(%rbp), %rdx
	.loc	2 85 52                         # src/execution/exec.c:85:52
	movl	-12(%rbp), %ecx
	.loc	2 85 3                          # src/execution/exec.c:85:3
	leaq	-8(%rbp), %rdi
	callq	wait_command_ending
	.loc	2 86 9 is_stmt 1                # src/execution/exec.c:86:9
	movq	-24(%rbp), %rax
	.loc	2 86 14 is_stmt 0               # src/execution/exec.c:86:14
	movq	8(%rax), %rax
	.loc	2 86 7                          # src/execution/exec.c:86:7
	movq	%rax, -24(%rbp)
	.loc	2 87 4 is_stmt 1                # src/execution/exec.c:87:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp49:
	.loc	2 77 2                          # src/execution/exec.c:77:2
	jmp	.LBB3_1
.LBB3_15:
	.loc	2 89 1                          # src/execution/exec.c:89:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp50:
.Lfunc_end3:
	.size	execution, .Lfunc_end3-execution
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fork"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s: command not found\n"
	.size	.L.str.1, 23

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
	.byte	6                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xb:0xc4c DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1f DW_TAG_enumeration_type
	.long	73                              # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x49:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x50:0x25 DW_TAG_enumeration_type
	.long	73                              # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x5c:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x62:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x68:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6e:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x75:0x1f DW_TAG_enumeration_type
	.long	73                              # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x81:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x87:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8d:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x94:0x7f DW_TAG_enumeration_type
	.long	73                              # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xa0:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa6:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xac:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb2:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb8:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xbe:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc4:0x6 DW_TAG_enumerator
	.long	.Linfo_string23                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xca:0x6 DW_TAG_enumerator
	.long	.Linfo_string24                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd0:0x6 DW_TAG_enumerator
	.long	.Linfo_string25                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd6:0x6 DW_TAG_enumerator
	.long	.Linfo_string26                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xdc:0x6 DW_TAG_enumerator
	.long	.Linfo_string27                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xe2:0x6 DW_TAG_enumerator
	.long	.Linfo_string28                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xe8:0x6 DW_TAG_enumerator
	.long	.Linfo_string29                 # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xee:0x6 DW_TAG_enumerator
	.long	.Linfo_string30                 # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xf4:0x6 DW_TAG_enumerator
	.long	.Linfo_string31                 # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xfa:0x6 DW_TAG_enumerator
	.long	.Linfo_string32                 # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x100:0x6 DW_TAG_enumerator
	.long	.Linfo_string33                 # DW_AT_name
	.byte	16                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x106:0x6 DW_TAG_enumerator
	.long	.Linfo_string34                 # DW_AT_name
	.byte	17                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x10c:0x6 DW_TAG_enumerator
	.long	.Linfo_string35                 # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x113:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	507                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x12c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	514                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x13b:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string39                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x150:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	1229                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x15e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	3148                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x16d:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x182:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	1229                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x190:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string94                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	3153                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x19e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string210                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	1527                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1ac:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string211                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	731                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1bb:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x1d0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	1234                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1de:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string211                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	731                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1ec:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string210                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	1527                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1fb:0x7 DW_TAG_base_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x202:0x5 DW_TAG_pointer_type
	.long	519                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x207:0xb DW_TAG_typedef
	.long	530                             # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x212:0xc9 DW_TAG_structure_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x21a:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x226:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x232:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x23e:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x24a:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x256:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x262:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	750                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26e:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	804                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x27a:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	870                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x286:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	943                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x292:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1099                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x29e:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1021                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2aa:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1165                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2b6:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1219                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2c2:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1224                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2ce:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1224                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2db:0x7 DW_TAG_base_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2e2:0x5 DW_TAG_pointer_type
	.long	743                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2e7:0x7 DW_TAG_base_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2ee:0x5 DW_TAG_pointer_type
	.long	755                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2f3:0xb DW_TAG_typedef
	.long	766                             # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2fe:0x21 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x306:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x312:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	799                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x31f:0x5 DW_TAG_pointer_type
	.long	766                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x324:0x5 DW_TAG_pointer_type
	.long	809                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x329:0xb DW_TAG_typedef
	.long	820                             # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x334:0x2d DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x33c:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	865                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x348:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	865                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x354:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	865                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x361:0x5 DW_TAG_pointer_type
	.long	731                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x366:0x5 DW_TAG_pointer_type
	.long	875                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x36b:0xb DW_TAG_typedef
	.long	886                             # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x376:0x39 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x37e:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x38a:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x396:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	943                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3a2:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1021                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3af:0x5 DW_TAG_pointer_type
	.long	948                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3b4:0xb DW_TAG_typedef
	.long	959                             # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3bf:0x39 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3c7:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3d3:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3df:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3eb:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1016                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3f8:0x5 DW_TAG_pointer_type
	.long	959                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3fd:0x5 DW_TAG_pointer_type
	.long	1026                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x402:0xb DW_TAG_typedef
	.long	1037                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x40d:0x39 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x415:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x421:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x42d:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x439:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x446:0x5 DW_TAG_pointer_type
	.long	1037                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x44b:0x5 DW_TAG_pointer_type
	.long	1104                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x450:0xb DW_TAG_typedef
	.long	1115                            # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x45b:0x2d DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x463:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x46f:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x47b:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1160                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x488:0x5 DW_TAG_pointer_type
	.long	1115                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x48d:0x5 DW_TAG_pointer_type
	.long	1170                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x492:0xb DW_TAG_typedef
	.long	1181                            # DW_AT_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x49d:0x21 DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4a5:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4b1:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1214                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4be:0x5 DW_TAG_pointer_type
	.long	1181                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4c3:0x5 DW_TAG_pointer_type
	.long	738                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4c8:0x5 DW_TAG_pointer_type
	.long	530                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4cd:0x5 DW_TAG_pointer_type
	.long	1234                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4d2:0x5 DW_TAG_pointer_type
	.long	1239                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4d7:0xb DW_TAG_typedef
	.long	1250                            # DW_AT_type
	.long	.Linfo_string209                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4e2:0xbe DW_TAG_structure_type
	.long	.Linfo_string208                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4eb:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1440                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f7:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x503:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x50f:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1219                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x51b:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x527:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x533:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x53f:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1219                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x54b:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1461                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x557:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1099                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x563:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1527                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x56f:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1690                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x57b:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1804                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x587:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2637                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x593:0xc DW_TAG_member
	.long	.Linfo_string194                # DW_AT_name
	.long	2986                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5a0:0x5 DW_TAG_pointer_type
	.long	1445                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5a5:0xb DW_TAG_typedef
	.long	1456                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x5b0:0x5 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	9                               # Abbrev [9] 0x5b5:0x5 DW_TAG_pointer_type
	.long	1466                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5ba:0xb DW_TAG_typedef
	.long	1477                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5c5:0x2d DW_TAG_structure_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5cd:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5d9:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5e5:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1522                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5f2:0x5 DW_TAG_pointer_type
	.long	1477                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5f7:0x5 DW_TAG_pointer_type
	.long	1532                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5fc:0xb DW_TAG_typedef
	.long	1543                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x607:0x2d DW_TAG_structure_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x60f:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1588                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x61b:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1685                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x627:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1685                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x634:0x5 DW_TAG_pointer_type
	.long	1593                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x639:0xb DW_TAG_typedef
	.long	1604                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x644:0x51 DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x64c:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x658:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x664:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	865                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x670:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x67c:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1224                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x688:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1224                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x695:0x5 DW_TAG_pointer_type
	.long	1543                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x69a:0x5 DW_TAG_pointer_type
	.long	1695                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x69f:0xb DW_TAG_typedef
	.long	1706                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6aa:0x5d DW_TAG_structure_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6b2:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6be:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6ca:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6d6:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6e2:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1165                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6ee:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1799                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6fa:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1799                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x707:0x5 DW_TAG_pointer_type
	.long	1706                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x70c:0x56 DW_TAG_structure_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x714:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1824                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x720:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x724:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1890                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x730:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	1913                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x73d:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2584                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x749:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x755:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2631                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x762:0xb DW_TAG_typedef
	.long	1901                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x76d:0x5 DW_TAG_pointer_type
	.long	1906                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x772:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x773:0x5 DW_TAG_formal_parameter
	.long	731                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x779:0x5 DW_TAG_pointer_type
	.long	1918                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x77e:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x77f:0x5 DW_TAG_formal_parameter
	.long	731                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x784:0x5 DW_TAG_formal_parameter
	.long	1935                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x789:0x5 DW_TAG_formal_parameter
	.long	2547                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x78f:0x5 DW_TAG_pointer_type
	.long	1940                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x794:0xb DW_TAG_typedef
	.long	1951                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x79f:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7a3:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7af:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7bb:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7c7:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7d3:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2015                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7df:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7e3:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2462                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7ef:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2043                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7fb:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7ff:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x80b:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2492                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x818:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2084                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x824:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x828:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x834:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x840:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2503                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x84d:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2137                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x859:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x85d:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x869:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2492                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x875:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2503                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x882:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2190                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x88e:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x892:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x89e:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2492                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8aa:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8b6:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8c2:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x8cf:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2267                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8db:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8df:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2547                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8eb:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2566                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8f7:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2307                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x903:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x907:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2323                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x913:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x917:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2547                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x923:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2547                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x930:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2573                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x93e:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2378                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x94a:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x94e:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2559                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x95a:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x967:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2419                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x973:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x977:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2547                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x983:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x98f:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	73                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x99e:0xc DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x9a3:0x6 DW_TAG_subrange_type
	.long	2474                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x9aa:0x7 DW_TAG_base_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x9b1:0xb DW_TAG_typedef
	.long	731                             # DW_AT_type
	.long	.Linfo_string122                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9bc:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string124                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9c7:0xb DW_TAG_typedef
	.long	2514                            # DW_AT_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x9d2:0x21 DW_TAG_union_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9da:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x9e6:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2547                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x9f3:0x1 DW_TAG_pointer_type
	.byte	10                              # Abbrev [10] 0x9f4:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9ff:0x7 DW_TAG_base_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xa06:0x7 DW_TAG_base_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xa0d:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa18:0xb DW_TAG_typedef
	.long	2595                            # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xa23:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa27:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2612                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xa34:0xc DW_TAG_array_type
	.long	2624                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xa39:0x6 DW_TAG_subrange_type
	.long	2474                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa40:0x7 DW_TAG_base_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa47:0x5 DW_TAG_pointer_type
	.long	2636                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xa4c:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0xa4d:0x5 DW_TAG_pointer_type
	.long	2642                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa52:0xbd DW_TAG_structure_type
	.long	.Linfo_string193                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa5a:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2831                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa66:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa72:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2853                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa7e:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2864                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa8a:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2492                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa96:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2875                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaa2:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaae:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2831                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaba:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2886                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xac6:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2897                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xad2:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	2908                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xade:0xc DW_TAG_member
	.long	.Linfo_string184                # DW_AT_name
	.long	2919                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaea:0xc DW_TAG_member
	.long	.Linfo_string190                # DW_AT_name
	.long	2919                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaf6:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	2919                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb02:0xc DW_TAG_member
	.long	.Linfo_string192                # DW_AT_name
	.long	2974                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb0f:0xb DW_TAG_typedef
	.long	2624                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb1a:0xb DW_TAG_typedef
	.long	2624                            # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb25:0xb DW_TAG_typedef
	.long	2624                            # DW_AT_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb30:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb3b:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb46:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb51:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb5c:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb67:0x21 DW_TAG_structure_type
	.long	.Linfo_string189                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb6f:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	2952                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb7b:0xc DW_TAG_member
	.long	.Linfo_string187                # DW_AT_name
	.long	2963                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb88:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb93:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string188                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xb9e:0xc DW_TAG_array_type
	.long	2963                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xba3:0x6 DW_TAG_subrange_type
	.long	2474                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xbaa:0x5 DW_TAG_pointer_type
	.long	2991                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xbaf:0x69 DW_TAG_structure_type
	.long	.Linfo_string207                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xbb7:0xc DW_TAG_member
	.long	.Linfo_string195                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbc3:0xc DW_TAG_member
	.long	.Linfo_string197                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbcf:0xc DW_TAG_member
	.long	.Linfo_string198                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbdb:0xc DW_TAG_member
	.long	.Linfo_string199                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbe7:0xc DW_TAG_member
	.long	.Linfo_string200                # DW_AT_name
	.long	3107                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbf3:0xc DW_TAG_member
	.long	.Linfo_string203                # DW_AT_name
	.long	3125                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbff:0xc DW_TAG_member
	.long	.Linfo_string204                # DW_AT_name
	.long	3137                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xc0b:0xc DW_TAG_member
	.long	.Linfo_string206                # DW_AT_name
	.long	3137                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc18:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string196                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc23:0xb DW_TAG_typedef
	.long	3118                            # DW_AT_type
	.long	.Linfo_string202                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc2e:0x7 DW_TAG_base_type
	.long	.Linfo_string201                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xc35:0xc DW_TAG_array_type
	.long	3107                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc3a:0x6 DW_TAG_subrange_type
	.long	2474                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc41:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string205                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc4c:0x5 DW_TAG_pointer_type
	.long	514                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc51:0x5 DW_TAG_pointer_type
	.long	1588                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/execution/exec.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=59
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=117
.Linfo_string4:
	.asciz	"command"                       # string offset=130
.Linfo_string5:
	.asciz	"builtin"                       # string offset=138
.Linfo_string6:
	.asciz	"assignment"                    # string offset=146
.Linfo_string7:
	.asciz	"e_cmd_type"                    # string offset=157
.Linfo_string8:
	.asciz	"run"                           # string offset=168
.Linfo_string9:
	.asciz	"stop"                          # string offset=172
.Linfo_string10:
	.asciz	"success"                       # string offset=177
.Linfo_string11:
	.asciz	"failure"                       # string offset=185
.Linfo_string12:
	.asciz	"e_state"                       # string offset=193
.Linfo_string13:
	.asciz	"no_type"                       # string offset=201
.Linfo_string14:
	.asciz	"root"                          # string offset=209
.Linfo_string15:
	.asciz	"simple_command"                # string offset=214
.Linfo_string16:
	.asciz	"e_ast_node_type"               # string offset=229
.Linfo_string17:
	.asciz	"l_parentheses"                 # string offset=245
.Linfo_string18:
	.asciz	"r_parentheses"                 # string offset=259
.Linfo_string19:
	.asciz	"simple_quote"                  # string offset=273
.Linfo_string20:
	.asciz	"double_quote"                  # string offset=286
.Linfo_string21:
	.asciz	"exit_status"                   # string offset=299
.Linfo_string22:
	.asciz	"expansion"                     # string offset=311
.Linfo_string23:
	.asciz	"operator"                      # string offset=321
.Linfo_string24:
	.asciz	"wildcard"                      # string offset=330
.Linfo_string25:
	.asciz	"pipe_op"                       # string offset=339
.Linfo_string26:
	.asciz	"heredoc"                       # string offset=347
.Linfo_string27:
	.asciz	"outfile"                       # string offset=355
.Linfo_string28:
	.asciz	"append"                        # string offset=363
.Linfo_string29:
	.asciz	"infile"                        # string offset=370
.Linfo_string30:
	.asciz	"and_if"                        # string offset=377
.Linfo_string31:
	.asciz	"or_if"                         # string offset=384
.Linfo_string32:
	.asciz	"word"                          # string offset=390
.Linfo_string33:
	.asciz	"name"                          # string offset=395
.Linfo_string34:
	.asciz	"assignment_word"               # string offset=400
.Linfo_string35:
	.asciz	"eof_token"                     # string offset=416
.Linfo_string36:
	.asciz	"e_token"                       # string offset=426
.Linfo_string37:
	.asciz	"is_first_command"              # string offset=434
.Linfo_string38:
	.asciz	"_Bool"                         # string offset=451
.Linfo_string39:
	.asciz	"exec_command"                  # string offset=457
.Linfo_string40:
	.asciz	"wait_command_ending"           # string offset=470
.Linfo_string41:
	.asciz	"execution"                     # string offset=490
.Linfo_string42:
	.asciz	"cmd"                           # string offset=500
.Linfo_string43:
	.asciz	"id"                            # string offset=504
.Linfo_string44:
	.asciz	"int"                           # string offset=507
.Linfo_string45:
	.asciz	"pid"                           # string offset=511
.Linfo_string46:
	.asciz	"type"                          # string offset=515
.Linfo_string47:
	.asciz	"wstatus"                       # string offset=520
.Linfo_string48:
	.asciz	"char"                          # string offset=528
.Linfo_string49:
	.asciz	"path"                          # string offset=533
.Linfo_string50:
	.asciz	"arg"                           # string offset=538
.Linfo_string51:
	.asciz	"value"                         # string offset=542
.Linfo_string52:
	.asciz	"next"                          # string offset=548
.Linfo_string53:
	.asciz	"s_arg"                         # string offset=553
.Linfo_string54:
	.asciz	"t_arg"                         # string offset=559
.Linfo_string55:
	.asciz	"pipe"                          # string offset=565
.Linfo_string56:
	.asciz	"to_close"                      # string offset=570
.Linfo_string57:
	.asciz	"write"                         # string offset=579
.Linfo_string58:
	.asciz	"read"                          # string offset=585
.Linfo_string59:
	.asciz	"s_pipe"                        # string offset=590
.Linfo_string60:
	.asciz	"t_pipe"                        # string offset=597
.Linfo_string61:
	.asciz	"redir"                         # string offset=604
.Linfo_string62:
	.asciz	"in_fd"                         # string offset=610
.Linfo_string63:
	.asciz	"out_fd"                        # string offset=616
.Linfo_string64:
	.asciz	"fd"                            # string offset=623
.Linfo_string65:
	.asciz	"s_infile"                      # string offset=626
.Linfo_string66:
	.asciz	"t_infile"                      # string offset=635
.Linfo_string67:
	.asciz	"s_outfile"                     # string offset=644
.Linfo_string68:
	.asciz	"t_outfile"                     # string offset=654
.Linfo_string69:
	.asciz	"s_redir"                       # string offset=664
.Linfo_string70:
	.asciz	"t_redir"                       # string offset=672
.Linfo_string71:
	.asciz	"assign"                        # string offset=680
.Linfo_string72:
	.asciz	"s_var"                         # string offset=687
.Linfo_string73:
	.asciz	"t_var"                         # string offset=693
.Linfo_string74:
	.asciz	"s_expan"                       # string offset=699
.Linfo_string75:
	.asciz	"t_expan"                       # string offset=707
.Linfo_string76:
	.asciz	"arg_array"                     # string offset=715
.Linfo_string77:
	.asciz	"prev"                          # string offset=725
.Linfo_string78:
	.asciz	"s_cmd"                         # string offset=730
.Linfo_string79:
	.asciz	"t_cmd"                         # string offset=736
.Linfo_string80:
	.asciz	"minishell"                     # string offset=742
.Linfo_string81:
	.asciz	"dir"                           # string offset=752
.Linfo_string82:
	.asciz	"__dirstream"                   # string offset=756
.Linfo_string83:
	.asciz	"DIR"                           # string offset=768
.Linfo_string84:
	.asciz	"state"                         # string offset=772
.Linfo_string85:
	.asciz	"input"                         # string offset=778
.Linfo_string86:
	.asciz	"prompt"                        # string offset=784
.Linfo_string87:
	.asciz	"operator_nbr"                  # string offset=791
.Linfo_string88:
	.asciz	"env_array"                     # string offset=804
.Linfo_string89:
	.asciz	"env"                           # string offset=814
.Linfo_string90:
	.asciz	"s_env"                         # string offset=818
.Linfo_string91:
	.asciz	"t_env"                         # string offset=824
.Linfo_string92:
	.asciz	"local"                         # string offset=830
.Linfo_string93:
	.asciz	"syntax_tree"                   # string offset=836
.Linfo_string94:
	.asciz	"node"                          # string offset=848
.Linfo_string95:
	.asciz	"pipe_fd"                       # string offset=853
.Linfo_string96:
	.asciz	"left"                          # string offset=861
.Linfo_string97:
	.asciz	"right"                         # string offset=866
.Linfo_string98:
	.asciz	"s_ast_node"                    # string offset=872
.Linfo_string99:
	.asciz	"t_ast_node"                    # string offset=883
.Linfo_string100:
	.asciz	"s_ast"                         # string offset=894
.Linfo_string101:
	.asciz	"t_ast"                         # string offset=900
.Linfo_string102:
	.asciz	"token_stream"                  # string offset=906
.Linfo_string103:
	.asciz	"quote_nbr"                     # string offset=919
.Linfo_string104:
	.asciz	"length"                        # string offset=929
.Linfo_string105:
	.asciz	"lexeme"                        # string offset=936
.Linfo_string106:
	.asciz	"s_token"                       # string offset=943
.Linfo_string107:
	.asciz	"t_token"                       # string offset=951
.Linfo_string108:
	.asciz	"sighandler"                    # string offset=959
.Linfo_string109:
	.asciz	"__sigaction_handler"           # string offset=970
.Linfo_string110:
	.asciz	"sa_handler"                    # string offset=990
.Linfo_string111:
	.asciz	"__sighandler_t"                # string offset=1001
.Linfo_string112:
	.asciz	"sa_sigaction"                  # string offset=1016
.Linfo_string113:
	.asciz	"si_signo"                      # string offset=1029
.Linfo_string114:
	.asciz	"si_errno"                      # string offset=1038
.Linfo_string115:
	.asciz	"si_code"                       # string offset=1047
.Linfo_string116:
	.asciz	"__pad0"                        # string offset=1055
.Linfo_string117:
	.asciz	"_sifields"                     # string offset=1062
.Linfo_string118:
	.asciz	"_pad"                          # string offset=1072
.Linfo_string119:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1077
.Linfo_string120:
	.asciz	"_kill"                         # string offset=1097
.Linfo_string121:
	.asciz	"si_pid"                        # string offset=1103
.Linfo_string122:
	.asciz	"__pid_t"                       # string offset=1110
.Linfo_string123:
	.asciz	"si_uid"                        # string offset=1118
.Linfo_string124:
	.asciz	"__uid_t"                       # string offset=1125
.Linfo_string125:
	.asciz	"_timer"                        # string offset=1133
.Linfo_string126:
	.asciz	"si_tid"                        # string offset=1140
.Linfo_string127:
	.asciz	"si_overrun"                    # string offset=1147
.Linfo_string128:
	.asciz	"si_sigval"                     # string offset=1158
.Linfo_string129:
	.asciz	"sival_int"                     # string offset=1168
.Linfo_string130:
	.asciz	"sival_ptr"                     # string offset=1178
.Linfo_string131:
	.asciz	"sigval"                        # string offset=1188
.Linfo_string132:
	.asciz	"__sigval_t"                    # string offset=1195
.Linfo_string133:
	.asciz	"_rt"                           # string offset=1206
.Linfo_string134:
	.asciz	"_sigchld"                      # string offset=1210
.Linfo_string135:
	.asciz	"si_status"                     # string offset=1219
.Linfo_string136:
	.asciz	"si_utime"                      # string offset=1229
.Linfo_string137:
	.asciz	"long int"                      # string offset=1238
.Linfo_string138:
	.asciz	"__clock_t"                     # string offset=1247
.Linfo_string139:
	.asciz	"si_stime"                      # string offset=1257
.Linfo_string140:
	.asciz	"_sigfault"                     # string offset=1266
.Linfo_string141:
	.asciz	"si_addr"                       # string offset=1276
.Linfo_string142:
	.asciz	"si_addr_lsb"                   # string offset=1284
.Linfo_string143:
	.asciz	"short"                         # string offset=1296
.Linfo_string144:
	.asciz	"_bounds"                       # string offset=1302
.Linfo_string145:
	.asciz	"_addr_bnd"                     # string offset=1310
.Linfo_string146:
	.asciz	"_lower"                        # string offset=1320
.Linfo_string147:
	.asciz	"_upper"                        # string offset=1327
.Linfo_string148:
	.asciz	"_pkey"                         # string offset=1334
.Linfo_string149:
	.asciz	"__uint32_t"                    # string offset=1340
.Linfo_string150:
	.asciz	"_sigpoll"                      # string offset=1351
.Linfo_string151:
	.asciz	"si_band"                       # string offset=1360
.Linfo_string152:
	.asciz	"si_fd"                         # string offset=1368
.Linfo_string153:
	.asciz	"_sigsys"                       # string offset=1374
.Linfo_string154:
	.asciz	"_call_addr"                    # string offset=1382
.Linfo_string155:
	.asciz	"_syscall"                      # string offset=1393
.Linfo_string156:
	.asciz	"_arch"                         # string offset=1402
.Linfo_string157:
	.asciz	"siginfo_t"                     # string offset=1408
.Linfo_string158:
	.asciz	"sa_mask"                       # string offset=1418
.Linfo_string159:
	.asciz	"__val"                         # string offset=1426
.Linfo_string160:
	.asciz	"long unsigned int"             # string offset=1432
.Linfo_string161:
	.asciz	"__sigset_t"                    # string offset=1450
.Linfo_string162:
	.asciz	"sa_flags"                      # string offset=1461
.Linfo_string163:
	.asciz	"sa_restorer"                   # string offset=1470
.Linfo_string164:
	.asciz	"sigaction"                     # string offset=1482
.Linfo_string165:
	.asciz	"statbuf"                       # string offset=1492
.Linfo_string166:
	.asciz	"st_dev"                        # string offset=1500
.Linfo_string167:
	.asciz	"__dev_t"                       # string offset=1507
.Linfo_string168:
	.asciz	"st_ino"                        # string offset=1515
.Linfo_string169:
	.asciz	"__ino_t"                       # string offset=1522
.Linfo_string170:
	.asciz	"st_nlink"                      # string offset=1530
.Linfo_string171:
	.asciz	"__nlink_t"                     # string offset=1539
.Linfo_string172:
	.asciz	"st_mode"                       # string offset=1549
.Linfo_string173:
	.asciz	"__mode_t"                      # string offset=1557
.Linfo_string174:
	.asciz	"st_uid"                        # string offset=1566
.Linfo_string175:
	.asciz	"st_gid"                        # string offset=1573
.Linfo_string176:
	.asciz	"__gid_t"                       # string offset=1580
.Linfo_string177:
	.asciz	"st_rdev"                       # string offset=1588
.Linfo_string178:
	.asciz	"st_size"                       # string offset=1596
.Linfo_string179:
	.asciz	"__off_t"                       # string offset=1604
.Linfo_string180:
	.asciz	"st_blksize"                    # string offset=1612
.Linfo_string181:
	.asciz	"__blksize_t"                   # string offset=1623
.Linfo_string182:
	.asciz	"st_blocks"                     # string offset=1635
.Linfo_string183:
	.asciz	"__blkcnt_t"                    # string offset=1645
.Linfo_string184:
	.asciz	"st_atim"                       # string offset=1656
.Linfo_string185:
	.asciz	"tv_sec"                        # string offset=1664
.Linfo_string186:
	.asciz	"__time_t"                      # string offset=1671
.Linfo_string187:
	.asciz	"tv_nsec"                       # string offset=1680
.Linfo_string188:
	.asciz	"__syscall_slong_t"             # string offset=1688
.Linfo_string189:
	.asciz	"timespec"                      # string offset=1706
.Linfo_string190:
	.asciz	"st_mtim"                       # string offset=1715
.Linfo_string191:
	.asciz	"st_ctim"                       # string offset=1723
.Linfo_string192:
	.asciz	"__glibc_reserved"              # string offset=1731
.Linfo_string193:
	.asciz	"stat"                          # string offset=1748
.Linfo_string194:
	.asciz	"term"                          # string offset=1753
.Linfo_string195:
	.asciz	"c_iflag"                       # string offset=1758
.Linfo_string196:
	.asciz	"tcflag_t"                      # string offset=1766
.Linfo_string197:
	.asciz	"c_oflag"                       # string offset=1775
.Linfo_string198:
	.asciz	"c_cflag"                       # string offset=1783
.Linfo_string199:
	.asciz	"c_lflag"                       # string offset=1791
.Linfo_string200:
	.asciz	"c_line"                        # string offset=1799
.Linfo_string201:
	.asciz	"unsigned char"                 # string offset=1806
.Linfo_string202:
	.asciz	"cc_t"                          # string offset=1820
.Linfo_string203:
	.asciz	"c_cc"                          # string offset=1825
.Linfo_string204:
	.asciz	"c_ispeed"                      # string offset=1830
.Linfo_string205:
	.asciz	"speed_t"                       # string offset=1839
.Linfo_string206:
	.asciz	"c_ospeed"                      # string offset=1847
.Linfo_string207:
	.asciz	"termios"                       # string offset=1856
.Linfo_string208:
	.asciz	"s_minishell"                   # string offset=1864
.Linfo_string209:
	.asciz	"t_minishell"                   # string offset=1876
.Linfo_string210:
	.asciz	"ast"                           # string offset=1888
.Linfo_string211:
	.asciz	"i"                             # string offset=1892
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exec_command
	.addrsig_sym assign_variable
	.addrsig_sym is_builtin
	.addrsig_sym exec_builtin
	.addrsig_sym ft_strlen
	.addrsig_sym fork
	.addrsig_sym perror
	.addrsig_sym child_job
	.addrsig_sym ft_printf
	.addrsig_sym wait_command_ending
	.addrsig_sym waitpid
	.addrsig_sym get_env_array
	.addrsig_sym __errno_location
	.addrsig_sym exec_pipe
	.addrsig_sym exec_list
	.addrsig_sym g_signal
	.section	.debug_line,"",@progbits
.Lline_table_start0:

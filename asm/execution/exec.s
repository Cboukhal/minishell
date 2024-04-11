	.text
	.file	"exec.c"
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/execution/../../include/minishell.h"
	.globl	is_first_command                # -- Begin function is_first_command
	.p2align	4, 0x90
	.type	is_first_command,@function
is_first_command:                       # @is_first_command
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/execution/exec.c"
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
	jmp	.LBB1_17
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
	jmp	.LBB1_17
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
	.loc	2 29 17 is_stmt 1               # src/execution/exec.c:29:17
	movq	-8(%rbp), %rax
	.loc	2 29 16 is_stmt 0               # src/execution/exec.c:29:16
	movq	(%rax), %rdi
	.loc	2 29 30                         # src/execution/exec.c:29:30
	movq	-16(%rbp), %rax
	.loc	2 29 29                         # src/execution/exec.c:29:29
	movq	(%rax), %rsi
	.loc	2 29 3                          # src/execution/exec.c:29:3
	callq	exec_builtin
	jmp	.LBB1_16
.LBB1_7:
.Ltmp14:
	.loc	2 30 13 is_stmt 1               # src/execution/exec.c:30:13
	movq	-16(%rbp), %rax
	.loc	2 30 12 is_stmt 0               # src/execution/exec.c:30:12
	movq	(%rax), %rax
	.loc	2 30 11                         # src/execution/exec.c:30:11
	cmpq	$0, 24(%rax)
	.loc	2 30 24                         # src/execution/exec.c:30:24
	je	.LBB1_14
# %bb.8:
	.loc	2 30 39                         # src/execution/exec.c:30:39
	movq	-16(%rbp), %rax
	.loc	2 30 38                         # src/execution/exec.c:30:38
	movq	(%rax), %rax
	.loc	2 30 45                         # src/execution/exec.c:30:45
	movq	16(%rax), %rdi
	.loc	2 30 27                         # src/execution/exec.c:30:27
	callq	ft_strlen
	.loc	2 30 51                         # src/execution/exec.c:30:51
	cmpq	$0, %rax
.Ltmp15:
	.loc	2 30 11                         # src/execution/exec.c:30:11
	jbe	.LBB1_14
# %bb.9:
.Ltmp16:
	.loc	2 32 17 is_stmt 1               # src/execution/exec.c:32:17
	callq	fork
	movl	%eax, %ecx
	.loc	2 32 5 is_stmt 0                # src/execution/exec.c:32:5
	movq	-16(%rbp), %rax
	.loc	2 32 4                          # src/execution/exec.c:32:4
	movq	(%rax), %rax
	.loc	2 32 15                         # src/execution/exec.c:32:15
	movl	%ecx, 4(%rax)
.Ltmp17:
	.loc	2 33 9 is_stmt 1                # src/execution/exec.c:33:9
	movq	-16(%rbp), %rax
	.loc	2 33 8 is_stmt 0                # src/execution/exec.c:33:8
	movq	(%rax), %rax
	.loc	2 33 19                         # src/execution/exec.c:33:19
	cmpl	$-1, 4(%rax)
.Ltmp18:
	.loc	2 33 7                          # src/execution/exec.c:33:7
	jne	.LBB1_11
# %bb.10:
.Ltmp19:
	.loc	2 34 4 is_stmt 1                # src/execution/exec.c:34:4
	movabsq	$.L.str, %rdi
	callq	perror
.Ltmp20:
.LBB1_11:
	.loc	2 35 9                          # src/execution/exec.c:35:9
	movq	-16(%rbp), %rax
	.loc	2 35 8 is_stmt 0                # src/execution/exec.c:35:8
	movq	(%rax), %rax
	.loc	2 35 19                         # src/execution/exec.c:35:19
	cmpl	$0, 4(%rax)
.Ltmp21:
	.loc	2 35 7                          # src/execution/exec.c:35:7
	jne	.LBB1_13
# %bb.12:
.Ltmp22:
	.loc	2 36 14 is_stmt 1               # src/execution/exec.c:36:14
	movq	-8(%rbp), %rdi
	.loc	2 36 27 is_stmt 0               # src/execution/exec.c:36:27
	movq	-16(%rbp), %rax
	.loc	2 36 26                         # src/execution/exec.c:36:26
	movq	(%rax), %rsi
	.loc	2 36 35                         # src/execution/exec.c:36:35
	movq	-8(%rbp), %rax
	.loc	2 36 34                         # src/execution/exec.c:36:34
	movq	(%rax), %rax
	.loc	2 36 47                         # src/execution/exec.c:36:47
	movq	48(%rax), %rdx
	.loc	2 36 4                          # src/execution/exec.c:36:4
	callq	child_job
.Ltmp23:
.LBB1_13:
	.loc	2 37 2 is_stmt 1                # src/execution/exec.c:37:2
	jmp	.LBB1_15
.Ltmp24:
.LBB1_14:
	.loc	2 40 42                         # src/execution/exec.c:40:42
	movq	-16(%rbp), %rax
	.loc	2 40 41 is_stmt 0               # src/execution/exec.c:40:41
	movq	(%rax), %rax
	.loc	2 40 48                         # src/execution/exec.c:40:48
	movq	16(%rax), %rsi
	.loc	2 40 3                          # src/execution/exec.c:40:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 41 5 is_stmt 1                # src/execution/exec.c:41:5
	movq	-8(%rbp), %rax
	.loc	2 41 4 is_stmt 0                # src/execution/exec.c:41:4
	movq	(%rax), %rax
	.loc	2 41 29                         # src/execution/exec.c:41:29
	movb	$127, 44(%rax)
.Ltmp25:
.LBB1_15:
	.loc	2 0 29                          # src/execution/exec.c:0:29
	jmp	.LBB1_16
.LBB1_16:
	jmp	.LBB1_17
.LBB1_17:
	.loc	2 43 1 is_stmt 1                # src/execution/exec.c:43:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end1:
	.size	exec_command, .Lfunc_end1-exec_command
	.cfi_endproc
                                        # -- End function
	.globl	wait_command_ending             # -- Begin function wait_command_ending
	.p2align	4, 0x90
	.type	wait_command_ending,@function
wait_command_ending:                    # @wait_command_ending
.Lfunc_begin2:
	.loc	2 47 0                          # src/execution/exec.c:47:0
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
.Ltmp27:
	.loc	2 49 8 prologue_end             # src/execution/exec.c:49:8
	movq	-16(%rbp), %rax
	.loc	2 49 7 is_stmt 0                # src/execution/exec.c:49:7
	movq	(%rax), %rax
	.loc	2 49 6                          # src/execution/exec.c:49:6
	cmpq	$0, 24(%rax)
	.loc	2 49 20                         # src/execution/exec.c:49:20
	je	.LBB2_6
# %bb.1:
	.loc	2 49 25                         # src/execution/exec.c:49:25
	cmpl	$0, -28(%rbp)
	.loc	2 49 30                         # src/execution/exec.c:49:30
	jne	.LBB2_6
# %bb.2:
	.loc	2 49 35                         # src/execution/exec.c:49:35
	movq	-16(%rbp), %rax
	.loc	2 49 34                         # src/execution/exec.c:49:34
	movq	(%rax), %rax
	.loc	2 49 42                         # src/execution/exec.c:49:42
	movq	24(%rax), %rax
	.loc	2 49 33                         # src/execution/exec.c:49:33
	cmpl	$0, 4(%rax)
	.loc	2 50 3 is_stmt 1                # src/execution/exec.c:50:3
	je	.LBB2_6
# %bb.3:
	.loc	2 50 8 is_stmt 0                # src/execution/exec.c:50:8
	movq	-16(%rbp), %rax
	.loc	2 50 7                          # src/execution/exec.c:50:7
	movq	(%rax), %rax
	.loc	2 50 15                         # src/execution/exec.c:50:15
	movq	24(%rax), %rax
	.loc	2 50 6                          # src/execution/exec.c:50:6
	cmpq	$0, 24(%rax)
	.loc	2 50 26                         # src/execution/exec.c:50:26
	je	.LBB2_6
# %bb.4:
	.loc	2 50 31                         # src/execution/exec.c:50:31
	movq	-16(%rbp), %rax
	.loc	2 50 30                         # src/execution/exec.c:50:30
	movq	(%rax), %rax
	.loc	2 50 38                         # src/execution/exec.c:50:38
	movq	24(%rax), %rax
	.loc	2 50 49                         # src/execution/exec.c:50:49
	cmpl	$2, 8(%rax)
.Ltmp28:
	.loc	2 49 6 is_stmt 1                # src/execution/exec.c:49:6
	je	.LBB2_6
# %bb.5:
.Ltmp29:
	.loc	2 52 13                         # src/execution/exec.c:52:13
	movq	-16(%rbp), %rax
	.loc	2 52 12 is_stmt 0               # src/execution/exec.c:52:12
	movq	(%rax), %rax
	.loc	2 52 20                         # src/execution/exec.c:52:20
	movq	24(%rax), %rax
	.loc	2 52 26                         # src/execution/exec.c:52:26
	movl	4(%rax), %edi
	.loc	2 52 34                         # src/execution/exec.c:52:34
	movq	-16(%rbp), %rax
	.loc	2 52 33                         # src/execution/exec.c:52:33
	movq	(%rax), %rsi
	.loc	2 52 41                         # src/execution/exec.c:52:41
	addq	$16, %rsi
	.loc	2 52 3                          # src/execution/exec.c:52:3
	xorl	%edx, %edx
	callq	waitpid
	.loc	2 53 31 is_stmt 1               # src/execution/exec.c:53:31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	andl	$65280, %eax                    # imm = 0xFF00
	sarl	$8, %eax
	movb	%al, %cl
	.loc	2 53 5 is_stmt 0                # src/execution/exec.c:53:5
	movq	-8(%rbp), %rax
	.loc	2 53 4                          # src/execution/exec.c:53:4
	movq	(%rax), %rax
	.loc	2 53 29                         # src/execution/exec.c:53:29
	movb	%cl, 44(%rax)
.Ltmp30:
.LBB2_6:
	.loc	2 55 8 is_stmt 1                # src/execution/exec.c:55:8
	movq	-16(%rbp), %rax
	.loc	2 55 7 is_stmt 0                # src/execution/exec.c:55:7
	movq	(%rax), %rax
	.loc	2 55 6                          # src/execution/exec.c:55:6
	cmpq	$0, 32(%rax)
	.loc	2 55 21                         # src/execution/exec.c:55:21
	je	.LBB2_10
# %bb.7:
	.loc	2 55 26                         # src/execution/exec.c:55:26
	movq	-16(%rbp), %rax
	.loc	2 55 25                         # src/execution/exec.c:55:25
	movq	(%rax), %rax
	.loc	2 55 33                         # src/execution/exec.c:55:33
	movq	32(%rax), %rax
	.loc	2 55 24                         # src/execution/exec.c:55:24
	cmpq	$0, 24(%rax)
	.loc	2 56 3 is_stmt 1                # src/execution/exec.c:56:3
	je	.LBB2_10
# %bb.8:
	.loc	2 56 8 is_stmt 0                # src/execution/exec.c:56:8
	movq	-16(%rbp), %rax
	.loc	2 56 7                          # src/execution/exec.c:56:7
	movq	(%rax), %rax
	.loc	2 56 15                         # src/execution/exec.c:56:15
	movq	32(%rax), %rax
	.loc	2 56 27                         # src/execution/exec.c:56:27
	cmpl	$2, 8(%rax)
.Ltmp31:
	.loc	2 55 6 is_stmt 1                # src/execution/exec.c:55:6
	je	.LBB2_10
# %bb.9:
.Ltmp32:
	.loc	2 58 13                         # src/execution/exec.c:58:13
	movq	-16(%rbp), %rax
	.loc	2 58 12 is_stmt 0               # src/execution/exec.c:58:12
	movq	(%rax), %rax
	.loc	2 58 20                         # src/execution/exec.c:58:20
	movq	32(%rax), %rax
	.loc	2 58 27                         # src/execution/exec.c:58:27
	movl	4(%rax), %edi
	.loc	2 58 35                         # src/execution/exec.c:58:35
	movq	-16(%rbp), %rax
	.loc	2 58 34                         # src/execution/exec.c:58:34
	movq	(%rax), %rsi
	.loc	2 58 42                         # src/execution/exec.c:58:42
	addq	$16, %rsi
	.loc	2 58 3                          # src/execution/exec.c:58:3
	xorl	%edx, %edx
	callq	waitpid
	.loc	2 59 31 is_stmt 1               # src/execution/exec.c:59:31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	andl	$65280, %eax                    # imm = 0xFF00
	sarl	$8, %eax
	movb	%al, %cl
	.loc	2 59 5 is_stmt 0                # src/execution/exec.c:59:5
	movq	-8(%rbp), %rax
	.loc	2 59 4                          # src/execution/exec.c:59:4
	movq	(%rax), %rax
	.loc	2 59 29                         # src/execution/exec.c:59:29
	movb	%cl, 44(%rax)
.Ltmp33:
.LBB2_10:
	.loc	2 61 1 is_stmt 1                # src/execution/exec.c:61:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp34:
.Lfunc_end2:
	.size	wait_command_ending, .Lfunc_end2-wait_command_ending
	.cfi_endproc
                                        # -- End function
	.globl	execution                       # -- Begin function execution
	.p2align	4, 0x90
	.type	execution,@function
execution:                              # @execution
.Lfunc_begin3:
	.loc	2 64 0                          # src/execution/exec.c:64:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp35:
	.loc	2 68 4 prologue_end             # src/execution/exec.c:68:4
	movl	$0, -12(%rbp)
	.loc	2 69 8                          # src/execution/exec.c:69:8
	movq	-8(%rbp), %rax
	.loc	2 69 19 is_stmt 0               # src/execution/exec.c:69:19
	movq	72(%rax), %rax
	.loc	2 69 6                          # src/execution/exec.c:69:6
	movq	%rax, -24(%rbp)
	.loc	2 70 39 is_stmt 1               # src/execution/exec.c:70:39
	movq	-8(%rbp), %rax
	.loc	2 70 50 is_stmt 0               # src/execution/exec.c:70:50
	movq	56(%rax), %rdi
	.loc	2 70 25                         # src/execution/exec.c:70:25
	callq	get_env_array
	movq	%rax, %rcx
	.loc	2 70 2                          # src/execution/exec.c:70:2
	movq	-8(%rbp), %rax
	.loc	2 70 23                         # src/execution/exec.c:70:23
	movq	%rcx, 48(%rax)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 71 9 is_stmt 1                # src/execution/exec.c:71:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 71 13 is_stmt 0               # src/execution/exec.c:71:13
	je	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 71 16                         # src/execution/exec.c:71:16
	callq	__errno_location
	movq	%rax, %rcx
	.loc	2 71 22                         # src/execution/exec.c:71:22
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 71 27                         # src/execution/exec.c:71:27
	jne	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 71 39                         # src/execution/exec.c:71:39
	cmpl	$0, g_signal
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 39                          # src/execution/exec.c:0:39
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 71 2                          # src/execution/exec.c:71:2
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_15
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp36:
	.loc	2 73 7 is_stmt 1                # src/execution/exec.c:73:7
	movq	-24(%rbp), %rax
	.loc	2 73 12 is_stmt 0               # src/execution/exec.c:73:12
	movq	(%rax), %rax
	.loc	2 73 23                         # src/execution/exec.c:73:23
	cmpl	$2, 4(%rax)
.Ltmp37:
	.loc	2 73 7                          # src/execution/exec.c:73:7
	jne	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp38:
	.loc	2 74 30 is_stmt 1               # src/execution/exec.c:74:30
	movq	-24(%rbp), %rax
	.loc	2 74 35 is_stmt 0               # src/execution/exec.c:74:35
	movq	(%rax), %rsi
	.loc	2 74 41                         # src/execution/exec.c:74:41
	addq	$24, %rsi
	.loc	2 74 4                          # src/execution/exec.c:74:4
	leaq	-8(%rbp), %rdi
	callq	exec_command
	jmp	.LBB3_14
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp39:
	.loc	2 75 12 is_stmt 1               # src/execution/exec.c:75:12
	movq	-24(%rbp), %rax
	.loc	2 75 17 is_stmt 0               # src/execution/exec.c:75:17
	movq	(%rax), %rax
	.loc	2 75 28                         # src/execution/exec.c:75:28
	cmpl	$8, 4(%rax)
.Ltmp40:
	.loc	2 75 12                         # src/execution/exec.c:75:12
	jne	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp41:
	.loc	2 76 36 is_stmt 1               # src/execution/exec.c:76:36
	movl	-12(%rbp), %edx
	.loc	2 76 4 is_stmt 0                # src/execution/exec.c:76:4
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	exec_pipeline
	jmp	.LBB3_13
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp42:
	.loc	2 77 12 is_stmt 1               # src/execution/exec.c:77:12
	movq	-24(%rbp), %rax
	.loc	2 77 17 is_stmt 0               # src/execution/exec.c:77:17
	movq	(%rax), %rax
	.loc	2 77 28                         # src/execution/exec.c:77:28
	cmpl	$13, 4(%rax)
	.loc	2 77 38                         # src/execution/exec.c:77:38
	je	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 77 41                         # src/execution/exec.c:77:41
	movq	-24(%rbp), %rax
	.loc	2 77 46                         # src/execution/exec.c:77:46
	movq	(%rax), %rax
	.loc	2 77 57                         # src/execution/exec.c:77:57
	cmpl	$14, 4(%rax)
.Ltmp43:
	.loc	2 77 12                         # src/execution/exec.c:77:12
	jne	.LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp44:
	.loc	2 78 4 is_stmt 1                # src/execution/exec.c:78:4
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	exec_list
.Ltmp45:
.LBB3_12:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 4 is_stmt 0                 # src/execution/exec.c:0:4
	jmp	.LBB3_13
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_14
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 79 36 is_stmt 1               # src/execution/exec.c:79:36
	movq	-24(%rbp), %rsi
	.loc	2 79 47 is_stmt 0               # src/execution/exec.c:79:47
	movq	-24(%rbp), %rdx
	.loc	2 79 52                         # src/execution/exec.c:79:52
	movl	-12(%rbp), %ecx
	.loc	2 79 3                          # src/execution/exec.c:79:3
	leaq	-8(%rbp), %rdi
	callq	wait_command_ending
	.loc	2 80 9 is_stmt 1                # src/execution/exec.c:80:9
	movq	-24(%rbp), %rax
	.loc	2 80 14 is_stmt 0               # src/execution/exec.c:80:14
	movq	8(%rax), %rax
	.loc	2 80 7                          # src/execution/exec.c:80:7
	movq	%rax, -24(%rbp)
	.loc	2 81 4 is_stmt 1                # src/execution/exec.c:81:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp46:
	.loc	2 71 2                          # src/execution/exec.c:71:2
	jmp	.LBB3_1
.LBB3_15:
	.loc	2 83 1                          # src/execution/exec.c:83:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp47:
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
	.byte	1                               # Abbrev [1] 0xb:0xc27 DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x50:0x1f DW_TAG_enumeration_type
	.long	73                              # DW_AT_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x5c:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x62:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x68:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6f:0x7f DW_TAG_enumeration_type
	.long	73                              # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x7b:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x81:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x87:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8d:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x93:0x6 DW_TAG_enumerator
	.long	.Linfo_string16                 # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x99:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9f:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa5:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xab:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb1:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb7:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xbd:0x6 DW_TAG_enumerator
	.long	.Linfo_string23                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc3:0x6 DW_TAG_enumerator
	.long	.Linfo_string24                 # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc9:0x6 DW_TAG_enumerator
	.long	.Linfo_string25                 # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xcf:0x6 DW_TAG_enumerator
	.long	.Linfo_string26                 # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd5:0x6 DW_TAG_enumerator
	.long	.Linfo_string27                 # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xdb:0x6 DW_TAG_enumerator
	.long	.Linfo_string28                 # DW_AT_name
	.byte	16                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xe1:0x6 DW_TAG_enumerator
	.long	.Linfo_string29                 # DW_AT_name
	.byte	17                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xe7:0x6 DW_TAG_enumerator
	.long	.Linfo_string30                 # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xee:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	470                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x107:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	477                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x116:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x12b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	1192                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x139:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	3111                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x148:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x15d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	1192                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x16b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string90                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	3116                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x179:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string205                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	1497                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x187:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string206                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	694                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x196:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x1ab:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	1197                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1b9:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string206                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	694                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1c7:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string205                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	1497                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1d6:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1dd:0x5 DW_TAG_pointer_type
	.long	482                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1e2:0xb DW_TAG_typedef
	.long	493                             # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1ed:0xc9 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1f5:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x201:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x20d:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x219:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x225:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x231:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x23d:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	713                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x249:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	767                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x255:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	833                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x261:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26d:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1062                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x279:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	984                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x285:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1128                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x291:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x29d:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1187                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2a9:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1187                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2b6:0x7 DW_TAG_base_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2bd:0x5 DW_TAG_pointer_type
	.long	706                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2c2:0x7 DW_TAG_base_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2c9:0x5 DW_TAG_pointer_type
	.long	718                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ce:0xb DW_TAG_typedef
	.long	729                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2d9:0x21 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2e1:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x2fa:0x5 DW_TAG_pointer_type
	.long	729                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2ff:0x5 DW_TAG_pointer_type
	.long	772                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x304:0xb DW_TAG_typedef
	.long	783                             # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x30f:0x2d DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x317:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x323:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x32f:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x33c:0x5 DW_TAG_pointer_type
	.long	694                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x341:0x5 DW_TAG_pointer_type
	.long	838                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x346:0xb DW_TAG_typedef
	.long	849                             # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x351:0x39 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x359:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x365:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x371:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x37d:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	984                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x38a:0x5 DW_TAG_pointer_type
	.long	911                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x38f:0xb DW_TAG_typedef
	.long	922                             # DW_AT_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x39a:0x39 DW_TAG_structure_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3a2:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ae:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ba:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3c6:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	979                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3d3:0x5 DW_TAG_pointer_type
	.long	922                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3d8:0x5 DW_TAG_pointer_type
	.long	989                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3dd:0xb DW_TAG_typedef
	.long	1000                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3e8:0x39 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3f0:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3fc:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x408:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x414:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x421:0x5 DW_TAG_pointer_type
	.long	1000                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x426:0x5 DW_TAG_pointer_type
	.long	1067                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x42b:0xb DW_TAG_typedef
	.long	1078                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x436:0x2d DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x43e:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x44a:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x456:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1123                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x463:0x5 DW_TAG_pointer_type
	.long	1078                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x468:0x5 DW_TAG_pointer_type
	.long	1133                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x46d:0xb DW_TAG_typedef
	.long	1144                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x478:0x21 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x480:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x48c:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1177                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x499:0x5 DW_TAG_pointer_type
	.long	1144                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x49e:0x5 DW_TAG_pointer_type
	.long	701                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4a3:0x5 DW_TAG_pointer_type
	.long	493                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4a8:0x5 DW_TAG_pointer_type
	.long	1197                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4ad:0x5 DW_TAG_pointer_type
	.long	1202                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4b2:0xb DW_TAG_typedef
	.long	1213                            # DW_AT_type
	.long	.Linfo_string204                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4bd:0xbe DW_TAG_structure_type
	.long	.Linfo_string203                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4c6:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1403                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4d2:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4de:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ea:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f6:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x502:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x50e:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1424                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x51a:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x526:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1431                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x532:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1062                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x53e:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1497                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x54a:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1660                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x556:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1774                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x562:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2607                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x56e:0xc DW_TAG_member
	.long	.Linfo_string190                # DW_AT_name
	.long	2956                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x57b:0x5 DW_TAG_pointer_type
	.long	1408                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x580:0xb DW_TAG_typedef
	.long	1419                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x58b:0x5 DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	4                               # Abbrev [4] 0x590:0x7 DW_TAG_base_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x597:0x5 DW_TAG_pointer_type
	.long	1436                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x59c:0xb DW_TAG_typedef
	.long	1447                            # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5a7:0x2d DW_TAG_structure_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5af:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5bb:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5c7:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1492                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5d4:0x5 DW_TAG_pointer_type
	.long	1447                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5d9:0x5 DW_TAG_pointer_type
	.long	1502                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5de:0xb DW_TAG_typedef
	.long	1513                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5e9:0x2d DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5f1:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1558                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5fd:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1655                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x609:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1655                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x616:0x5 DW_TAG_pointer_type
	.long	1563                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x61b:0xb DW_TAG_typedef
	.long	1574                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x626:0x51 DW_TAG_structure_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x62e:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x63a:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x646:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x652:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x65e:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1187                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x66a:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1187                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x677:0x5 DW_TAG_pointer_type
	.long	1513                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x67c:0x5 DW_TAG_pointer_type
	.long	1665                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x681:0xb DW_TAG_typedef
	.long	1676                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x68c:0x5d DW_TAG_structure_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x694:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6a0:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6ac:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6b8:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6c4:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1128                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6d0:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1769                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6dc:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1769                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6e9:0x5 DW_TAG_pointer_type
	.long	1676                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6ee:0x56 DW_TAG_structure_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6f6:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1794                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x702:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x706:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1860                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x712:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1883                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x71f:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2554                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x72b:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x737:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2601                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x744:0xb DW_TAG_typedef
	.long	1871                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x74f:0x5 DW_TAG_pointer_type
	.long	1876                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x754:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x755:0x5 DW_TAG_formal_parameter
	.long	694                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x75b:0x5 DW_TAG_pointer_type
	.long	1888                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x760:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x761:0x5 DW_TAG_formal_parameter
	.long	694                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x766:0x5 DW_TAG_formal_parameter
	.long	1905                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x76b:0x5 DW_TAG_formal_parameter
	.long	2517                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x771:0x5 DW_TAG_pointer_type
	.long	1910                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x776:0xb DW_TAG_typedef
	.long	1921                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x781:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x785:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x791:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x79d:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7a9:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7b5:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	1985                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7c1:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7c5:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2432                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7d1:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2013                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7dd:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7e1:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2451                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7ed:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2462                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x7fa:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2054                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x806:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x80a:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x816:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x822:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2473                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x82f:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2107                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x83b:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x83f:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2451                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x84b:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2462                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x857:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2473                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x864:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2160                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x870:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x874:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2451                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x880:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2462                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x88c:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x898:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2518                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8a4:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2518                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x8b1:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2237                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8bd:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8c1:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2517                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8cd:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2536                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8d9:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2277                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x8e5:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8e9:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2293                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8f5:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8f9:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2517                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x905:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2517                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x912:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2543                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x920:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2348                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x92c:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x930:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2529                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x93c:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x949:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2389                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x955:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x959:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2517                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x965:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x971:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	73                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x980:0xc DW_TAG_array_type
	.long	694                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x985:0x6 DW_TAG_subrange_type
	.long	2444                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x98c:0x7 DW_TAG_base_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x993:0xb DW_TAG_typedef
	.long	694                             # DW_AT_type
	.long	.Linfo_string118                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x99e:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9a9:0xb DW_TAG_typedef
	.long	2484                            # DW_AT_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x9b4:0x21 DW_TAG_union_type
	.long	.Linfo_string127                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9bc:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x9c8:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2517                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x9d5:0x1 DW_TAG_pointer_type
	.byte	10                              # Abbrev [10] 0x9d6:0xb DW_TAG_typedef
	.long	2529                            # DW_AT_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9e1:0x7 DW_TAG_base_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x9e8:0x7 DW_TAG_base_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x9ef:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9fa:0xb DW_TAG_typedef
	.long	2565                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xa05:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa09:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2582                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xa16:0xc DW_TAG_array_type
	.long	2594                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xa1b:0x6 DW_TAG_subrange_type
	.long	2444                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa22:0x7 DW_TAG_base_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa29:0x5 DW_TAG_pointer_type
	.long	2606                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xa2e:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0xa2f:0x5 DW_TAG_pointer_type
	.long	2612                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa34:0xbd DW_TAG_structure_type
	.long	.Linfo_string189                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa3c:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2801                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa48:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2812                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa54:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2823                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa60:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2834                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa6c:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2462                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa78:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2845                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa84:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa90:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2801                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa9c:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2856                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaa8:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2867                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xab4:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2878                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xac0:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2889                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xacc:0xc DW_TAG_member
	.long	.Linfo_string186                # DW_AT_name
	.long	2889                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xad8:0xc DW_TAG_member
	.long	.Linfo_string187                # DW_AT_name
	.long	2889                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xae4:0xc DW_TAG_member
	.long	.Linfo_string188                # DW_AT_name
	.long	2944                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xaf1:0xb DW_TAG_typedef
	.long	2594                            # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xafc:0xb DW_TAG_typedef
	.long	2594                            # DW_AT_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb07:0xb DW_TAG_typedef
	.long	2594                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb12:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb1d:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb28:0xb DW_TAG_typedef
	.long	2529                            # DW_AT_type
	.long	.Linfo_string175                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb33:0xb DW_TAG_typedef
	.long	2529                            # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb3e:0xb DW_TAG_typedef
	.long	2529                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb49:0x21 DW_TAG_structure_type
	.long	.Linfo_string185                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb51:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	2922                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb5d:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	2933                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb6a:0xb DW_TAG_typedef
	.long	2529                            # DW_AT_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb75:0xb DW_TAG_typedef
	.long	2529                            # DW_AT_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xb80:0xc DW_TAG_array_type
	.long	2933                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xb85:0x6 DW_TAG_subrange_type
	.long	2444                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb8c:0x5 DW_TAG_pointer_type
	.long	2961                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xb91:0x69 DW_TAG_structure_type
	.long	.Linfo_string202                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb99:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	3066                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xba5:0xc DW_TAG_member
	.long	.Linfo_string193                # DW_AT_name
	.long	3066                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbb1:0xc DW_TAG_member
	.long	.Linfo_string194                # DW_AT_name
	.long	3066                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbbd:0xc DW_TAG_member
	.long	.Linfo_string195                # DW_AT_name
	.long	3066                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbc9:0xc DW_TAG_member
	.long	.Linfo_string196                # DW_AT_name
	.long	3077                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbd5:0xc DW_TAG_member
	.long	.Linfo_string198                # DW_AT_name
	.long	3088                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbe1:0xc DW_TAG_member
	.long	.Linfo_string199                # DW_AT_name
	.long	3100                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbed:0xc DW_TAG_member
	.long	.Linfo_string201                # DW_AT_name
	.long	3100                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xbfa:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string192                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc05:0xb DW_TAG_typedef
	.long	1424                            # DW_AT_type
	.long	.Linfo_string197                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xc10:0xc DW_TAG_array_type
	.long	3077                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc15:0x6 DW_TAG_subrange_type
	.long	2444                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc1c:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string200                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc27:0x5 DW_TAG_pointer_type
	.long	477                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc2c:0x5 DW_TAG_pointer_type
	.long	1558                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/execution/exec.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=59
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=96
.Linfo_string4:
	.asciz	"command"                       # string offset=109
.Linfo_string5:
	.asciz	"builtin"                       # string offset=117
.Linfo_string6:
	.asciz	"assignment"                    # string offset=125
.Linfo_string7:
	.asciz	"e_cmd_type"                    # string offset=136
.Linfo_string8:
	.asciz	"no_type"                       # string offset=147
.Linfo_string9:
	.asciz	"root"                          # string offset=155
.Linfo_string10:
	.asciz	"simple_command"                # string offset=160
.Linfo_string11:
	.asciz	"e_ast_node_type"               # string offset=175
.Linfo_string12:
	.asciz	"l_parentheses"                 # string offset=191
.Linfo_string13:
	.asciz	"r_parentheses"                 # string offset=205
.Linfo_string14:
	.asciz	"simple_quote"                  # string offset=219
.Linfo_string15:
	.asciz	"double_quote"                  # string offset=232
.Linfo_string16:
	.asciz	"exit_status"                   # string offset=245
.Linfo_string17:
	.asciz	"expansion"                     # string offset=257
.Linfo_string18:
	.asciz	"operator"                      # string offset=267
.Linfo_string19:
	.asciz	"wildcard"                      # string offset=276
.Linfo_string20:
	.asciz	"pipe_op"                       # string offset=285
.Linfo_string21:
	.asciz	"heredoc"                       # string offset=293
.Linfo_string22:
	.asciz	"outfile"                       # string offset=301
.Linfo_string23:
	.asciz	"append"                        # string offset=309
.Linfo_string24:
	.asciz	"infile"                        # string offset=316
.Linfo_string25:
	.asciz	"and_if"                        # string offset=323
.Linfo_string26:
	.asciz	"or_if"                         # string offset=330
.Linfo_string27:
	.asciz	"word"                          # string offset=336
.Linfo_string28:
	.asciz	"name"                          # string offset=341
.Linfo_string29:
	.asciz	"assignment_word"               # string offset=346
.Linfo_string30:
	.asciz	"eof_token"                     # string offset=362
.Linfo_string31:
	.asciz	"e_token"                       # string offset=372
.Linfo_string32:
	.asciz	"is_first_command"              # string offset=380
.Linfo_string33:
	.asciz	"_Bool"                         # string offset=397
.Linfo_string34:
	.asciz	"exec_command"                  # string offset=403
.Linfo_string35:
	.asciz	"wait_command_ending"           # string offset=416
.Linfo_string36:
	.asciz	"execution"                     # string offset=436
.Linfo_string37:
	.asciz	"cmd"                           # string offset=446
.Linfo_string38:
	.asciz	"id"                            # string offset=450
.Linfo_string39:
	.asciz	"int"                           # string offset=453
.Linfo_string40:
	.asciz	"pid"                           # string offset=457
.Linfo_string41:
	.asciz	"type"                          # string offset=461
.Linfo_string42:
	.asciz	"wstatus"                       # string offset=466
.Linfo_string43:
	.asciz	"char"                          # string offset=474
.Linfo_string44:
	.asciz	"path"                          # string offset=479
.Linfo_string45:
	.asciz	"arg"                           # string offset=484
.Linfo_string46:
	.asciz	"value"                         # string offset=488
.Linfo_string47:
	.asciz	"next"                          # string offset=494
.Linfo_string48:
	.asciz	"s_arg"                         # string offset=499
.Linfo_string49:
	.asciz	"t_arg"                         # string offset=505
.Linfo_string50:
	.asciz	"pipe"                          # string offset=511
.Linfo_string51:
	.asciz	"to_close"                      # string offset=516
.Linfo_string52:
	.asciz	"write"                         # string offset=525
.Linfo_string53:
	.asciz	"read"                          # string offset=531
.Linfo_string54:
	.asciz	"s_pipe"                        # string offset=536
.Linfo_string55:
	.asciz	"t_pipe"                        # string offset=543
.Linfo_string56:
	.asciz	"redir"                         # string offset=550
.Linfo_string57:
	.asciz	"in_fd"                         # string offset=556
.Linfo_string58:
	.asciz	"out_fd"                        # string offset=562
.Linfo_string59:
	.asciz	"fd"                            # string offset=569
.Linfo_string60:
	.asciz	"s_infile"                      # string offset=572
.Linfo_string61:
	.asciz	"t_infile"                      # string offset=581
.Linfo_string62:
	.asciz	"s_outfile"                     # string offset=590
.Linfo_string63:
	.asciz	"t_outfile"                     # string offset=600
.Linfo_string64:
	.asciz	"s_redir"                       # string offset=610
.Linfo_string65:
	.asciz	"t_redir"                       # string offset=618
.Linfo_string66:
	.asciz	"assign"                        # string offset=626
.Linfo_string67:
	.asciz	"s_var"                         # string offset=633
.Linfo_string68:
	.asciz	"t_var"                         # string offset=639
.Linfo_string69:
	.asciz	"s_expan"                       # string offset=645
.Linfo_string70:
	.asciz	"t_expan"                       # string offset=653
.Linfo_string71:
	.asciz	"arg_array"                     # string offset=661
.Linfo_string72:
	.asciz	"prev"                          # string offset=671
.Linfo_string73:
	.asciz	"s_cmd"                         # string offset=676
.Linfo_string74:
	.asciz	"t_cmd"                         # string offset=682
.Linfo_string75:
	.asciz	"minishell"                     # string offset=688
.Linfo_string76:
	.asciz	"dir"                           # string offset=698
.Linfo_string77:
	.asciz	"__dirstream"                   # string offset=702
.Linfo_string78:
	.asciz	"DIR"                           # string offset=714
.Linfo_string79:
	.asciz	"state"                         # string offset=718
.Linfo_string80:
	.asciz	"input"                         # string offset=724
.Linfo_string81:
	.asciz	"prompt"                        # string offset=730
.Linfo_string82:
	.asciz	"operator_nbr"                  # string offset=737
.Linfo_string83:
	.asciz	"unsigned char"                 # string offset=750
.Linfo_string84:
	.asciz	"env_array"                     # string offset=764
.Linfo_string85:
	.asciz	"env"                           # string offset=774
.Linfo_string86:
	.asciz	"s_env"                         # string offset=778
.Linfo_string87:
	.asciz	"t_env"                         # string offset=784
.Linfo_string88:
	.asciz	"local"                         # string offset=790
.Linfo_string89:
	.asciz	"syntax_tree"                   # string offset=796
.Linfo_string90:
	.asciz	"node"                          # string offset=808
.Linfo_string91:
	.asciz	"pipe_fd"                       # string offset=813
.Linfo_string92:
	.asciz	"left"                          # string offset=821
.Linfo_string93:
	.asciz	"right"                         # string offset=826
.Linfo_string94:
	.asciz	"s_ast_node"                    # string offset=832
.Linfo_string95:
	.asciz	"t_ast_node"                    # string offset=843
.Linfo_string96:
	.asciz	"s_ast"                         # string offset=854
.Linfo_string97:
	.asciz	"t_ast"                         # string offset=860
.Linfo_string98:
	.asciz	"token_stream"                  # string offset=866
.Linfo_string99:
	.asciz	"quote_nbr"                     # string offset=879
.Linfo_string100:
	.asciz	"length"                        # string offset=889
.Linfo_string101:
	.asciz	"lexeme"                        # string offset=896
.Linfo_string102:
	.asciz	"s_token"                       # string offset=903
.Linfo_string103:
	.asciz	"t_token"                       # string offset=911
.Linfo_string104:
	.asciz	"sighandler"                    # string offset=919
.Linfo_string105:
	.asciz	"__sigaction_handler"           # string offset=930
.Linfo_string106:
	.asciz	"sa_handler"                    # string offset=950
.Linfo_string107:
	.asciz	"__sighandler_t"                # string offset=961
.Linfo_string108:
	.asciz	"sa_sigaction"                  # string offset=976
.Linfo_string109:
	.asciz	"si_signo"                      # string offset=989
.Linfo_string110:
	.asciz	"si_errno"                      # string offset=998
.Linfo_string111:
	.asciz	"si_code"                       # string offset=1007
.Linfo_string112:
	.asciz	"__pad0"                        # string offset=1015
.Linfo_string113:
	.asciz	"_sifields"                     # string offset=1022
.Linfo_string114:
	.asciz	"_pad"                          # string offset=1032
.Linfo_string115:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1037
.Linfo_string116:
	.asciz	"_kill"                         # string offset=1057
.Linfo_string117:
	.asciz	"si_pid"                        # string offset=1063
.Linfo_string118:
	.asciz	"__pid_t"                       # string offset=1070
.Linfo_string119:
	.asciz	"si_uid"                        # string offset=1078
.Linfo_string120:
	.asciz	"__uid_t"                       # string offset=1085
.Linfo_string121:
	.asciz	"_timer"                        # string offset=1093
.Linfo_string122:
	.asciz	"si_tid"                        # string offset=1100
.Linfo_string123:
	.asciz	"si_overrun"                    # string offset=1107
.Linfo_string124:
	.asciz	"si_sigval"                     # string offset=1118
.Linfo_string125:
	.asciz	"sival_int"                     # string offset=1128
.Linfo_string126:
	.asciz	"sival_ptr"                     # string offset=1138
.Linfo_string127:
	.asciz	"sigval"                        # string offset=1148
.Linfo_string128:
	.asciz	"__sigval_t"                    # string offset=1155
.Linfo_string129:
	.asciz	"_rt"                           # string offset=1166
.Linfo_string130:
	.asciz	"_sigchld"                      # string offset=1170
.Linfo_string131:
	.asciz	"si_status"                     # string offset=1179
.Linfo_string132:
	.asciz	"si_utime"                      # string offset=1189
.Linfo_string133:
	.asciz	"long int"                      # string offset=1198
.Linfo_string134:
	.asciz	"__clock_t"                     # string offset=1207
.Linfo_string135:
	.asciz	"si_stime"                      # string offset=1217
.Linfo_string136:
	.asciz	"_sigfault"                     # string offset=1226
.Linfo_string137:
	.asciz	"si_addr"                       # string offset=1236
.Linfo_string138:
	.asciz	"si_addr_lsb"                   # string offset=1244
.Linfo_string139:
	.asciz	"short"                         # string offset=1256
.Linfo_string140:
	.asciz	"_bounds"                       # string offset=1262
.Linfo_string141:
	.asciz	"_addr_bnd"                     # string offset=1270
.Linfo_string142:
	.asciz	"_lower"                        # string offset=1280
.Linfo_string143:
	.asciz	"_upper"                        # string offset=1287
.Linfo_string144:
	.asciz	"_pkey"                         # string offset=1294
.Linfo_string145:
	.asciz	"__uint32_t"                    # string offset=1300
.Linfo_string146:
	.asciz	"_sigpoll"                      # string offset=1311
.Linfo_string147:
	.asciz	"si_band"                       # string offset=1320
.Linfo_string148:
	.asciz	"si_fd"                         # string offset=1328
.Linfo_string149:
	.asciz	"_sigsys"                       # string offset=1334
.Linfo_string150:
	.asciz	"_call_addr"                    # string offset=1342
.Linfo_string151:
	.asciz	"_syscall"                      # string offset=1353
.Linfo_string152:
	.asciz	"_arch"                         # string offset=1362
.Linfo_string153:
	.asciz	"siginfo_t"                     # string offset=1368
.Linfo_string154:
	.asciz	"sa_mask"                       # string offset=1378
.Linfo_string155:
	.asciz	"__val"                         # string offset=1386
.Linfo_string156:
	.asciz	"long unsigned int"             # string offset=1392
.Linfo_string157:
	.asciz	"__sigset_t"                    # string offset=1410
.Linfo_string158:
	.asciz	"sa_flags"                      # string offset=1421
.Linfo_string159:
	.asciz	"sa_restorer"                   # string offset=1430
.Linfo_string160:
	.asciz	"sigaction"                     # string offset=1442
.Linfo_string161:
	.asciz	"statbuf"                       # string offset=1452
.Linfo_string162:
	.asciz	"st_dev"                        # string offset=1460
.Linfo_string163:
	.asciz	"__dev_t"                       # string offset=1467
.Linfo_string164:
	.asciz	"st_ino"                        # string offset=1475
.Linfo_string165:
	.asciz	"__ino_t"                       # string offset=1482
.Linfo_string166:
	.asciz	"st_nlink"                      # string offset=1490
.Linfo_string167:
	.asciz	"__nlink_t"                     # string offset=1499
.Linfo_string168:
	.asciz	"st_mode"                       # string offset=1509
.Linfo_string169:
	.asciz	"__mode_t"                      # string offset=1517
.Linfo_string170:
	.asciz	"st_uid"                        # string offset=1526
.Linfo_string171:
	.asciz	"st_gid"                        # string offset=1533
.Linfo_string172:
	.asciz	"__gid_t"                       # string offset=1540
.Linfo_string173:
	.asciz	"st_rdev"                       # string offset=1548
.Linfo_string174:
	.asciz	"st_size"                       # string offset=1556
.Linfo_string175:
	.asciz	"__off_t"                       # string offset=1564
.Linfo_string176:
	.asciz	"st_blksize"                    # string offset=1572
.Linfo_string177:
	.asciz	"__blksize_t"                   # string offset=1583
.Linfo_string178:
	.asciz	"st_blocks"                     # string offset=1595
.Linfo_string179:
	.asciz	"__blkcnt_t"                    # string offset=1605
.Linfo_string180:
	.asciz	"st_atim"                       # string offset=1616
.Linfo_string181:
	.asciz	"tv_sec"                        # string offset=1624
.Linfo_string182:
	.asciz	"__time_t"                      # string offset=1631
.Linfo_string183:
	.asciz	"tv_nsec"                       # string offset=1640
.Linfo_string184:
	.asciz	"__syscall_slong_t"             # string offset=1648
.Linfo_string185:
	.asciz	"timespec"                      # string offset=1666
.Linfo_string186:
	.asciz	"st_mtim"                       # string offset=1675
.Linfo_string187:
	.asciz	"st_ctim"                       # string offset=1683
.Linfo_string188:
	.asciz	"__glibc_reserved"              # string offset=1691
.Linfo_string189:
	.asciz	"stat"                          # string offset=1708
.Linfo_string190:
	.asciz	"term"                          # string offset=1713
.Linfo_string191:
	.asciz	"c_iflag"                       # string offset=1718
.Linfo_string192:
	.asciz	"tcflag_t"                      # string offset=1726
.Linfo_string193:
	.asciz	"c_oflag"                       # string offset=1735
.Linfo_string194:
	.asciz	"c_cflag"                       # string offset=1743
.Linfo_string195:
	.asciz	"c_lflag"                       # string offset=1751
.Linfo_string196:
	.asciz	"c_line"                        # string offset=1759
.Linfo_string197:
	.asciz	"cc_t"                          # string offset=1766
.Linfo_string198:
	.asciz	"c_cc"                          # string offset=1771
.Linfo_string199:
	.asciz	"c_ispeed"                      # string offset=1776
.Linfo_string200:
	.asciz	"speed_t"                       # string offset=1785
.Linfo_string201:
	.asciz	"c_ospeed"                      # string offset=1793
.Linfo_string202:
	.asciz	"termios"                       # string offset=1802
.Linfo_string203:
	.asciz	"s_minishell"                   # string offset=1810
.Linfo_string204:
	.asciz	"t_minishell"                   # string offset=1822
.Linfo_string205:
	.asciz	"ast"                           # string offset=1834
.Linfo_string206:
	.asciz	"i"                             # string offset=1838
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
	.addrsig_sym exec_pipeline
	.addrsig_sym exec_list
	.addrsig_sym g_signal
	.section	.debug_line,"",@progbits
.Lline_table_start0:

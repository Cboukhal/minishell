	.text
	.file	"exec.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/execution/../../include/minishell.h"
	.globl	if_redir                        # -- Begin function if_redir
	.p2align	4, 0x90
	.type	if_redir,@function
if_redir:                               # @if_redir
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/execution/exec.c"
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
.Ltmp0:
	.loc	2 26 11 prologue_end            # src/execution/exec.c:26:11
	movq	$0, -16(%rbp)
.Ltmp1:
	.loc	2 27 6                          # src/execution/exec.c:27:6
	movq	-8(%rbp), %rax
	.loc	2 27 11 is_stmt 0               # src/execution/exec.c:27:11
	movq	48(%rax), %rax
	.loc	2 27 6                          # src/execution/exec.c:27:6
	cmpq	$0, 8(%rax)
.Ltmp2:
	.loc	2 27 6                          # src/execution/exec.c:27:6
	je	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 29 14 is_stmt 1               # src/execution/exec.c:29:14
	movq	-8(%rbp), %rax
	.loc	2 29 19 is_stmt 0               # src/execution/exec.c:29:19
	movq	48(%rax), %rax
	.loc	2 29 26                         # src/execution/exec.c:29:26
	movq	8(%rax), %rax
	.loc	2 29 34                         # src/execution/exec.c:29:34
	movq	8(%rax), %rax
	.loc	2 29 12                         # src/execution/exec.c:29:12
	movq	%rax, -16(%rbp)
	.loc	2 30 43 is_stmt 1               # src/execution/exec.c:30:43
	movq	-8(%rbp), %rdi
	.loc	2 30 23 is_stmt 0               # src/execution/exec.c:30:23
	callq	open_command_infile
	movl	%eax, %ecx
	.loc	2 30 3                          # src/execution/exec.c:30:3
	movq	-8(%rbp), %rax
	.loc	2 30 8                          # src/execution/exec.c:30:8
	movq	48(%rax), %rax
	.loc	2 30 21                         # src/execution/exec.c:30:21
	movl	%ecx, (%rax)
.Ltmp4:
.LBB0_2:
	.loc	2 32 6 is_stmt 1                # src/execution/exec.c:32:6
	movq	-8(%rbp), %rax
	.loc	2 32 11 is_stmt 0               # src/execution/exec.c:32:11
	movq	48(%rax), %rax
	.loc	2 32 6                          # src/execution/exec.c:32:6
	cmpq	$0, 16(%rax)
.Ltmp5:
	.loc	2 32 6                          # src/execution/exec.c:32:6
	je	.LBB0_4
# %bb.3:
.Ltmp6:
	.loc	2 34 14 is_stmt 1               # src/execution/exec.c:34:14
	movq	-8(%rbp), %rax
	.loc	2 34 19 is_stmt 0               # src/execution/exec.c:34:19
	movq	48(%rax), %rax
	.loc	2 34 26                         # src/execution/exec.c:34:26
	movq	16(%rax), %rax
	.loc	2 34 35                         # src/execution/exec.c:34:35
	movq	8(%rax), %rax
	.loc	2 34 12                         # src/execution/exec.c:34:12
	movq	%rax, -16(%rbp)
	.loc	2 35 45 is_stmt 1               # src/execution/exec.c:35:45
	movq	-8(%rbp), %rdi
	.loc	2 35 24 is_stmt 0               # src/execution/exec.c:35:24
	callq	open_command_outfile
	movl	%eax, %ecx
	.loc	2 35 3                          # src/execution/exec.c:35:3
	movq	-8(%rbp), %rax
	.loc	2 35 8                          # src/execution/exec.c:35:8
	movq	48(%rax), %rax
	.loc	2 35 22                         # src/execution/exec.c:35:22
	movl	%ecx, 4(%rax)
.Ltmp7:
.LBB0_4:
	.loc	2 37 13 is_stmt 1               # src/execution/exec.c:37:13
	movq	-16(%rbp), %rdi
	.loc	2 37 6 is_stmt 0                # src/execution/exec.c:37:6
	xorl	%esi, %esi
	callq	access
	.loc	2 37 29                         # src/execution/exec.c:37:29
	cmpl	$0, %eax
.Ltmp8:
	.loc	2 37 6                          # src/execution/exec.c:37:6
	jne	.LBB0_6
# %bb.5:
.Ltmp9:
	.loc	2 38 31 is_stmt 1               # src/execution/exec.c:38:31
	movq	-16(%rbp), %rsi
	.loc	2 38 3 is_stmt 0                # src/execution/exec.c:38:3
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rdx
	movb	$0, %al
	callq	ft_printf
.Ltmp10:
.LBB0_6:
	.loc	2 39 1 is_stmt 1                # src/execution/exec.c:39:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end0:
	.size	if_redir, .Lfunc_end0-if_redir
	.cfi_endproc
                                        # -- End function
	.globl	exec_command                    # -- Begin function exec_command
	.p2align	4, 0x90
	.type	exec_command,@function
exec_command:                           # @exec_command
.Lfunc_begin1:
	.loc	2 42 0                          # src/execution/exec.c:42:0
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
.Ltmp12:
	.loc	2 43 9 prologue_end             # src/execution/exec.c:43:9
	movq	-16(%rbp), %rax
	.loc	2 43 8 is_stmt 0                # src/execution/exec.c:43:8
	movq	(%rax), %rax
	.loc	2 43 7                          # src/execution/exec.c:43:7
	cmpq	$0, 16(%rax)
.Ltmp13:
	.loc	2 43 6                          # src/execution/exec.c:43:6
	jne	.LBB1_4
# %bb.1:
.Ltmp14:
	.loc	2 45 9 is_stmt 1                # src/execution/exec.c:45:9
	movq	-16(%rbp), %rax
	.loc	2 45 8 is_stmt 0                # src/execution/exec.c:45:8
	movq	(%rax), %rax
	.loc	2 45 7                          # src/execution/exec.c:45:7
	cmpq	$0, 48(%rax)
.Ltmp15:
	.loc	2 45 7                          # src/execution/exec.c:45:7
	je	.LBB1_3
# %bb.2:
.Ltmp16:
	.loc	2 46 15 is_stmt 1               # src/execution/exec.c:46:15
	movq	-16(%rbp), %rax
	.loc	2 46 14 is_stmt 0               # src/execution/exec.c:46:14
	movq	(%rax), %rdi
	.loc	2 46 4                          # src/execution/exec.c:46:4
	callq	if_redir
.Ltmp17:
.LBB1_3:
	.loc	2 47 3 is_stmt 1                # src/execution/exec.c:47:3
	jmp	.LBB1_20
.Ltmp18:
.LBB1_4:
	.loc	2 49 13                         # src/execution/exec.c:49:13
	movq	-16(%rbp), %rax
	.loc	2 49 12 is_stmt 0               # src/execution/exec.c:49:12
	movq	(%rax), %rax
	.loc	2 49 24                         # src/execution/exec.c:49:24
	cmpl	$3, 8(%rax)
.Ltmp19:
	.loc	2 49 11                         # src/execution/exec.c:49:11
	jne	.LBB1_6
# %bb.5:
.Ltmp20:
	.loc	2 50 19 is_stmt 1               # src/execution/exec.c:50:19
	movq	-8(%rbp), %rdi
	.loc	2 50 32 is_stmt 0               # src/execution/exec.c:50:32
	movq	-16(%rbp), %rax
	.loc	2 50 31                         # src/execution/exec.c:50:31
	movq	(%rax), %rsi
	.loc	2 50 3                          # src/execution/exec.c:50:3
	callq	assign_variable
	jmp	.LBB1_19
.LBB1_6:
.Ltmp21:
	.loc	2 51 13 is_stmt 1               # src/execution/exec.c:51:13
	movq	-16(%rbp), %rax
	.loc	2 51 12 is_stmt 0               # src/execution/exec.c:51:12
	movq	(%rax), %rax
	.loc	2 51 11                         # src/execution/exec.c:51:11
	cmpq	$0, 16(%rax)
	.loc	2 51 24                         # src/execution/exec.c:51:24
	je	.LBB1_9
# %bb.7:
	.loc	2 51 40                         # src/execution/exec.c:51:40
	movq	-16(%rbp), %rax
	.loc	2 51 39                         # src/execution/exec.c:51:39
	movq	(%rax), %rax
	.loc	2 51 46                         # src/execution/exec.c:51:46
	movq	16(%rax), %rdi
	.loc	2 51 27                         # src/execution/exec.c:51:27
	callq	is_builtin
.Ltmp22:
	.loc	2 51 11                         # src/execution/exec.c:51:11
	testb	$1, %al
	jne	.LBB1_8
	jmp	.LBB1_9
.LBB1_8:
.Ltmp23:
	.loc	2 53 5 is_stmt 1                # src/execution/exec.c:53:5
	movq	-8(%rbp), %rax
	.loc	2 53 4 is_stmt 0                # src/execution/exec.c:53:4
	movq	(%rax), %rax
	.loc	2 53 29                         # src/execution/exec.c:53:29
	movl	$0, 44(%rax)
	.loc	2 54 17 is_stmt 1               # src/execution/exec.c:54:17
	movq	-8(%rbp), %rax
	.loc	2 54 16 is_stmt 0               # src/execution/exec.c:54:16
	movq	(%rax), %rdi
	.loc	2 54 30                         # src/execution/exec.c:54:30
	movq	-16(%rbp), %rax
	.loc	2 54 29                         # src/execution/exec.c:54:29
	movq	(%rax), %rsi
	.loc	2 54 3                          # src/execution/exec.c:54:3
	callq	exec_builtin
	.loc	2 55 2 is_stmt 1                # src/execution/exec.c:55:2
	jmp	.LBB1_18
.Ltmp24:
.LBB1_9:
	.loc	2 56 13                         # src/execution/exec.c:56:13
	movq	-16(%rbp), %rax
	.loc	2 56 12 is_stmt 0               # src/execution/exec.c:56:12
	movq	(%rax), %rax
	.loc	2 56 11                         # src/execution/exec.c:56:11
	cmpq	$0, 24(%rax)
	.loc	2 56 24                         # src/execution/exec.c:56:24
	je	.LBB1_16
# %bb.10:
	.loc	2 56 39                         # src/execution/exec.c:56:39
	movq	-16(%rbp), %rax
	.loc	2 56 38                         # src/execution/exec.c:56:38
	movq	(%rax), %rax
	.loc	2 56 45                         # src/execution/exec.c:56:45
	movq	16(%rax), %rdi
	.loc	2 56 27                         # src/execution/exec.c:56:27
	callq	ft_strlen
	.loc	2 56 51                         # src/execution/exec.c:56:51
	cmpq	$0, %rax
.Ltmp25:
	.loc	2 56 11                         # src/execution/exec.c:56:11
	jbe	.LBB1_16
# %bb.11:
.Ltmp26:
	.loc	2 58 17 is_stmt 1               # src/execution/exec.c:58:17
	callq	fork
	movl	%eax, %ecx
	.loc	2 58 5 is_stmt 0                # src/execution/exec.c:58:5
	movq	-16(%rbp), %rax
	.loc	2 58 4                          # src/execution/exec.c:58:4
	movq	(%rax), %rax
	.loc	2 58 15                         # src/execution/exec.c:58:15
	movl	%ecx, 4(%rax)
.Ltmp27:
	.loc	2 59 9 is_stmt 1                # src/execution/exec.c:59:9
	movq	-16(%rbp), %rax
	.loc	2 59 8 is_stmt 0                # src/execution/exec.c:59:8
	movq	(%rax), %rax
	.loc	2 59 19                         # src/execution/exec.c:59:19
	cmpl	$-1, 4(%rax)
.Ltmp28:
	.loc	2 59 7                          # src/execution/exec.c:59:7
	jne	.LBB1_13
# %bb.12:
.Ltmp29:
	.loc	2 60 4 is_stmt 1                # src/execution/exec.c:60:4
	movabsq	$.L.str.2, %rdi
	callq	perror
.Ltmp30:
.LBB1_13:
	.loc	2 61 9                          # src/execution/exec.c:61:9
	movq	-16(%rbp), %rax
	.loc	2 61 8 is_stmt 0                # src/execution/exec.c:61:8
	movq	(%rax), %rax
	.loc	2 61 19                         # src/execution/exec.c:61:19
	cmpl	$0, 4(%rax)
.Ltmp31:
	.loc	2 61 7                          # src/execution/exec.c:61:7
	jne	.LBB1_15
# %bb.14:
.Ltmp32:
	.loc	2 62 14 is_stmt 1               # src/execution/exec.c:62:14
	movq	-8(%rbp), %rdi
	.loc	2 62 27 is_stmt 0               # src/execution/exec.c:62:27
	movq	-16(%rbp), %rax
	.loc	2 62 26                         # src/execution/exec.c:62:26
	movq	(%rax), %rsi
	.loc	2 62 35                         # src/execution/exec.c:62:35
	movq	-8(%rbp), %rax
	.loc	2 62 34                         # src/execution/exec.c:62:34
	movq	(%rax), %rax
	.loc	2 62 47                         # src/execution/exec.c:62:47
	movq	48(%rax), %rdx
	.loc	2 62 4                          # src/execution/exec.c:62:4
	callq	child_job
.Ltmp33:
.LBB1_15:
	.loc	2 63 2 is_stmt 1                # src/execution/exec.c:63:2
	jmp	.LBB1_17
.Ltmp34:
.LBB1_16:
	.loc	2 68 42                         # src/execution/exec.c:68:42
	movq	-16(%rbp), %rax
	.loc	2 68 41 is_stmt 0               # src/execution/exec.c:68:41
	movq	(%rax), %rax
	.loc	2 68 48                         # src/execution/exec.c:68:48
	movq	16(%rax), %rsi
	.loc	2 68 3                          # src/execution/exec.c:68:3
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 69 5 is_stmt 1                # src/execution/exec.c:69:5
	movq	-8(%rbp), %rax
	.loc	2 69 4 is_stmt 0                # src/execution/exec.c:69:4
	movq	(%rax), %rax
	.loc	2 69 29                         # src/execution/exec.c:69:29
	movl	$127, 44(%rax)
.Ltmp35:
.LBB1_17:
	.loc	2 0 29                          # src/execution/exec.c:0:29
	jmp	.LBB1_18
.LBB1_18:
	jmp	.LBB1_19
.LBB1_19:
	jmp	.LBB1_20
.LBB1_20:
	.loc	2 71 1 is_stmt 1                # src/execution/exec.c:71:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp36:
.Lfunc_end1:
	.size	exec_command, .Lfunc_end1-exec_command
	.cfi_endproc
                                        # -- End function
	.globl	wait_command_ending             # -- Begin function wait_command_ending
	.p2align	4, 0x90
	.type	wait_command_ending,@function
wait_command_ending:                    # @wait_command_ending
.Lfunc_begin2:
	.loc	2 94 0                          # src/execution/exec.c:94:0
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
.Ltmp37:
	.loc	2 95 11 prologue_end            # src/execution/exec.c:95:11
	movl	$0, g_signal
.Ltmp38:
	.loc	2 96 8                          # src/execution/exec.c:96:8
	movq	-16(%rbp), %rax
	.loc	2 96 7 is_stmt 0                # src/execution/exec.c:96:7
	movq	(%rax), %rax
	.loc	2 96 6                          # src/execution/exec.c:96:6
	cmpq	$0, 24(%rax)
	.loc	2 96 20                         # src/execution/exec.c:96:20
	je	.LBB2_5
# %bb.1:
	.loc	2 96 25                         # src/execution/exec.c:96:25
	movq	-16(%rbp), %rax
	.loc	2 96 24                         # src/execution/exec.c:96:24
	movq	(%rax), %rax
	.loc	2 96 32                         # src/execution/exec.c:96:32
	movq	24(%rax), %rax
	.loc	2 96 23                         # src/execution/exec.c:96:23
	cmpl	$0, 4(%rax)
	.loc	2 96 42                         # src/execution/exec.c:96:42
	je	.LBB2_5
# %bb.2:
	.loc	2 96 47                         # src/execution/exec.c:96:47
	movq	-16(%rbp), %rax
	.loc	2 96 46                         # src/execution/exec.c:96:46
	movq	(%rax), %rax
	.loc	2 96 54                         # src/execution/exec.c:96:54
	movq	24(%rax), %rax
	.loc	2 96 45                         # src/execution/exec.c:96:45
	cmpq	$0, 24(%rax)
	.loc	2 97 3 is_stmt 1                # src/execution/exec.c:97:3
	je	.LBB2_5
# %bb.3:
	.loc	2 97 8 is_stmt 0                # src/execution/exec.c:97:8
	movq	-16(%rbp), %rax
	.loc	2 97 7                          # src/execution/exec.c:97:7
	movq	(%rax), %rax
	.loc	2 97 15                         # src/execution/exec.c:97:15
	movq	24(%rax), %rax
	.loc	2 97 26                         # src/execution/exec.c:97:26
	cmpl	$2, 8(%rax)
.Ltmp39:
	.loc	2 96 6 is_stmt 1                # src/execution/exec.c:96:6
	je	.LBB2_5
# %bb.4:
.Ltmp40:
	.loc	2 99 13                         # src/execution/exec.c:99:13
	movq	-16(%rbp), %rax
	.loc	2 99 12 is_stmt 0               # src/execution/exec.c:99:12
	movq	(%rax), %rax
	.loc	2 99 20                         # src/execution/exec.c:99:20
	movq	24(%rax), %rax
	.loc	2 99 26                         # src/execution/exec.c:99:26
	movl	4(%rax), %edi
	.loc	2 99 34                         # src/execution/exec.c:99:34
	movq	-16(%rbp), %rax
	.loc	2 99 33                         # src/execution/exec.c:99:33
	movq	(%rax), %rsi
	.loc	2 99 41                         # src/execution/exec.c:99:41
	addq	$16, %rsi
	.loc	2 99 3                          # src/execution/exec.c:99:3
	xorl	%edx, %edx
	callq	waitpid
	.loc	2 100 31 is_stmt 1              # src/execution/exec.c:100:31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	andl	$65280, %ecx                    # imm = 0xFF00
	sarl	$8, %ecx
	.loc	2 100 5 is_stmt 0               # src/execution/exec.c:100:5
	movq	-8(%rbp), %rax
	.loc	2 100 4                         # src/execution/exec.c:100:4
	movq	(%rax), %rax
	.loc	2 100 29                        # src/execution/exec.c:100:29
	movl	%ecx, 44(%rax)
.Ltmp41:
.LBB2_5:
	.loc	2 102 2 is_stmt 1               # src/execution/exec.c:102:2
	jmp	.LBB2_6
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_12
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
.Ltmp42:
	.loc	2 104 9                         # src/execution/exec.c:104:9
	movq	-16(%rbp), %rax
	.loc	2 104 8 is_stmt 0               # src/execution/exec.c:104:8
	movq	(%rax), %rax
	.loc	2 104 7                         # src/execution/exec.c:104:7
	cmpq	$0, 32(%rax)
	.loc	2 104 22                        # src/execution/exec.c:104:22
	je	.LBB2_11
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	.loc	2 104 27                        # src/execution/exec.c:104:27
	movq	-16(%rbp), %rax
	.loc	2 104 26                        # src/execution/exec.c:104:26
	movq	(%rax), %rax
	.loc	2 104 34                        # src/execution/exec.c:104:34
	movq	32(%rax), %rax
	.loc	2 104 25                        # src/execution/exec.c:104:25
	cmpq	$0, 24(%rax)
	.loc	2 105 4 is_stmt 1               # src/execution/exec.c:105:4
	je	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_6 Depth=1
	.loc	2 105 9 is_stmt 0               # src/execution/exec.c:105:9
	movq	-16(%rbp), %rax
	.loc	2 105 8                         # src/execution/exec.c:105:8
	movq	(%rax), %rax
	.loc	2 105 16                        # src/execution/exec.c:105:16
	movq	32(%rax), %rax
	.loc	2 105 28                        # src/execution/exec.c:105:28
	cmpl	$2, 8(%rax)
.Ltmp43:
	.loc	2 104 7 is_stmt 1               # src/execution/exec.c:104:7
	je	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
.Ltmp44:
	.loc	2 107 14                        # src/execution/exec.c:107:14
	movq	-16(%rbp), %rax
	.loc	2 107 13 is_stmt 0              # src/execution/exec.c:107:13
	movq	(%rax), %rax
	.loc	2 107 21                        # src/execution/exec.c:107:21
	movq	32(%rax), %rax
	.loc	2 107 28                        # src/execution/exec.c:107:28
	movl	4(%rax), %edi
	.loc	2 107 36                        # src/execution/exec.c:107:36
	movq	-16(%rbp), %rax
	.loc	2 107 35                        # src/execution/exec.c:107:35
	movq	(%rax), %rsi
	.loc	2 107 43                        # src/execution/exec.c:107:43
	addq	$16, %rsi
	.loc	2 107 4                         # src/execution/exec.c:107:4
	xorl	%edx, %edx
	callq	waitpid
	.loc	2 108 32 is_stmt 1              # src/execution/exec.c:108:32
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	andl	$65280, %ecx                    # imm = 0xFF00
	sarl	$8, %ecx
	.loc	2 108 6 is_stmt 0               # src/execution/exec.c:108:6
	movq	-8(%rbp), %rax
	.loc	2 108 5                         # src/execution/exec.c:108:5
	movq	(%rax), %rax
	.loc	2 108 30                        # src/execution/exec.c:108:30
	movl	%ecx, 44(%rax)
.Ltmp45:
.LBB2_11:                               #   in Loop: Header=BB2_6 Depth=1
	.loc	2 110 9 is_stmt 1               # src/execution/exec.c:110:9
	movq	-24(%rbp), %rax
	.loc	2 110 14 is_stmt 0              # src/execution/exec.c:110:14
	movq	8(%rax), %rax
	.loc	2 110 7                         # src/execution/exec.c:110:7
	movq	%rax, -24(%rbp)
.Ltmp46:
	.loc	2 102 2 is_stmt 1               # src/execution/exec.c:102:2
	jmp	.LBB2_6
.LBB2_12:
	.loc	2 112 1                         # src/execution/exec.c:112:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp47:
.Lfunc_end2:
	.size	wait_command_ending, .Lfunc_end2-wait_command_ending
	.cfi_endproc
                                        # -- End function
	.globl	execution                       # -- Begin function execution
	.p2align	4, 0x90
	.type	execution,@function
execution:                              # @execution
.Lfunc_begin3:
	.loc	2 115 0                         # src/execution/exec.c:115:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp48:
	.loc	2 119 4 prologue_end            # src/execution/exec.c:119:4
	movl	$0, -12(%rbp)
	.loc	2 120 8                         # src/execution/exec.c:120:8
	movq	-8(%rbp), %rax
	.loc	2 120 19 is_stmt 0              # src/execution/exec.c:120:19
	movq	72(%rax), %rax
	.loc	2 120 6                         # src/execution/exec.c:120:6
	movq	%rax, -24(%rbp)
	.loc	2 121 39 is_stmt 1              # src/execution/exec.c:121:39
	movq	-8(%rbp), %rax
	.loc	2 121 50 is_stmt 0              # src/execution/exec.c:121:50
	movq	56(%rax), %rdi
	.loc	2 121 25                        # src/execution/exec.c:121:25
	callq	get_env_array
	movq	%rax, %rcx
	.loc	2 121 2                         # src/execution/exec.c:121:2
	movq	-8(%rbp), %rax
	.loc	2 121 23                        # src/execution/exec.c:121:23
	movq	%rcx, 48(%rax)
	.loc	2 122 11 is_stmt 1              # src/execution/exec.c:122:11
	movl	$0, g_signal
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 123 9                         # src/execution/exec.c:123:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 123 13 is_stmt 0              # src/execution/exec.c:123:13
	je	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 123 16                        # src/execution/exec.c:123:16
	callq	__errno_location
	movq	%rax, %rcx
	.loc	2 123 22                        # src/execution/exec.c:123:22
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 123 27                        # src/execution/exec.c:123:27
	jne	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 123 39                        # src/execution/exec.c:123:39
	cmpl	$0, g_signal
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 39                          # src/execution/exec.c:0:39
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 123 2                         # src/execution/exec.c:123:2
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_15
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp49:
	.loc	2 125 7 is_stmt 1               # src/execution/exec.c:125:7
	movq	-24(%rbp), %rax
	.loc	2 125 12 is_stmt 0              # src/execution/exec.c:125:12
	movq	(%rax), %rax
	.loc	2 125 23                        # src/execution/exec.c:125:23
	cmpl	$2, 4(%rax)
.Ltmp50:
	.loc	2 125 7                         # src/execution/exec.c:125:7
	jne	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp51:
	.loc	2 126 30 is_stmt 1              # src/execution/exec.c:126:30
	movq	-24(%rbp), %rax
	.loc	2 126 35 is_stmt 0              # src/execution/exec.c:126:35
	movq	(%rax), %rsi
	.loc	2 126 41                        # src/execution/exec.c:126:41
	addq	$24, %rsi
	.loc	2 126 4                         # src/execution/exec.c:126:4
	leaq	-8(%rbp), %rdi
	callq	exec_command
	jmp	.LBB3_14
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp52:
	.loc	2 127 12 is_stmt 1              # src/execution/exec.c:127:12
	movq	-24(%rbp), %rax
	.loc	2 127 17 is_stmt 0              # src/execution/exec.c:127:17
	movq	(%rax), %rax
	.loc	2 127 28                        # src/execution/exec.c:127:28
	cmpl	$8, 4(%rax)
.Ltmp53:
	.loc	2 127 12                        # src/execution/exec.c:127:12
	jne	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp54:
	.loc	2 128 32 is_stmt 1              # src/execution/exec.c:128:32
	movl	-12(%rbp), %edx
	.loc	2 128 4 is_stmt 0               # src/execution/exec.c:128:4
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	exec_pipe
	jmp	.LBB3_13
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp55:
	.loc	2 129 12 is_stmt 1              # src/execution/exec.c:129:12
	movq	-24(%rbp), %rax
	.loc	2 129 17 is_stmt 0              # src/execution/exec.c:129:17
	movq	(%rax), %rax
	.loc	2 129 28                        # src/execution/exec.c:129:28
	cmpl	$13, 4(%rax)
	.loc	2 129 38                        # src/execution/exec.c:129:38
	je	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 129 41                        # src/execution/exec.c:129:41
	movq	-24(%rbp), %rax
	.loc	2 129 46                        # src/execution/exec.c:129:46
	movq	(%rax), %rax
	.loc	2 129 57                        # src/execution/exec.c:129:57
	cmpl	$14, 4(%rax)
.Ltmp56:
	.loc	2 129 12                        # src/execution/exec.c:129:12
	jne	.LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_1 Depth=1
.Ltmp57:
	.loc	2 130 4 is_stmt 1               # src/execution/exec.c:130:4
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	exec_list
.Ltmp58:
.LBB3_12:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 0 4 is_stmt 0                 # src/execution/exec.c:0:4
	jmp	.LBB3_13
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_14
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
	.loc	2 131 9 is_stmt 1               # src/execution/exec.c:131:9
	movq	-24(%rbp), %rax
	.loc	2 131 14 is_stmt 0              # src/execution/exec.c:131:14
	movq	8(%rax), %rax
	.loc	2 131 7                         # src/execution/exec.c:131:7
	movq	%rax, -24(%rbp)
	.loc	2 132 4 is_stmt 1               # src/execution/exec.c:132:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp59:
	.loc	2 123 2                         # src/execution/exec.c:123:2
	jmp	.LBB3_1
.LBB3_15:
	.loc	2 134 8                         # src/execution/exec.c:134:8
	movq	-8(%rbp), %rax
	.loc	2 134 19 is_stmt 0              # src/execution/exec.c:134:19
	movq	72(%rax), %rax
	.loc	2 134 6                         # src/execution/exec.c:134:6
	movq	%rax, -24(%rbp)
.Ltmp60:
	.loc	2 135 6 is_stmt 1               # src/execution/exec.c:135:6
	cmpq	$0, -24(%rbp)
	.loc	2 135 10 is_stmt 0              # src/execution/exec.c:135:10
	je	.LBB3_19
# %bb.16:
	.loc	2 135 13                        # src/execution/exec.c:135:13
	callq	__errno_location
	.loc	2 135 19                        # src/execution/exec.c:135:19
	cmpl	$0, (%rax)
	.loc	2 135 24                        # src/execution/exec.c:135:24
	jne	.LBB3_19
# %bb.17:
	.loc	2 135 36                        # src/execution/exec.c:135:36
	cmpl	$0, g_signal
.Ltmp61:
	.loc	2 135 6                         # src/execution/exec.c:135:6
	jne	.LBB3_19
# %bb.18:
.Ltmp62:
	.loc	2 136 36 is_stmt 1              # src/execution/exec.c:136:36
	movq	-24(%rbp), %rsi
	.loc	2 136 47 is_stmt 0              # src/execution/exec.c:136:47
	movq	-24(%rbp), %rdx
	.loc	2 136 3                         # src/execution/exec.c:136:3
	leaq	-8(%rbp), %rdi
	callq	wait_command_ending
.Ltmp63:
.LBB3_19:
	.loc	2 137 11 is_stmt 1              # src/execution/exec.c:137:11
	movl	$0, g_signal
	.loc	2 138 1                         # src/execution/exec.c:138:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp64:
.Lfunc_end3:
	.size	execution, .Lfunc_end3-execution
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bash: %s: %s\n"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Permission denied"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"fork"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: command not found\n"
	.size	.L.str.3, 23

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
	.byte	11                              # DW_FORM_data1
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
	.byte	13                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc41 DW_TAG_compile_unit
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
	.byte	5                               # Abbrev [5] 0x113:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x128:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	503                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x136:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string79                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x145:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x15a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	1218                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x168:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	3137                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x177:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string39                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x18c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	1218                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x19a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string94                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	3142                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1a8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string210                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	1516                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1b7:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x1cc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	1223                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1da:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string211                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	720                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1e8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string210                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	1516                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1f7:0x5 DW_TAG_pointer_type
	.long	508                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1fc:0xb DW_TAG_typedef
	.long	519                             # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x207:0xc9 DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x20f:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x21b:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x227:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x233:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x23f:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x24b:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x257:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	739                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x263:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	793                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x26f:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	859                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x27b:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	932                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x287:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1088                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x293:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1010                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x29f:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1154                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2ab:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1208                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2b7:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2d0:0x7 DW_TAG_base_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2d7:0x5 DW_TAG_pointer_type
	.long	732                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2dc:0x7 DW_TAG_base_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2e3:0x5 DW_TAG_pointer_type
	.long	744                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2e8:0xb DW_TAG_typedef
	.long	755                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2f3:0x21 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2fb:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x307:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	788                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x314:0x5 DW_TAG_pointer_type
	.long	755                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x319:0x5 DW_TAG_pointer_type
	.long	798                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x31e:0xb DW_TAG_typedef
	.long	809                             # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x329:0x2d DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x331:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	854                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x33d:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	854                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x349:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	854                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x356:0x5 DW_TAG_pointer_type
	.long	720                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x35b:0x5 DW_TAG_pointer_type
	.long	864                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x360:0xb DW_TAG_typedef
	.long	875                             # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x36b:0x39 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x373:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x37f:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x38b:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	932                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x397:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1010                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3a4:0x5 DW_TAG_pointer_type
	.long	937                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3a9:0xb DW_TAG_typedef
	.long	948                             # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3b4:0x39 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3bc:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3c8:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3e0:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1005                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3ed:0x5 DW_TAG_pointer_type
	.long	948                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3f2:0x5 DW_TAG_pointer_type
	.long	1015                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3f7:0xb DW_TAG_typedef
	.long	1026                            # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x402:0x39 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x40a:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x416:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x422:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x42e:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1083                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x43b:0x5 DW_TAG_pointer_type
	.long	1026                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x440:0x5 DW_TAG_pointer_type
	.long	1093                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x445:0xb DW_TAG_typedef
	.long	1104                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x450:0x2d DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x458:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x464:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x470:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1149                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x47d:0x5 DW_TAG_pointer_type
	.long	1104                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x482:0x5 DW_TAG_pointer_type
	.long	1159                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x487:0xb DW_TAG_typedef
	.long	1170                            # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x492:0x21 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x49a:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a6:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1203                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4b3:0x5 DW_TAG_pointer_type
	.long	1170                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4b8:0x5 DW_TAG_pointer_type
	.long	727                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4bd:0x5 DW_TAG_pointer_type
	.long	519                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4c2:0x5 DW_TAG_pointer_type
	.long	1223                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4c7:0x5 DW_TAG_pointer_type
	.long	1228                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4cc:0xb DW_TAG_typedef
	.long	1239                            # DW_AT_type
	.long	.Linfo_string209                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4d7:0xbe DW_TAG_structure_type
	.long	.Linfo_string208                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4e0:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1429                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4ec:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4f8:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x504:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	1208                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x510:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x51c:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x528:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x534:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1208                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x540:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1450                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x54c:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1088                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x558:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1516                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x564:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1679                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x570:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1793                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x57c:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2626                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x588:0xc DW_TAG_member
	.long	.Linfo_string194                # DW_AT_name
	.long	2975                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x595:0x5 DW_TAG_pointer_type
	.long	1434                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x59a:0xb DW_TAG_typedef
	.long	1445                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5a5:0x5 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x5aa:0x5 DW_TAG_pointer_type
	.long	1455                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5af:0xb DW_TAG_typedef
	.long	1466                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5ba:0x2d DW_TAG_structure_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5c2:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ce:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5da:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1511                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5e7:0x5 DW_TAG_pointer_type
	.long	1466                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5ec:0x5 DW_TAG_pointer_type
	.long	1521                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5f1:0xb DW_TAG_typedef
	.long	1532                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5fc:0x2d DW_TAG_structure_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x604:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1577                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x610:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1674                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x61c:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1674                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x629:0x5 DW_TAG_pointer_type
	.long	1582                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x62e:0xb DW_TAG_typedef
	.long	1593                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x639:0x51 DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x641:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x64d:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x659:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	854                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x665:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x671:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x67d:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x68a:0x5 DW_TAG_pointer_type
	.long	1532                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x68f:0x5 DW_TAG_pointer_type
	.long	1684                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x694:0xb DW_TAG_typedef
	.long	1695                            # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x69f:0x5d DW_TAG_structure_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6a7:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6b3:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6bf:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6cb:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6d7:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1154                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6e3:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1788                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6ef:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1788                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6fc:0x5 DW_TAG_pointer_type
	.long	1695                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x701:0x56 DW_TAG_structure_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x709:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	1813                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x715:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x719:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1879                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x725:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	1902                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x732:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2573                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x73e:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x74a:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2620                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x757:0xb DW_TAG_typedef
	.long	1890                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x762:0x5 DW_TAG_pointer_type
	.long	1895                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x767:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x768:0x5 DW_TAG_formal_parameter
	.long	720                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x76e:0x5 DW_TAG_pointer_type
	.long	1907                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x773:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x774:0x5 DW_TAG_formal_parameter
	.long	720                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x779:0x5 DW_TAG_formal_parameter
	.long	1924                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x77e:0x5 DW_TAG_formal_parameter
	.long	2536                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x784:0x5 DW_TAG_pointer_type
	.long	1929                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x789:0xb DW_TAG_typedef
	.long	1940                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x794:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x798:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7a4:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7b0:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7bc:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7c8:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2004                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7d4:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7d8:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2451                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7e4:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2032                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7f0:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7f4:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2470                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x800:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x80d:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2073                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x819:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x81d:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x829:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x835:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2492                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x842:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2126                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x84e:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x852:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2470                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x85e:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x86a:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2492                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x877:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2179                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x883:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x887:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2470                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x893:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x89f:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8ab:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2537                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8b7:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2537                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8c4:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2256                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8d0:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8d4:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2536                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8e0:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2555                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8ec:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2296                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8f8:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8fc:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2312                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x908:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x90c:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2536                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x918:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2536                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x925:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2562                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x933:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2367                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x93f:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x943:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x94f:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x95c:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2408                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x968:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x96c:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2536                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x978:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x984:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	73                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x993:0xc DW_TAG_array_type
	.long	720                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x998:0x6 DW_TAG_subrange_type
	.long	2463                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x99f:0x7 DW_TAG_base_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x9a6:0xb DW_TAG_typedef
	.long	720                             # DW_AT_type
	.long	.Linfo_string122                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9b1:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string124                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9bc:0xb DW_TAG_typedef
	.long	2503                            # DW_AT_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x9c7:0x21 DW_TAG_union_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9cf:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9db:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2536                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x9e8:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x9e9:0xb DW_TAG_typedef
	.long	2548                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9f4:0x7 DW_TAG_base_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x9fb:0x7 DW_TAG_base_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa02:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa0d:0xb DW_TAG_typedef
	.long	2584                            # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xa18:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa1c:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2601                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xa29:0xc DW_TAG_array_type
	.long	2613                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xa2e:0x6 DW_TAG_subrange_type
	.long	2463                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa35:0x7 DW_TAG_base_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xa3c:0x5 DW_TAG_pointer_type
	.long	2625                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xa41:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0xa42:0x5 DW_TAG_pointer_type
	.long	2631                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa47:0xbd DW_TAG_structure_type
	.long	.Linfo_string193                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa4f:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2820                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa5b:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2831                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa67:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa73:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2853                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa7f:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa8b:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2864                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa97:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaa3:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2820                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaaf:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2875                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xabb:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2886                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xac7:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	2897                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xad3:0xc DW_TAG_member
	.long	.Linfo_string184                # DW_AT_name
	.long	2908                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xadf:0xc DW_TAG_member
	.long	.Linfo_string190                # DW_AT_name
	.long	2908                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaeb:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	2908                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaf7:0xc DW_TAG_member
	.long	.Linfo_string192                # DW_AT_name
	.long	2963                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb04:0xb DW_TAG_typedef
	.long	2613                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb0f:0xb DW_TAG_typedef
	.long	2613                            # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb1a:0xb DW_TAG_typedef
	.long	2613                            # DW_AT_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb25:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb30:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb3b:0xb DW_TAG_typedef
	.long	2548                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb46:0xb DW_TAG_typedef
	.long	2548                            # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb51:0xb DW_TAG_typedef
	.long	2548                            # DW_AT_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb5c:0x21 DW_TAG_structure_type
	.long	.Linfo_string189                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb64:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	2941                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb70:0xc DW_TAG_member
	.long	.Linfo_string187                # DW_AT_name
	.long	2952                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb7d:0xb DW_TAG_typedef
	.long	2548                            # DW_AT_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb88:0xb DW_TAG_typedef
	.long	2548                            # DW_AT_type
	.long	.Linfo_string188                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xb93:0xc DW_TAG_array_type
	.long	2952                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb98:0x6 DW_TAG_subrange_type
	.long	2463                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb9f:0x5 DW_TAG_pointer_type
	.long	2980                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xba4:0x69 DW_TAG_structure_type
	.long	.Linfo_string207                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbac:0xc DW_TAG_member
	.long	.Linfo_string195                # DW_AT_name
	.long	3085                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbb8:0xc DW_TAG_member
	.long	.Linfo_string197                # DW_AT_name
	.long	3085                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbc4:0xc DW_TAG_member
	.long	.Linfo_string198                # DW_AT_name
	.long	3085                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbd0:0xc DW_TAG_member
	.long	.Linfo_string199                # DW_AT_name
	.long	3085                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbdc:0xc DW_TAG_member
	.long	.Linfo_string200                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbe8:0xc DW_TAG_member
	.long	.Linfo_string203                # DW_AT_name
	.long	3114                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbf4:0xc DW_TAG_member
	.long	.Linfo_string204                # DW_AT_name
	.long	3126                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc00:0xc DW_TAG_member
	.long	.Linfo_string206                # DW_AT_name
	.long	3126                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc0d:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string196                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc18:0xb DW_TAG_typedef
	.long	3107                            # DW_AT_type
	.long	.Linfo_string202                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc23:0x7 DW_TAG_base_type
	.long	.Linfo_string201                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0xc2a:0xc DW_TAG_array_type
	.long	3096                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xc2f:0x6 DW_TAG_subrange_type
	.long	2463                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc36:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string205                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc41:0x5 DW_TAG_pointer_type
	.long	503                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc46:0x5 DW_TAG_pointer_type
	.long	1577                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/execution/exec.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=59
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=128
.Linfo_string4:
	.asciz	"command"                       # string offset=141
.Linfo_string5:
	.asciz	"builtin"                       # string offset=149
.Linfo_string6:
	.asciz	"assignment"                    # string offset=157
.Linfo_string7:
	.asciz	"e_cmd_type"                    # string offset=168
.Linfo_string8:
	.asciz	"run"                           # string offset=179
.Linfo_string9:
	.asciz	"stop"                          # string offset=183
.Linfo_string10:
	.asciz	"success"                       # string offset=188
.Linfo_string11:
	.asciz	"failure"                       # string offset=196
.Linfo_string12:
	.asciz	"e_state"                       # string offset=204
.Linfo_string13:
	.asciz	"no_type"                       # string offset=212
.Linfo_string14:
	.asciz	"root"                          # string offset=220
.Linfo_string15:
	.asciz	"simple_command"                # string offset=225
.Linfo_string16:
	.asciz	"e_ast_node_type"               # string offset=240
.Linfo_string17:
	.asciz	"l_parentheses"                 # string offset=256
.Linfo_string18:
	.asciz	"r_parentheses"                 # string offset=270
.Linfo_string19:
	.asciz	"simple_quote"                  # string offset=284
.Linfo_string20:
	.asciz	"double_quote"                  # string offset=297
.Linfo_string21:
	.asciz	"exit_status"                   # string offset=310
.Linfo_string22:
	.asciz	"expansion"                     # string offset=322
.Linfo_string23:
	.asciz	"operator"                      # string offset=332
.Linfo_string24:
	.asciz	"wildcard"                      # string offset=341
.Linfo_string25:
	.asciz	"pipe_op"                       # string offset=350
.Linfo_string26:
	.asciz	"heredoc"                       # string offset=358
.Linfo_string27:
	.asciz	"outfile"                       # string offset=366
.Linfo_string28:
	.asciz	"append"                        # string offset=374
.Linfo_string29:
	.asciz	"infile"                        # string offset=381
.Linfo_string30:
	.asciz	"and_if"                        # string offset=388
.Linfo_string31:
	.asciz	"or_if"                         # string offset=395
.Linfo_string32:
	.asciz	"word"                          # string offset=401
.Linfo_string33:
	.asciz	"name"                          # string offset=406
.Linfo_string34:
	.asciz	"assignment_word"               # string offset=411
.Linfo_string35:
	.asciz	"eof_token"                     # string offset=427
.Linfo_string36:
	.asciz	"e_token"                       # string offset=437
.Linfo_string37:
	.asciz	"if_redir"                      # string offset=445
.Linfo_string38:
	.asciz	"exec_command"                  # string offset=454
.Linfo_string39:
	.asciz	"wait_command_ending"           # string offset=467
.Linfo_string40:
	.asciz	"execution"                     # string offset=487
.Linfo_string41:
	.asciz	"cmd"                           # string offset=497
.Linfo_string42:
	.asciz	"id"                            # string offset=501
.Linfo_string43:
	.asciz	"int"                           # string offset=504
.Linfo_string44:
	.asciz	"pid"                           # string offset=508
.Linfo_string45:
	.asciz	"type"                          # string offset=512
.Linfo_string46:
	.asciz	"wstatus"                       # string offset=517
.Linfo_string47:
	.asciz	"char"                          # string offset=525
.Linfo_string48:
	.asciz	"path"                          # string offset=530
.Linfo_string49:
	.asciz	"arg"                           # string offset=535
.Linfo_string50:
	.asciz	"value"                         # string offset=539
.Linfo_string51:
	.asciz	"next"                          # string offset=545
.Linfo_string52:
	.asciz	"s_arg"                         # string offset=550
.Linfo_string53:
	.asciz	"t_arg"                         # string offset=556
.Linfo_string54:
	.asciz	"pipe"                          # string offset=562
.Linfo_string55:
	.asciz	"to_close"                      # string offset=567
.Linfo_string56:
	.asciz	"write"                         # string offset=576
.Linfo_string57:
	.asciz	"read"                          # string offset=582
.Linfo_string58:
	.asciz	"s_pipe"                        # string offset=587
.Linfo_string59:
	.asciz	"t_pipe"                        # string offset=594
.Linfo_string60:
	.asciz	"redir"                         # string offset=601
.Linfo_string61:
	.asciz	"in_fd"                         # string offset=607
.Linfo_string62:
	.asciz	"out_fd"                        # string offset=613
.Linfo_string63:
	.asciz	"fd"                            # string offset=620
.Linfo_string64:
	.asciz	"s_infile"                      # string offset=623
.Linfo_string65:
	.asciz	"t_infile"                      # string offset=632
.Linfo_string66:
	.asciz	"s_outfile"                     # string offset=641
.Linfo_string67:
	.asciz	"t_outfile"                     # string offset=651
.Linfo_string68:
	.asciz	"s_redir"                       # string offset=661
.Linfo_string69:
	.asciz	"t_redir"                       # string offset=669
.Linfo_string70:
	.asciz	"assign"                        # string offset=677
.Linfo_string71:
	.asciz	"s_var"                         # string offset=684
.Linfo_string72:
	.asciz	"t_var"                         # string offset=690
.Linfo_string73:
	.asciz	"s_expan"                       # string offset=696
.Linfo_string74:
	.asciz	"t_expan"                       # string offset=704
.Linfo_string75:
	.asciz	"arg_array"                     # string offset=712
.Linfo_string76:
	.asciz	"prev"                          # string offset=722
.Linfo_string77:
	.asciz	"s_cmd"                         # string offset=727
.Linfo_string78:
	.asciz	"t_cmd"                         # string offset=733
.Linfo_string79:
	.asciz	"filename"                      # string offset=739
.Linfo_string80:
	.asciz	"minishell"                     # string offset=748
.Linfo_string81:
	.asciz	"dir"                           # string offset=758
.Linfo_string82:
	.asciz	"__dirstream"                   # string offset=762
.Linfo_string83:
	.asciz	"DIR"                           # string offset=774
.Linfo_string84:
	.asciz	"state"                         # string offset=778
.Linfo_string85:
	.asciz	"input"                         # string offset=784
.Linfo_string86:
	.asciz	"prompt"                        # string offset=790
.Linfo_string87:
	.asciz	"operator_nbr"                  # string offset=797
.Linfo_string88:
	.asciz	"env_array"                     # string offset=810
.Linfo_string89:
	.asciz	"env"                           # string offset=820
.Linfo_string90:
	.asciz	"s_env"                         # string offset=824
.Linfo_string91:
	.asciz	"t_env"                         # string offset=830
.Linfo_string92:
	.asciz	"local"                         # string offset=836
.Linfo_string93:
	.asciz	"syntax_tree"                   # string offset=842
.Linfo_string94:
	.asciz	"node"                          # string offset=854
.Linfo_string95:
	.asciz	"pipe_fd"                       # string offset=859
.Linfo_string96:
	.asciz	"left"                          # string offset=867
.Linfo_string97:
	.asciz	"right"                         # string offset=872
.Linfo_string98:
	.asciz	"s_ast_node"                    # string offset=878
.Linfo_string99:
	.asciz	"t_ast_node"                    # string offset=889
.Linfo_string100:
	.asciz	"s_ast"                         # string offset=900
.Linfo_string101:
	.asciz	"t_ast"                         # string offset=906
.Linfo_string102:
	.asciz	"token_stream"                  # string offset=912
.Linfo_string103:
	.asciz	"quote_nbr"                     # string offset=925
.Linfo_string104:
	.asciz	"length"                        # string offset=935
.Linfo_string105:
	.asciz	"lexeme"                        # string offset=942
.Linfo_string106:
	.asciz	"s_token"                       # string offset=949
.Linfo_string107:
	.asciz	"t_token"                       # string offset=957
.Linfo_string108:
	.asciz	"sighandler"                    # string offset=965
.Linfo_string109:
	.asciz	"__sigaction_handler"           # string offset=976
.Linfo_string110:
	.asciz	"sa_handler"                    # string offset=996
.Linfo_string111:
	.asciz	"__sighandler_t"                # string offset=1007
.Linfo_string112:
	.asciz	"sa_sigaction"                  # string offset=1022
.Linfo_string113:
	.asciz	"si_signo"                      # string offset=1035
.Linfo_string114:
	.asciz	"si_errno"                      # string offset=1044
.Linfo_string115:
	.asciz	"si_code"                       # string offset=1053
.Linfo_string116:
	.asciz	"__pad0"                        # string offset=1061
.Linfo_string117:
	.asciz	"_sifields"                     # string offset=1068
.Linfo_string118:
	.asciz	"_pad"                          # string offset=1078
.Linfo_string119:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1083
.Linfo_string120:
	.asciz	"_kill"                         # string offset=1103
.Linfo_string121:
	.asciz	"si_pid"                        # string offset=1109
.Linfo_string122:
	.asciz	"__pid_t"                       # string offset=1116
.Linfo_string123:
	.asciz	"si_uid"                        # string offset=1124
.Linfo_string124:
	.asciz	"__uid_t"                       # string offset=1131
.Linfo_string125:
	.asciz	"_timer"                        # string offset=1139
.Linfo_string126:
	.asciz	"si_tid"                        # string offset=1146
.Linfo_string127:
	.asciz	"si_overrun"                    # string offset=1153
.Linfo_string128:
	.asciz	"si_sigval"                     # string offset=1164
.Linfo_string129:
	.asciz	"sival_int"                     # string offset=1174
.Linfo_string130:
	.asciz	"sival_ptr"                     # string offset=1184
.Linfo_string131:
	.asciz	"sigval"                        # string offset=1194
.Linfo_string132:
	.asciz	"__sigval_t"                    # string offset=1201
.Linfo_string133:
	.asciz	"_rt"                           # string offset=1212
.Linfo_string134:
	.asciz	"_sigchld"                      # string offset=1216
.Linfo_string135:
	.asciz	"si_status"                     # string offset=1225
.Linfo_string136:
	.asciz	"si_utime"                      # string offset=1235
.Linfo_string137:
	.asciz	"long int"                      # string offset=1244
.Linfo_string138:
	.asciz	"__clock_t"                     # string offset=1253
.Linfo_string139:
	.asciz	"si_stime"                      # string offset=1263
.Linfo_string140:
	.asciz	"_sigfault"                     # string offset=1272
.Linfo_string141:
	.asciz	"si_addr"                       # string offset=1282
.Linfo_string142:
	.asciz	"si_addr_lsb"                   # string offset=1290
.Linfo_string143:
	.asciz	"short"                         # string offset=1302
.Linfo_string144:
	.asciz	"_bounds"                       # string offset=1308
.Linfo_string145:
	.asciz	"_addr_bnd"                     # string offset=1316
.Linfo_string146:
	.asciz	"_lower"                        # string offset=1326
.Linfo_string147:
	.asciz	"_upper"                        # string offset=1333
.Linfo_string148:
	.asciz	"_pkey"                         # string offset=1340
.Linfo_string149:
	.asciz	"__uint32_t"                    # string offset=1346
.Linfo_string150:
	.asciz	"_sigpoll"                      # string offset=1357
.Linfo_string151:
	.asciz	"si_band"                       # string offset=1366
.Linfo_string152:
	.asciz	"si_fd"                         # string offset=1374
.Linfo_string153:
	.asciz	"_sigsys"                       # string offset=1380
.Linfo_string154:
	.asciz	"_call_addr"                    # string offset=1388
.Linfo_string155:
	.asciz	"_syscall"                      # string offset=1399
.Linfo_string156:
	.asciz	"_arch"                         # string offset=1408
.Linfo_string157:
	.asciz	"siginfo_t"                     # string offset=1414
.Linfo_string158:
	.asciz	"sa_mask"                       # string offset=1424
.Linfo_string159:
	.asciz	"__val"                         # string offset=1432
.Linfo_string160:
	.asciz	"long unsigned int"             # string offset=1438
.Linfo_string161:
	.asciz	"__sigset_t"                    # string offset=1456
.Linfo_string162:
	.asciz	"sa_flags"                      # string offset=1467
.Linfo_string163:
	.asciz	"sa_restorer"                   # string offset=1476
.Linfo_string164:
	.asciz	"sigaction"                     # string offset=1488
.Linfo_string165:
	.asciz	"statbuf"                       # string offset=1498
.Linfo_string166:
	.asciz	"st_dev"                        # string offset=1506
.Linfo_string167:
	.asciz	"__dev_t"                       # string offset=1513
.Linfo_string168:
	.asciz	"st_ino"                        # string offset=1521
.Linfo_string169:
	.asciz	"__ino_t"                       # string offset=1528
.Linfo_string170:
	.asciz	"st_nlink"                      # string offset=1536
.Linfo_string171:
	.asciz	"__nlink_t"                     # string offset=1545
.Linfo_string172:
	.asciz	"st_mode"                       # string offset=1555
.Linfo_string173:
	.asciz	"__mode_t"                      # string offset=1563
.Linfo_string174:
	.asciz	"st_uid"                        # string offset=1572
.Linfo_string175:
	.asciz	"st_gid"                        # string offset=1579
.Linfo_string176:
	.asciz	"__gid_t"                       # string offset=1586
.Linfo_string177:
	.asciz	"st_rdev"                       # string offset=1594
.Linfo_string178:
	.asciz	"st_size"                       # string offset=1602
.Linfo_string179:
	.asciz	"__off_t"                       # string offset=1610
.Linfo_string180:
	.asciz	"st_blksize"                    # string offset=1618
.Linfo_string181:
	.asciz	"__blksize_t"                   # string offset=1629
.Linfo_string182:
	.asciz	"st_blocks"                     # string offset=1641
.Linfo_string183:
	.asciz	"__blkcnt_t"                    # string offset=1651
.Linfo_string184:
	.asciz	"st_atim"                       # string offset=1662
.Linfo_string185:
	.asciz	"tv_sec"                        # string offset=1670
.Linfo_string186:
	.asciz	"__time_t"                      # string offset=1677
.Linfo_string187:
	.asciz	"tv_nsec"                       # string offset=1686
.Linfo_string188:
	.asciz	"__syscall_slong_t"             # string offset=1694
.Linfo_string189:
	.asciz	"timespec"                      # string offset=1712
.Linfo_string190:
	.asciz	"st_mtim"                       # string offset=1721
.Linfo_string191:
	.asciz	"st_ctim"                       # string offset=1729
.Linfo_string192:
	.asciz	"__glibc_reserved"              # string offset=1737
.Linfo_string193:
	.asciz	"stat"                          # string offset=1754
.Linfo_string194:
	.asciz	"term"                          # string offset=1759
.Linfo_string195:
	.asciz	"c_iflag"                       # string offset=1764
.Linfo_string196:
	.asciz	"tcflag_t"                      # string offset=1772
.Linfo_string197:
	.asciz	"c_oflag"                       # string offset=1781
.Linfo_string198:
	.asciz	"c_cflag"                       # string offset=1789
.Linfo_string199:
	.asciz	"c_lflag"                       # string offset=1797
.Linfo_string200:
	.asciz	"c_line"                        # string offset=1805
.Linfo_string201:
	.asciz	"unsigned char"                 # string offset=1812
.Linfo_string202:
	.asciz	"cc_t"                          # string offset=1826
.Linfo_string203:
	.asciz	"c_cc"                          # string offset=1831
.Linfo_string204:
	.asciz	"c_ispeed"                      # string offset=1836
.Linfo_string205:
	.asciz	"speed_t"                       # string offset=1845
.Linfo_string206:
	.asciz	"c_ospeed"                      # string offset=1853
.Linfo_string207:
	.asciz	"termios"                       # string offset=1862
.Linfo_string208:
	.asciz	"s_minishell"                   # string offset=1870
.Linfo_string209:
	.asciz	"t_minishell"                   # string offset=1882
.Linfo_string210:
	.asciz	"ast"                           # string offset=1894
.Linfo_string211:
	.asciz	"i"                             # string offset=1898
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym if_redir
	.addrsig_sym open_command_infile
	.addrsig_sym open_command_outfile
	.addrsig_sym access
	.addrsig_sym ft_printf
	.addrsig_sym exec_command
	.addrsig_sym assign_variable
	.addrsig_sym is_builtin
	.addrsig_sym exec_builtin
	.addrsig_sym ft_strlen
	.addrsig_sym fork
	.addrsig_sym perror
	.addrsig_sym child_job
	.addrsig_sym wait_command_ending
	.addrsig_sym waitpid
	.addrsig_sym get_env_array
	.addrsig_sym __errno_location
	.addrsig_sym exec_pipe
	.addrsig_sym exec_list
	.addrsig_sym g_signal
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.text
	.file	"exec_pipe.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/execution/../../include/minishell.h"
	.globl	init_cmd_pipe                   # -- Begin function init_cmd_pipe
	.p2align	4, 0x90
	.type	init_cmd_pipe,@function
init_cmd_pipe:                          # @init_cmd_pipe
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/execution/exec_pipe.c"
	.loc	2 16 0                          # src/execution/exec_pipe.c:16:0
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
	.loc	2 17 12 prologue_end            # src/execution/exec_pipe.c:17:12
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 17 4 is_stmt 0                # src/execution/exec_pipe.c:17:4
	movq	-8(%rbp), %rax
	.loc	2 17 10                         # src/execution/exec_pipe.c:17:10
	movq	%rcx, (%rax)
.Ltmp1:
	.loc	2 18 9 is_stmt 1                # src/execution/exec_pipe.c:18:9
	movq	-8(%rbp), %rax
	.loc	2 18 7 is_stmt 0                # src/execution/exec_pipe.c:18:7
	cmpq	$0, (%rax)
.Ltmp2:
	.loc	2 18 6                          # src/execution/exec_pipe.c:18:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 20 3 is_stmt 1                # src/execution/exec_pipe.c:20:3
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 21 3                          # src/execution/exec_pipe.c:21:3
	jmp	.LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 23 4                          # src/execution/exec_pipe.c:23:4
	movq	-8(%rbp), %rax
	.loc	2 23 3 is_stmt 0                # src/execution/exec_pipe.c:23:3
	movq	(%rax), %rax
	.loc	2 23 16                         # src/execution/exec_pipe.c:23:16
	movq	$0, 16(%rax)
	.loc	2 24 4 is_stmt 1                # src/execution/exec_pipe.c:24:4
	movq	-8(%rbp), %rax
	.loc	2 24 3 is_stmt 0                # src/execution/exec_pipe.c:24:3
	movq	(%rax), %rax
	.loc	2 24 17                         # src/execution/exec_pipe.c:24:17
	movq	$0, 8(%rax)
	.loc	2 25 4 is_stmt 1                # src/execution/exec_pipe.c:25:4
	movq	-8(%rbp), %rax
	.loc	2 25 3 is_stmt 0                # src/execution/exec_pipe.c:25:3
	movq	(%rax), %rax
	.loc	2 25 20                         # src/execution/exec_pipe.c:25:20
	movq	$0, (%rax)
.LBB0_3:
	.loc	2 26 1 is_stmt 1                # src/execution/exec_pipe.c:26:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	init_cmd_pipe, .Lfunc_end0-init_cmd_pipe
	.cfi_endproc
                                        # -- End function
	.globl	manage_parent_pipe              # -- Begin function manage_parent_pipe
	.p2align	4, 0x90
	.type	manage_parent_pipe,@function
manage_parent_pipe:                     # @manage_parent_pipe
.Lfunc_begin1:
	.loc	2 29 0                          # src/execution/exec_pipe.c:29:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp6:
	.loc	2 30 8 prologue_end             # src/execution/exec_pipe.c:30:8
	movq	-8(%rbp), %rax
	.loc	2 30 7 is_stmt 0                # src/execution/exec_pipe.c:30:7
	movq	(%rax), %rax
	.loc	2 30 6                          # src/execution/exec_pipe.c:30:6
	cmpq	$0, (%rax)
.Ltmp7:
	.loc	2 30 6                          # src/execution/exec_pipe.c:30:6
	je	.LBB1_8
# %bb.1:
.Ltmp8:
	.loc	2 32 9 is_stmt 1                # src/execution/exec_pipe.c:32:9
	movq	-8(%rbp), %rax
	.loc	2 32 8 is_stmt 0                # src/execution/exec_pipe.c:32:8
	movq	(%rax), %rax
	.loc	2 32 15                         # src/execution/exec_pipe.c:32:15
	movq	(%rax), %rax
	.loc	2 32 7                          # src/execution/exec_pipe.c:32:7
	cmpq	$0, 8(%rax)
	.loc	2 33 4 is_stmt 1                # src/execution/exec_pipe.c:33:4
	je	.LBB1_7
# %bb.2:
	.loc	2 33 11 is_stmt 0               # src/execution/exec_pipe.c:33:11
	movq	-8(%rbp), %rax
	.loc	2 33 10                         # src/execution/exec_pipe.c:33:10
	movq	(%rax), %rax
	.loc	2 33 17                         # src/execution/exec_pipe.c:33:17
	movq	(%rax), %rax
	.loc	2 33 9                          # src/execution/exec_pipe.c:33:9
	cmpq	$0, 24(%rax)
	.loc	2 33 28                         # src/execution/exec_pipe.c:33:28
	je	.LBB1_4
# %bb.3:
	.loc	2 33 33                         # src/execution/exec_pipe.c:33:33
	movq	-8(%rbp), %rax
	.loc	2 33 32                         # src/execution/exec_pipe.c:33:32
	movq	(%rax), %rax
	.loc	2 33 39                         # src/execution/exec_pipe.c:33:39
	movq	(%rax), %rax
	.loc	2 33 45                         # src/execution/exec_pipe.c:33:45
	movq	24(%rax), %rax
	.loc	2 33 56                         # src/execution/exec_pipe.c:33:56
	cmpl	$2, 8(%rax)
	.loc	2 34 5 is_stmt 1                # src/execution/exec_pipe.c:34:5
	jne	.LBB1_6
.LBB1_4:
	.loc	2 34 11 is_stmt 0               # src/execution/exec_pipe.c:34:11
	movq	-8(%rbp), %rax
	.loc	2 34 10                         # src/execution/exec_pipe.c:34:10
	movq	(%rax), %rax
	.loc	2 34 17                         # src/execution/exec_pipe.c:34:17
	movq	(%rax), %rax
	.loc	2 34 9                          # src/execution/exec_pipe.c:34:9
	cmpq	$0, 32(%rax)
	.loc	2 35 6 is_stmt 1                # src/execution/exec_pipe.c:35:6
	je	.LBB1_7
# %bb.5:
	.loc	2 35 11 is_stmt 0               # src/execution/exec_pipe.c:35:11
	movq	-8(%rbp), %rax
	.loc	2 35 10                         # src/execution/exec_pipe.c:35:10
	movq	(%rax), %rax
	.loc	2 35 17                         # src/execution/exec_pipe.c:35:17
	movq	(%rax), %rax
	.loc	2 35 23                         # src/execution/exec_pipe.c:35:23
	movq	32(%rax), %rax
	.loc	2 35 35                         # src/execution/exec_pipe.c:35:35
	cmpl	$2, 8(%rax)
.Ltmp9:
	.loc	2 32 7 is_stmt 1                # src/execution/exec_pipe.c:32:7
	je	.LBB1_7
.LBB1_6:
.Ltmp10:
	.loc	2 37 12                         # src/execution/exec_pipe.c:37:12
	movq	-8(%rbp), %rax
	.loc	2 37 11 is_stmt 0               # src/execution/exec_pipe.c:37:11
	movq	(%rax), %rax
	.loc	2 37 18                         # src/execution/exec_pipe.c:37:18
	movq	(%rax), %rax
	.loc	2 37 24                         # src/execution/exec_pipe.c:37:24
	movq	8(%rax), %rax
	.loc	2 37 10                         # src/execution/exec_pipe.c:37:10
	movl	(%rax), %edi
	.loc	2 37 4                          # src/execution/exec_pipe.c:37:4
	callq	close
	.loc	2 38 12 is_stmt 1               # src/execution/exec_pipe.c:38:12
	movq	-8(%rbp), %rax
	.loc	2 38 11 is_stmt 0               # src/execution/exec_pipe.c:38:11
	movq	(%rax), %rax
	.loc	2 38 18                         # src/execution/exec_pipe.c:38:18
	movq	(%rax), %rax
	.loc	2 38 24                         # src/execution/exec_pipe.c:38:24
	movq	8(%rax), %rax
	.loc	2 38 10                         # src/execution/exec_pipe.c:38:10
	movl	4(%rax), %edi
	.loc	2 38 4                          # src/execution/exec_pipe.c:38:4
	callq	close
.Ltmp11:
.LBB1_7:
	.loc	2 40 2 is_stmt 1                # src/execution/exec_pipe.c:40:2
	jmp	.LBB1_8
.Ltmp12:
.LBB1_8:
	.loc	2 41 1                          # src/execution/exec_pipe.c:41:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end1:
	.size	manage_parent_pipe, .Lfunc_end1-manage_parent_pipe
	.cfi_endproc
                                        # -- End function
	.globl	setup_ast_next                  # -- Begin function setup_ast_next
	.p2align	4, 0x90
	.type	setup_ast_next,@function
setup_ast_next:                         # @setup_ast_next
.Lfunc_begin2:
	.loc	2 44 0                          # src/execution/exec_pipe.c:44:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp14:
	.loc	2 45 8 prologue_end             # src/execution/exec_pipe.c:45:8
	movq	-8(%rbp), %rax
	.loc	2 45 7 is_stmt 0                # src/execution/exec_pipe.c:45:7
	movq	(%rax), %rax
	.loc	2 45 6                          # src/execution/exec_pipe.c:45:6
	cmpq	$0, 8(%rax)
	.loc	2 45 19                         # src/execution/exec_pipe.c:45:19
	je	.LBB2_5
# %bb.1:
	.loc	2 45 46                         # src/execution/exec_pipe.c:45:46
	movq	-8(%rbp), %rax
	.loc	2 45 45                         # src/execution/exec_pipe.c:45:45
	movq	(%rax), %rax
	.loc	2 45 52                         # src/execution/exec_pipe.c:45:52
	movq	8(%rax), %rdi
	.loc	2 45 22                         # src/execution/exec_pipe.c:45:22
	callq	is_next_node_pipeline
.Ltmp15:
	.loc	2 45 6                          # src/execution/exec_pipe.c:45:6
	testb	$1, %al
	jne	.LBB2_2
	jmp	.LBB2_5
.LBB2_2:
.Ltmp16:
	.loc	2 47 33 is_stmt 1               # src/execution/exec_pipe.c:47:33
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 47 5 is_stmt 0                # src/execution/exec_pipe.c:47:5
	movq	-8(%rbp), %rax
	.loc	2 47 4                          # src/execution/exec_pipe.c:47:4
	movq	(%rax), %rax
	.loc	2 47 11                         # src/execution/exec_pipe.c:47:11
	movq	8(%rax), %rax
	.loc	2 47 17                         # src/execution/exec_pipe.c:47:17
	movq	(%rax), %rax
	.loc	2 47 31                         # src/execution/exec_pipe.c:47:31
	movq	%rcx, 8(%rax)
.Ltmp17:
	.loc	2 48 14 is_stmt 1               # src/execution/exec_pipe.c:48:14
	movq	-8(%rbp), %rax
	.loc	2 48 13 is_stmt 0               # src/execution/exec_pipe.c:48:13
	movq	(%rax), %rax
	.loc	2 48 20                         # src/execution/exec_pipe.c:48:20
	movq	8(%rax), %rax
	.loc	2 48 26                         # src/execution/exec_pipe.c:48:26
	movq	(%rax), %rax
	.loc	2 48 32                         # src/execution/exec_pipe.c:48:32
	movq	8(%rax), %rdi
	.loc	2 48 7                          # src/execution/exec_pipe.c:48:7
	callq	pipe
	.loc	2 48 41                         # src/execution/exec_pipe.c:48:41
	cmpl	$0, %eax
.Ltmp18:
	.loc	2 48 7                          # src/execution/exec_pipe.c:48:7
	je	.LBB2_4
# %bb.3:
.Ltmp19:
	.loc	2 49 4 is_stmt 1                # src/execution/exec_pipe.c:49:4
	movabsq	$.L.str.1, %rdi
	callq	perror
.Ltmp20:
.LBB2_4:
	.loc	2 50 40                         # src/execution/exec_pipe.c:50:40
	movq	-8(%rbp), %rax
	.loc	2 50 39 is_stmt 0               # src/execution/exec_pipe.c:50:39
	movq	(%rax), %rax
	.loc	2 50 46                         # src/execution/exec_pipe.c:50:46
	movq	8(%rax), %rax
	.loc	2 50 52                         # src/execution/exec_pipe.c:50:52
	movq	(%rax), %rax
	.loc	2 50 58                         # src/execution/exec_pipe.c:50:58
	movq	8(%rax), %rcx
	.loc	2 50 5                          # src/execution/exec_pipe.c:50:5
	movq	-8(%rbp), %rax
	.loc	2 50 4                          # src/execution/exec_pipe.c:50:4
	movq	(%rax), %rax
	.loc	2 50 11                         # src/execution/exec_pipe.c:50:11
	movq	(%rax), %rax
	.loc	2 50 17                         # src/execution/exec_pipe.c:50:17
	movq	32(%rax), %rax
	.loc	2 50 24                         # src/execution/exec_pipe.c:50:24
	movq	40(%rax), %rax
	.loc	2 50 36                         # src/execution/exec_pipe.c:50:36
	movq	%rcx, 8(%rax)
	.loc	2 51 42 is_stmt 1               # src/execution/exec_pipe.c:51:42
	movq	-8(%rbp), %rax
	.loc	2 51 41 is_stmt 0               # src/execution/exec_pipe.c:51:41
	movq	(%rax), %rax
	.loc	2 51 48                         # src/execution/exec_pipe.c:51:48
	movq	8(%rax), %rax
	.loc	2 51 54                         # src/execution/exec_pipe.c:51:54
	movq	(%rax), %rax
	.loc	2 51 60                         # src/execution/exec_pipe.c:51:60
	movq	8(%rax), %rcx
	.loc	2 51 5                          # src/execution/exec_pipe.c:51:5
	movq	-8(%rbp), %rax
	.loc	2 51 4                          # src/execution/exec_pipe.c:51:4
	movq	(%rax), %rax
	.loc	2 51 11                         # src/execution/exec_pipe.c:51:11
	movq	(%rax), %rax
	.loc	2 51 17                         # src/execution/exec_pipe.c:51:17
	movq	24(%rax), %rax
	.loc	2 51 23                         # src/execution/exec_pipe.c:51:23
	movq	40(%rax), %rax
	.loc	2 51 38                         # src/execution/exec_pipe.c:51:38
	movq	%rcx, (%rax)
.Ltmp21:
.LBB2_5:
	.loc	2 53 1 is_stmt 1                # src/execution/exec_pipe.c:53:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp22:
.Lfunc_end2:
	.size	setup_ast_next, .Lfunc_end2-setup_ast_next
	.cfi_endproc
                                        # -- End function
	.globl	setup_pipe                      # -- Begin function setup_pipe
	.p2align	4, 0x90
	.type	setup_pipe,@function
setup_pipe:                             # @setup_pipe
.Lfunc_begin3:
	.loc	2 56 0                          # src/execution/exec_pipe.c:56:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp23:
	.loc	2 57 9 prologue_end             # src/execution/exec_pipe.c:57:9
	movq	-8(%rbp), %rax
	.loc	2 57 8 is_stmt 0                # src/execution/exec_pipe.c:57:8
	movq	(%rax), %rax
	.loc	2 57 15                         # src/execution/exec_pipe.c:57:15
	movq	(%rax), %rax
	.loc	2 57 7                          # src/execution/exec_pipe.c:57:7
	cmpq	$0, 8(%rax)
	.loc	2 57 29                         # src/execution/exec_pipe.c:57:29
	jne	.LBB3_7
# %bb.1:
	.loc	2 57 34                         # src/execution/exec_pipe.c:57:34
	movq	-8(%rbp), %rax
	.loc	2 57 33                         # src/execution/exec_pipe.c:57:33
	movq	(%rax), %rax
	.loc	2 57 40                         # src/execution/exec_pipe.c:57:40
	movq	(%rax), %rax
	.loc	2 57 51                         # src/execution/exec_pipe.c:57:51
	cmpl	$2, 4(%rax)
.Ltmp24:
	.loc	2 57 6                          # src/execution/exec_pipe.c:57:6
	je	.LBB3_7
# %bb.2:
.Ltmp25:
	.loc	2 59 27 is_stmt 1               # src/execution/exec_pipe.c:59:27
	movl	$8, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 59 5 is_stmt 0                # src/execution/exec_pipe.c:59:5
	movq	-8(%rbp), %rax
	.loc	2 59 4                          # src/execution/exec_pipe.c:59:4
	movq	(%rax), %rax
	.loc	2 59 11                         # src/execution/exec_pipe.c:59:11
	movq	(%rax), %rax
	.loc	2 59 25                         # src/execution/exec_pipe.c:59:25
	movq	%rcx, 8(%rax)
.Ltmp26:
	.loc	2 60 10 is_stmt 1               # src/execution/exec_pipe.c:60:10
	movq	-8(%rbp), %rax
	.loc	2 60 9 is_stmt 0                # src/execution/exec_pipe.c:60:9
	movq	(%rax), %rax
	.loc	2 60 16                         # src/execution/exec_pipe.c:60:16
	movq	(%rax), %rax
	.loc	2 60 8                          # src/execution/exec_pipe.c:60:8
	cmpq	$0, 8(%rax)
.Ltmp27:
	.loc	2 60 7                          # src/execution/exec_pipe.c:60:7
	jne	.LBB3_4
# %bb.3:
.Ltmp28:
	.loc	2 62 4 is_stmt 1                # src/execution/exec_pipe.c:62:4
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 63 4                          # src/execution/exec_pipe.c:63:4
	jmp	.LBB3_14
.Ltmp29:
.LBB3_4:
	.loc	2 65 14                         # src/execution/exec_pipe.c:65:14
	movq	-8(%rbp), %rax
	.loc	2 65 13 is_stmt 0               # src/execution/exec_pipe.c:65:13
	movq	(%rax), %rax
	.loc	2 65 20                         # src/execution/exec_pipe.c:65:20
	movq	(%rax), %rax
	.loc	2 65 26                         # src/execution/exec_pipe.c:65:26
	movq	8(%rax), %rdi
	.loc	2 65 7                          # src/execution/exec_pipe.c:65:7
	callq	pipe
	.loc	2 65 35                         # src/execution/exec_pipe.c:65:35
	cmpl	$0, %eax
.Ltmp30:
	.loc	2 65 7                          # src/execution/exec_pipe.c:65:7
	je	.LBB3_6
# %bb.5:
.Ltmp31:
	.loc	2 66 4 is_stmt 1                # src/execution/exec_pipe.c:66:4
	movabsq	$.L.str.1, %rdi
	callq	perror
.Ltmp32:
.LBB3_6:
	.loc	2 67 2                          # src/execution/exec_pipe.c:67:2
	jmp	.LBB3_7
.Ltmp33:
.LBB3_7:
	.loc	2 68 8                          # src/execution/exec_pipe.c:68:8
	movq	-8(%rbp), %rax
	.loc	2 68 7 is_stmt 0                # src/execution/exec_pipe.c:68:7
	movq	(%rax), %rax
	.loc	2 68 14                         # src/execution/exec_pipe.c:68:14
	movq	(%rax), %rax
	.loc	2 68 6                          # src/execution/exec_pipe.c:68:6
	cmpq	$0, 24(%rax)
	.loc	2 68 25                         # src/execution/exec_pipe.c:68:25
	je	.LBB3_10
# %bb.8:
	.loc	2 68 31                         # src/execution/exec_pipe.c:68:31
	movq	-8(%rbp), %rax
	.loc	2 68 30                         # src/execution/exec_pipe.c:68:30
	movq	(%rax), %rax
	.loc	2 68 37                         # src/execution/exec_pipe.c:68:37
	movq	(%rax), %rax
	.loc	2 68 43                         # src/execution/exec_pipe.c:68:43
	movq	24(%rax), %rax
	.loc	2 68 29                         # src/execution/exec_pipe.c:68:29
	cmpq	$0, 40(%rax)
.Ltmp34:
	.loc	2 68 6                          # src/execution/exec_pipe.c:68:6
	jne	.LBB3_10
# %bb.9:
.Ltmp35:
	.loc	2 70 20 is_stmt 1               # src/execution/exec_pipe.c:70:20
	movq	-8(%rbp), %rax
	.loc	2 70 19 is_stmt 0               # src/execution/exec_pipe.c:70:19
	movq	(%rax), %rax
	.loc	2 70 26                         # src/execution/exec_pipe.c:70:26
	movq	(%rax), %rax
	.loc	2 70 32                         # src/execution/exec_pipe.c:70:32
	movq	24(%rax), %rdi
	.loc	2 70 38                         # src/execution/exec_pipe.c:70:38
	addq	$40, %rdi
	.loc	2 70 3                          # src/execution/exec_pipe.c:70:3
	callq	init_cmd_pipe
	.loc	2 71 39 is_stmt 1               # src/execution/exec_pipe.c:71:39
	movq	-8(%rbp), %rax
	.loc	2 71 38 is_stmt 0               # src/execution/exec_pipe.c:71:38
	movq	(%rax), %rax
	.loc	2 71 45                         # src/execution/exec_pipe.c:71:45
	movq	(%rax), %rax
	.loc	2 71 51                         # src/execution/exec_pipe.c:71:51
	movq	8(%rax), %rcx
	.loc	2 71 5                          # src/execution/exec_pipe.c:71:5
	movq	-8(%rbp), %rax
	.loc	2 71 4                          # src/execution/exec_pipe.c:71:4
	movq	(%rax), %rax
	.loc	2 71 11                         # src/execution/exec_pipe.c:71:11
	movq	(%rax), %rax
	.loc	2 71 17                         # src/execution/exec_pipe.c:71:17
	movq	24(%rax), %rax
	.loc	2 71 23                         # src/execution/exec_pipe.c:71:23
	movq	40(%rax), %rax
	.loc	2 71 35                         # src/execution/exec_pipe.c:71:35
	movq	%rcx, 8(%rax)
.Ltmp36:
.LBB3_10:
	.loc	2 73 8 is_stmt 1                # src/execution/exec_pipe.c:73:8
	movq	-8(%rbp), %rax
	.loc	2 73 7 is_stmt 0                # src/execution/exec_pipe.c:73:7
	movq	(%rax), %rax
	.loc	2 73 14                         # src/execution/exec_pipe.c:73:14
	movq	(%rax), %rax
	.loc	2 73 6                          # src/execution/exec_pipe.c:73:6
	cmpq	$0, 32(%rax)
	.loc	2 73 26                         # src/execution/exec_pipe.c:73:26
	je	.LBB3_13
# %bb.11:
	.loc	2 73 32                         # src/execution/exec_pipe.c:73:32
	movq	-8(%rbp), %rax
	.loc	2 73 31                         # src/execution/exec_pipe.c:73:31
	movq	(%rax), %rax
	.loc	2 73 38                         # src/execution/exec_pipe.c:73:38
	movq	(%rax), %rax
	.loc	2 73 44                         # src/execution/exec_pipe.c:73:44
	movq	32(%rax), %rax
	.loc	2 73 30                         # src/execution/exec_pipe.c:73:30
	cmpq	$0, 40(%rax)
.Ltmp37:
	.loc	2 73 6                          # src/execution/exec_pipe.c:73:6
	jne	.LBB3_13
# %bb.12:
.Ltmp38:
	.loc	2 75 20 is_stmt 1               # src/execution/exec_pipe.c:75:20
	movq	-8(%rbp), %rax
	.loc	2 75 19 is_stmt 0               # src/execution/exec_pipe.c:75:19
	movq	(%rax), %rax
	.loc	2 75 26                         # src/execution/exec_pipe.c:75:26
	movq	(%rax), %rax
	.loc	2 75 32                         # src/execution/exec_pipe.c:75:32
	movq	32(%rax), %rdi
	.loc	2 75 39                         # src/execution/exec_pipe.c:75:39
	addq	$40, %rdi
	.loc	2 75 3                          # src/execution/exec_pipe.c:75:3
	callq	init_cmd_pipe
	.loc	2 76 39 is_stmt 1               # src/execution/exec_pipe.c:76:39
	movq	-8(%rbp), %rax
	.loc	2 76 38 is_stmt 0               # src/execution/exec_pipe.c:76:38
	movq	(%rax), %rax
	.loc	2 76 45                         # src/execution/exec_pipe.c:76:45
	movq	(%rax), %rax
	.loc	2 76 51                         # src/execution/exec_pipe.c:76:51
	movq	8(%rax), %rcx
	.loc	2 76 5                          # src/execution/exec_pipe.c:76:5
	movq	-8(%rbp), %rax
	.loc	2 76 4                          # src/execution/exec_pipe.c:76:4
	movq	(%rax), %rax
	.loc	2 76 11                         # src/execution/exec_pipe.c:76:11
	movq	(%rax), %rax
	.loc	2 76 17                         # src/execution/exec_pipe.c:76:17
	movq	32(%rax), %rax
	.loc	2 76 24                         # src/execution/exec_pipe.c:76:24
	movq	40(%rax), %rax
	.loc	2 76 35                         # src/execution/exec_pipe.c:76:35
	movq	%rcx, 16(%rax)
.Ltmp39:
.LBB3_13:
	.loc	2 78 38 is_stmt 1               # src/execution/exec_pipe.c:78:38
	movq	-8(%rbp), %rax
	.loc	2 78 37 is_stmt 0               # src/execution/exec_pipe.c:78:37
	movq	(%rax), %rax
	.loc	2 78 44                         # src/execution/exec_pipe.c:78:44
	movq	(%rax), %rax
	.loc	2 78 50                         # src/execution/exec_pipe.c:78:50
	movq	8(%rax), %rcx
	.loc	2 78 4                          # src/execution/exec_pipe.c:78:4
	movq	-8(%rbp), %rax
	.loc	2 78 3                          # src/execution/exec_pipe.c:78:3
	movq	(%rax), %rax
	.loc	2 78 10                         # src/execution/exec_pipe.c:78:10
	movq	(%rax), %rax
	.loc	2 78 16                         # src/execution/exec_pipe.c:78:16
	movq	32(%rax), %rax
	.loc	2 78 23                         # src/execution/exec_pipe.c:78:23
	movq	40(%rax), %rax
	.loc	2 78 34                         # src/execution/exec_pipe.c:78:34
	movq	%rcx, 16(%rax)
	.loc	2 79 17 is_stmt 1               # src/execution/exec_pipe.c:79:17
	movq	-8(%rbp), %rdi
	.loc	2 79 2 is_stmt 0                # src/execution/exec_pipe.c:79:2
	callq	setup_ast_next
.LBB3_14:
	.loc	2 80 1 is_stmt 1                # src/execution/exec_pipe.c:80:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp40:
.Lfunc_end3:
	.size	setup_pipe, .Lfunc_end3-setup_pipe
	.cfi_endproc
                                        # -- End function
	.globl	exec_pipe                       # -- Begin function exec_pipe
	.p2align	4, 0x90
	.type	exec_pipe,@function
exec_pipe:                              # @exec_pipe
.Lfunc_begin4:
	.loc	2 83 0                          # src/execution/exec_pipe.c:83:0
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
	movl	%edx, -20(%rbp)
.Ltmp41:
	.loc	2 84 13 prologue_end            # src/execution/exec_pipe.c:84:13
	movq	-16(%rbp), %rdi
	.loc	2 84 2 is_stmt 0                # src/execution/exec_pipe.c:84:2
	callq	setup_pipe
.Ltmp42:
	.loc	2 85 8 is_stmt 1                # src/execution/exec_pipe.c:85:8
	cmpl	$0, -20(%rbp)
.Ltmp43:
	.loc	2 85 6 is_stmt 0                # src/execution/exec_pipe.c:85:6
	jne	.LBB4_2
# %bb.1:
.Ltmp44:
	.loc	2 87 16 is_stmt 1               # src/execution/exec_pipe.c:87:16
	movq	-8(%rbp), %rdi
	.loc	2 87 30 is_stmt 0               # src/execution/exec_pipe.c:87:30
	movq	-16(%rbp), %rax
	.loc	2 87 29                         # src/execution/exec_pipe.c:87:29
	movq	(%rax), %rax
	.loc	2 87 36                         # src/execution/exec_pipe.c:87:36
	movq	(%rax), %rsi
	.loc	2 87 42                         # src/execution/exec_pipe.c:87:42
	addq	$24, %rsi
	.loc	2 87 3                          # src/execution/exec_pipe.c:87:3
	callq	exec_command
	.loc	2 88 16 is_stmt 1               # src/execution/exec_pipe.c:88:16
	movq	-8(%rbp), %rdi
	.loc	2 88 30 is_stmt 0               # src/execution/exec_pipe.c:88:30
	movq	-16(%rbp), %rax
	.loc	2 88 29                         # src/execution/exec_pipe.c:88:29
	movq	(%rax), %rax
	.loc	2 88 36                         # src/execution/exec_pipe.c:88:36
	movq	(%rax), %rsi
	.loc	2 88 42                         # src/execution/exec_pipe.c:88:42
	addq	$32, %rsi
	.loc	2 88 3                          # src/execution/exec_pipe.c:88:3
	callq	exec_command
	.loc	2 89 2 is_stmt 1                # src/execution/exec_pipe.c:89:2
	jmp	.LBB4_3
.Ltmp45:
.LBB4_2:
	.loc	2 91 16                         # src/execution/exec_pipe.c:91:16
	movq	-8(%rbp), %rdi
	.loc	2 91 30 is_stmt 0               # src/execution/exec_pipe.c:91:30
	movq	-16(%rbp), %rax
	.loc	2 91 29                         # src/execution/exec_pipe.c:91:29
	movq	(%rax), %rax
	.loc	2 91 36                         # src/execution/exec_pipe.c:91:36
	movq	(%rax), %rsi
	.loc	2 91 42                         # src/execution/exec_pipe.c:91:42
	addq	$32, %rsi
	.loc	2 91 3                          # src/execution/exec_pipe.c:91:3
	callq	exec_command
.Ltmp46:
.LBB4_3:
	.loc	2 92 21 is_stmt 1               # src/execution/exec_pipe.c:92:21
	movq	-16(%rbp), %rdi
	.loc	2 92 2 is_stmt 0                # src/execution/exec_pipe.c:92:2
	callq	manage_parent_pipe
	.loc	2 93 1 is_stmt 1                # src/execution/exec_pipe.c:93:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp47:
.Lfunc_end4:
	.size	exec_pipe, .Lfunc_end4-exec_pipe
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"pipe"
	.size	.L.str.1, 5

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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xb:0xb79 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x6f:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	319                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x93:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xa8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xb7:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xcc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xdb:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xf0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xff:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x114:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1191                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x122:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x130:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string189                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	390                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x13f:0x5 DW_TAG_pointer_type
	.long	324                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x144:0x5 DW_TAG_pointer_type
	.long	329                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x149:0xb DW_TAG_typedef
	.long	340                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x154:0x2d DW_TAG_structure_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x15c:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	385                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x168:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	385                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x174:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	385                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x181:0x5 DW_TAG_pointer_type
	.long	390                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x186:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x18d:0x5 DW_TAG_pointer_type
	.long	402                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x192:0x5 DW_TAG_pointer_type
	.long	407                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x197:0xb DW_TAG_typedef
	.long	418                             # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1a2:0x2d DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1aa:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b6:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1186                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c2:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1186                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1cf:0x5 DW_TAG_pointer_type
	.long	468                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1d4:0xb DW_TAG_typedef
	.long	479                             # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1df:0x51 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1e7:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1f3:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ff:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	385                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x20b:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x217:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	560                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x223:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	560                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x230:0x5 DW_TAG_pointer_type
	.long	565                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x235:0xc9 DW_TAG_structure_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x23d:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x249:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x255:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x261:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x26d:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x279:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x285:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	778                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x291:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	324                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x29d:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	832                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2a9:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	905                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b5:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1061                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c1:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	983                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2cd:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1127                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2d9:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	1181                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2e5:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	560                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2f1:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	560                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2fe:0x5 DW_TAG_pointer_type
	.long	771                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x303:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x30a:0x5 DW_TAG_pointer_type
	.long	783                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x30f:0xb DW_TAG_typedef
	.long	794                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x31a:0x21 DW_TAG_structure_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x322:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x32e:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	827                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x33b:0x5 DW_TAG_pointer_type
	.long	794                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x340:0x5 DW_TAG_pointer_type
	.long	837                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x345:0xb DW_TAG_typedef
	.long	848                             # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x350:0x39 DW_TAG_structure_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x358:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x364:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x370:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	905                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x37c:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	983                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x389:0x5 DW_TAG_pointer_type
	.long	910                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x38e:0xb DW_TAG_typedef
	.long	921                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x399:0x39 DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3a1:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3ad:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3b9:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c5:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	978                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3d2:0x5 DW_TAG_pointer_type
	.long	921                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3d7:0x5 DW_TAG_pointer_type
	.long	988                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3dc:0xb DW_TAG_typedef
	.long	999                             # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3e7:0x39 DW_TAG_structure_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3ef:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3fb:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x407:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x413:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1056                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x420:0x5 DW_TAG_pointer_type
	.long	999                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x425:0x5 DW_TAG_pointer_type
	.long	1066                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x42a:0xb DW_TAG_typedef
	.long	1077                            # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x435:0x2d DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x43d:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x449:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x455:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1122                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x462:0x5 DW_TAG_pointer_type
	.long	1077                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x467:0x5 DW_TAG_pointer_type
	.long	1132                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x46c:0xb DW_TAG_typedef
	.long	1143                            # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x477:0x21 DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x47f:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x48b:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1176                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x498:0x5 DW_TAG_pointer_type
	.long	1143                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x49d:0x5 DW_TAG_pointer_type
	.long	766                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4a2:0x5 DW_TAG_pointer_type
	.long	418                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4a7:0x5 DW_TAG_pointer_type
	.long	1196                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4ac:0x5 DW_TAG_pointer_type
	.long	1201                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4b1:0xb DW_TAG_typedef
	.long	1212                            # DW_AT_type
	.long	.Linfo_string188                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4bc:0xbe DW_TAG_structure_type
	.long	.Linfo_string187                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4c5:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1402                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d1:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4dd:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	1181                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4f5:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x501:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x50d:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x519:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1181                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x525:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1423                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x531:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1061                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x53d:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	402                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x549:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1489                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x555:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1603                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x561:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2436                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x56d:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2785                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x57a:0x5 DW_TAG_pointer_type
	.long	1407                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x57f:0xb DW_TAG_typedef
	.long	1418                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x58a:0x5 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x58f:0x5 DW_TAG_pointer_type
	.long	1428                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x594:0xb DW_TAG_typedef
	.long	1439                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x59f:0x2d DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5a7:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5b3:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5bf:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1484                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5cc:0x5 DW_TAG_pointer_type
	.long	1439                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5d1:0x5 DW_TAG_pointer_type
	.long	1494                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5d6:0xb DW_TAG_typedef
	.long	1505                            # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5e1:0x5d DW_TAG_structure_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5e9:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5f5:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x601:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x60d:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	766                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x619:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1127                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x625:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1598                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x631:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1598                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x63e:0x5 DW_TAG_pointer_type
	.long	1505                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x643:0x56 DW_TAG_structure_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x64b:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1623                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x657:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x65b:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1689                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x667:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1712                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x674:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2383                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x680:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x68c:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2430                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x699:0xb DW_TAG_typedef
	.long	1700                            # DW_AT_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x6a4:0x5 DW_TAG_pointer_type
	.long	1705                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6a9:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x6aa:0x5 DW_TAG_formal_parameter
	.long	390                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6b0:0x5 DW_TAG_pointer_type
	.long	1717                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6b5:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x6b6:0x5 DW_TAG_formal_parameter
	.long	390                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6bb:0x5 DW_TAG_formal_parameter
	.long	1734                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6c0:0x5 DW_TAG_formal_parameter
	.long	2346                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6c6:0x5 DW_TAG_pointer_type
	.long	1739                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6cb:0xb DW_TAG_typedef
	.long	1750                            # DW_AT_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x6d6:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6da:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6e6:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6f2:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6fe:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x70a:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1814                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x716:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x71a:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2261                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x726:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1842                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x732:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x736:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2280                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x742:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2291                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x74f:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1883                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x75b:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x75f:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x76b:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x777:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2302                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x784:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	1936                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x790:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x794:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2280                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7a0:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2291                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7ac:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2302                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7b9:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	1989                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7c5:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7c9:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2280                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7d5:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2291                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7e1:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7ed:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2347                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7f9:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2347                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x806:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2066                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x812:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x816:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2346                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x822:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2365                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x82e:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2106                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x83a:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x83e:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2122                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x84a:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x84e:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2346                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x85a:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2346                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x867:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2372                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x875:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2177                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x881:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x885:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2358                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x891:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x89e:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2218                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x8aa:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8ae:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2346                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8ba:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8c6:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	73                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x8d5:0xc DW_TAG_array_type
	.long	390                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8da:0x6 DW_TAG_subrange_type
	.long	2273                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x8e1:0x7 DW_TAG_base_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x8e8:0xb DW_TAG_typedef
	.long	390                             # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8f3:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8fe:0xb DW_TAG_typedef
	.long	2313                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x909:0x21 DW_TAG_union_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x911:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x91d:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2346                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x92a:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x92b:0xb DW_TAG_typedef
	.long	2358                            # DW_AT_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x936:0x7 DW_TAG_base_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x93d:0x7 DW_TAG_base_type
	.long	.Linfo_string122                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x944:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x94f:0xb DW_TAG_typedef
	.long	2394                            # DW_AT_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x95a:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x95e:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2411                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x96b:0xc DW_TAG_array_type
	.long	2423                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x970:0x6 DW_TAG_subrange_type
	.long	2273                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x977:0x7 DW_TAG_base_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x97e:0x5 DW_TAG_pointer_type
	.long	2435                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x983:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x984:0x5 DW_TAG_pointer_type
	.long	2441                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x989:0xbd DW_TAG_structure_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x991:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2630                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x99d:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2641                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9a9:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2652                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9b5:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2663                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9c1:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2291                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9cd:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2674                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9d9:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9e5:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2630                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9f1:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2685                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9fd:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2696                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa09:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2707                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa15:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2718                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa21:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2718                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa2d:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2718                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa39:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2773                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa46:0xb DW_TAG_typedef
	.long	2423                            # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa51:0xb DW_TAG_typedef
	.long	2423                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa5c:0xb DW_TAG_typedef
	.long	2423                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa67:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa72:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa7d:0xb DW_TAG_typedef
	.long	2358                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa88:0xb DW_TAG_typedef
	.long	2358                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa93:0xb DW_TAG_typedef
	.long	2358                            # DW_AT_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa9e:0x21 DW_TAG_structure_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xaa6:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2751                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xab2:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2762                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xabf:0xb DW_TAG_typedef
	.long	2358                            # DW_AT_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaca:0xb DW_TAG_typedef
	.long	2358                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xad5:0xc DW_TAG_array_type
	.long	2762                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xada:0x6 DW_TAG_subrange_type
	.long	2273                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xae1:0x5 DW_TAG_pointer_type
	.long	2790                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xae6:0x69 DW_TAG_structure_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xaee:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2895                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xafa:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2895                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb06:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2895                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb12:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2895                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb1e:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	2906                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb2a:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	2924                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb36:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	2936                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb42:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	2936                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb4f:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string175                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb5a:0xb DW_TAG_typedef
	.long	2917                            # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xb65:0x7 DW_TAG_base_type
	.long	.Linfo_string180                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0xb6c:0xc DW_TAG_array_type
	.long	2906                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb71:0x6 DW_TAG_subrange_type
	.long	2273                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb78:0xb DW_TAG_typedef
	.long	73                              # DW_AT_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/execution/exec_pipe.c"     # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=64
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=122
.Linfo_string4:
	.asciz	"command"                       # string offset=135
.Linfo_string5:
	.asciz	"builtin"                       # string offset=143
.Linfo_string6:
	.asciz	"assignment"                    # string offset=151
.Linfo_string7:
	.asciz	"e_cmd_type"                    # string offset=162
.Linfo_string8:
	.asciz	"no_type"                       # string offset=173
.Linfo_string9:
	.asciz	"root"                          # string offset=181
.Linfo_string10:
	.asciz	"simple_command"                # string offset=186
.Linfo_string11:
	.asciz	"e_ast_node_type"               # string offset=201
.Linfo_string12:
	.asciz	"init_cmd_pipe"                 # string offset=217
.Linfo_string13:
	.asciz	"manage_parent_pipe"            # string offset=231
.Linfo_string14:
	.asciz	"setup_ast_next"                # string offset=250
.Linfo_string15:
	.asciz	"setup_pipe"                    # string offset=265
.Linfo_string16:
	.asciz	"exec_pipe"                     # string offset=276
.Linfo_string17:
	.asciz	"pipe"                          # string offset=286
.Linfo_string18:
	.asciz	"to_close"                      # string offset=291
.Linfo_string19:
	.asciz	"int"                           # string offset=300
.Linfo_string20:
	.asciz	"write"                         # string offset=304
.Linfo_string21:
	.asciz	"read"                          # string offset=310
.Linfo_string22:
	.asciz	"s_pipe"                        # string offset=315
.Linfo_string23:
	.asciz	"t_pipe"                        # string offset=322
.Linfo_string24:
	.asciz	"ast"                           # string offset=329
.Linfo_string25:
	.asciz	"node"                          # string offset=333
.Linfo_string26:
	.asciz	"id"                            # string offset=338
.Linfo_string27:
	.asciz	"type"                          # string offset=341
.Linfo_string28:
	.asciz	"pipe_fd"                       # string offset=346
.Linfo_string29:
	.asciz	"exit_status"                   # string offset=354
.Linfo_string30:
	.asciz	"left"                          # string offset=366
.Linfo_string31:
	.asciz	"pid"                           # string offset=371
.Linfo_string32:
	.asciz	"wstatus"                       # string offset=375
.Linfo_string33:
	.asciz	"name"                          # string offset=383
.Linfo_string34:
	.asciz	"char"                          # string offset=388
.Linfo_string35:
	.asciz	"path"                          # string offset=393
.Linfo_string36:
	.asciz	"arg"                           # string offset=398
.Linfo_string37:
	.asciz	"value"                         # string offset=402
.Linfo_string38:
	.asciz	"next"                          # string offset=408
.Linfo_string39:
	.asciz	"s_arg"                         # string offset=413
.Linfo_string40:
	.asciz	"t_arg"                         # string offset=419
.Linfo_string41:
	.asciz	"redir"                         # string offset=425
.Linfo_string42:
	.asciz	"in_fd"                         # string offset=431
.Linfo_string43:
	.asciz	"out_fd"                        # string offset=437
.Linfo_string44:
	.asciz	"infile"                        # string offset=444
.Linfo_string45:
	.asciz	"fd"                            # string offset=451
.Linfo_string46:
	.asciz	"s_infile"                      # string offset=454
.Linfo_string47:
	.asciz	"t_infile"                      # string offset=463
.Linfo_string48:
	.asciz	"outfile"                       # string offset=472
.Linfo_string49:
	.asciz	"s_outfile"                     # string offset=480
.Linfo_string50:
	.asciz	"t_outfile"                     # string offset=490
.Linfo_string51:
	.asciz	"s_redir"                       # string offset=500
.Linfo_string52:
	.asciz	"t_redir"                       # string offset=508
.Linfo_string53:
	.asciz	"assign"                        # string offset=516
.Linfo_string54:
	.asciz	"s_var"                         # string offset=523
.Linfo_string55:
	.asciz	"t_var"                         # string offset=529
.Linfo_string56:
	.asciz	"expansion"                     # string offset=535
.Linfo_string57:
	.asciz	"s_expan"                       # string offset=545
.Linfo_string58:
	.asciz	"t_expan"                       # string offset=553
.Linfo_string59:
	.asciz	"arg_array"                     # string offset=561
.Linfo_string60:
	.asciz	"prev"                          # string offset=571
.Linfo_string61:
	.asciz	"s_cmd"                         # string offset=576
.Linfo_string62:
	.asciz	"right"                         # string offset=582
.Linfo_string63:
	.asciz	"s_ast_node"                    # string offset=588
.Linfo_string64:
	.asciz	"t_ast_node"                    # string offset=599
.Linfo_string65:
	.asciz	"s_ast"                         # string offset=610
.Linfo_string66:
	.asciz	"t_ast"                         # string offset=616
.Linfo_string67:
	.asciz	"minishell"                     # string offset=622
.Linfo_string68:
	.asciz	"dir"                           # string offset=632
.Linfo_string69:
	.asciz	"__dirstream"                   # string offset=636
.Linfo_string70:
	.asciz	"DIR"                           # string offset=648
.Linfo_string71:
	.asciz	"state"                         # string offset=652
.Linfo_string72:
	.asciz	"input"                         # string offset=658
.Linfo_string73:
	.asciz	"prompt"                        # string offset=664
.Linfo_string74:
	.asciz	"operator_nbr"                  # string offset=671
.Linfo_string75:
	.asciz	"env_array"                     # string offset=684
.Linfo_string76:
	.asciz	"env"                           # string offset=694
.Linfo_string77:
	.asciz	"s_env"                         # string offset=698
.Linfo_string78:
	.asciz	"t_env"                         # string offset=704
.Linfo_string79:
	.asciz	"local"                         # string offset=710
.Linfo_string80:
	.asciz	"syntax_tree"                   # string offset=716
.Linfo_string81:
	.asciz	"token_stream"                  # string offset=728
.Linfo_string82:
	.asciz	"quote_nbr"                     # string offset=741
.Linfo_string83:
	.asciz	"length"                        # string offset=751
.Linfo_string84:
	.asciz	"lexeme"                        # string offset=758
.Linfo_string85:
	.asciz	"s_token"                       # string offset=765
.Linfo_string86:
	.asciz	"t_token"                       # string offset=773
.Linfo_string87:
	.asciz	"sighandler"                    # string offset=781
.Linfo_string88:
	.asciz	"__sigaction_handler"           # string offset=792
.Linfo_string89:
	.asciz	"sa_handler"                    # string offset=812
.Linfo_string90:
	.asciz	"__sighandler_t"                # string offset=823
.Linfo_string91:
	.asciz	"sa_sigaction"                  # string offset=838
.Linfo_string92:
	.asciz	"si_signo"                      # string offset=851
.Linfo_string93:
	.asciz	"si_errno"                      # string offset=860
.Linfo_string94:
	.asciz	"si_code"                       # string offset=869
.Linfo_string95:
	.asciz	"__pad0"                        # string offset=877
.Linfo_string96:
	.asciz	"_sifields"                     # string offset=884
.Linfo_string97:
	.asciz	"_pad"                          # string offset=894
.Linfo_string98:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=899
.Linfo_string99:
	.asciz	"_kill"                         # string offset=919
.Linfo_string100:
	.asciz	"si_pid"                        # string offset=925
.Linfo_string101:
	.asciz	"__pid_t"                       # string offset=932
.Linfo_string102:
	.asciz	"si_uid"                        # string offset=940
.Linfo_string103:
	.asciz	"__uid_t"                       # string offset=947
.Linfo_string104:
	.asciz	"_timer"                        # string offset=955
.Linfo_string105:
	.asciz	"si_tid"                        # string offset=962
.Linfo_string106:
	.asciz	"si_overrun"                    # string offset=969
.Linfo_string107:
	.asciz	"si_sigval"                     # string offset=980
.Linfo_string108:
	.asciz	"sival_int"                     # string offset=990
.Linfo_string109:
	.asciz	"sival_ptr"                     # string offset=1000
.Linfo_string110:
	.asciz	"sigval"                        # string offset=1010
.Linfo_string111:
	.asciz	"__sigval_t"                    # string offset=1017
.Linfo_string112:
	.asciz	"_rt"                           # string offset=1028
.Linfo_string113:
	.asciz	"_sigchld"                      # string offset=1032
.Linfo_string114:
	.asciz	"si_status"                     # string offset=1041
.Linfo_string115:
	.asciz	"si_utime"                      # string offset=1051
.Linfo_string116:
	.asciz	"long int"                      # string offset=1060
.Linfo_string117:
	.asciz	"__clock_t"                     # string offset=1069
.Linfo_string118:
	.asciz	"si_stime"                      # string offset=1079
.Linfo_string119:
	.asciz	"_sigfault"                     # string offset=1088
.Linfo_string120:
	.asciz	"si_addr"                       # string offset=1098
.Linfo_string121:
	.asciz	"si_addr_lsb"                   # string offset=1106
.Linfo_string122:
	.asciz	"short"                         # string offset=1118
.Linfo_string123:
	.asciz	"_bounds"                       # string offset=1124
.Linfo_string124:
	.asciz	"_addr_bnd"                     # string offset=1132
.Linfo_string125:
	.asciz	"_lower"                        # string offset=1142
.Linfo_string126:
	.asciz	"_upper"                        # string offset=1149
.Linfo_string127:
	.asciz	"_pkey"                         # string offset=1156
.Linfo_string128:
	.asciz	"__uint32_t"                    # string offset=1162
.Linfo_string129:
	.asciz	"_sigpoll"                      # string offset=1173
.Linfo_string130:
	.asciz	"si_band"                       # string offset=1182
.Linfo_string131:
	.asciz	"si_fd"                         # string offset=1190
.Linfo_string132:
	.asciz	"_sigsys"                       # string offset=1196
.Linfo_string133:
	.asciz	"_call_addr"                    # string offset=1204
.Linfo_string134:
	.asciz	"_syscall"                      # string offset=1215
.Linfo_string135:
	.asciz	"_arch"                         # string offset=1224
.Linfo_string136:
	.asciz	"siginfo_t"                     # string offset=1230
.Linfo_string137:
	.asciz	"sa_mask"                       # string offset=1240
.Linfo_string138:
	.asciz	"__val"                         # string offset=1248
.Linfo_string139:
	.asciz	"long unsigned int"             # string offset=1254
.Linfo_string140:
	.asciz	"__sigset_t"                    # string offset=1272
.Linfo_string141:
	.asciz	"sa_flags"                      # string offset=1283
.Linfo_string142:
	.asciz	"sa_restorer"                   # string offset=1292
.Linfo_string143:
	.asciz	"sigaction"                     # string offset=1304
.Linfo_string144:
	.asciz	"statbuf"                       # string offset=1314
.Linfo_string145:
	.asciz	"st_dev"                        # string offset=1322
.Linfo_string146:
	.asciz	"__dev_t"                       # string offset=1329
.Linfo_string147:
	.asciz	"st_ino"                        # string offset=1337
.Linfo_string148:
	.asciz	"__ino_t"                       # string offset=1344
.Linfo_string149:
	.asciz	"st_nlink"                      # string offset=1352
.Linfo_string150:
	.asciz	"__nlink_t"                     # string offset=1361
.Linfo_string151:
	.asciz	"st_mode"                       # string offset=1371
.Linfo_string152:
	.asciz	"__mode_t"                      # string offset=1379
.Linfo_string153:
	.asciz	"st_uid"                        # string offset=1388
.Linfo_string154:
	.asciz	"st_gid"                        # string offset=1395
.Linfo_string155:
	.asciz	"__gid_t"                       # string offset=1402
.Linfo_string156:
	.asciz	"st_rdev"                       # string offset=1410
.Linfo_string157:
	.asciz	"st_size"                       # string offset=1418
.Linfo_string158:
	.asciz	"__off_t"                       # string offset=1426
.Linfo_string159:
	.asciz	"st_blksize"                    # string offset=1434
.Linfo_string160:
	.asciz	"__blksize_t"                   # string offset=1445
.Linfo_string161:
	.asciz	"st_blocks"                     # string offset=1457
.Linfo_string162:
	.asciz	"__blkcnt_t"                    # string offset=1467
.Linfo_string163:
	.asciz	"st_atim"                       # string offset=1478
.Linfo_string164:
	.asciz	"tv_sec"                        # string offset=1486
.Linfo_string165:
	.asciz	"__time_t"                      # string offset=1493
.Linfo_string166:
	.asciz	"tv_nsec"                       # string offset=1502
.Linfo_string167:
	.asciz	"__syscall_slong_t"             # string offset=1510
.Linfo_string168:
	.asciz	"timespec"                      # string offset=1528
.Linfo_string169:
	.asciz	"st_mtim"                       # string offset=1537
.Linfo_string170:
	.asciz	"st_ctim"                       # string offset=1545
.Linfo_string171:
	.asciz	"__glibc_reserved"              # string offset=1553
.Linfo_string172:
	.asciz	"stat"                          # string offset=1570
.Linfo_string173:
	.asciz	"term"                          # string offset=1575
.Linfo_string174:
	.asciz	"c_iflag"                       # string offset=1580
.Linfo_string175:
	.asciz	"tcflag_t"                      # string offset=1588
.Linfo_string176:
	.asciz	"c_oflag"                       # string offset=1597
.Linfo_string177:
	.asciz	"c_cflag"                       # string offset=1605
.Linfo_string178:
	.asciz	"c_lflag"                       # string offset=1613
.Linfo_string179:
	.asciz	"c_line"                        # string offset=1621
.Linfo_string180:
	.asciz	"unsigned char"                 # string offset=1628
.Linfo_string181:
	.asciz	"cc_t"                          # string offset=1642
.Linfo_string182:
	.asciz	"c_cc"                          # string offset=1647
.Linfo_string183:
	.asciz	"c_ispeed"                      # string offset=1652
.Linfo_string184:
	.asciz	"speed_t"                       # string offset=1661
.Linfo_string185:
	.asciz	"c_ospeed"                      # string offset=1669
.Linfo_string186:
	.asciz	"termios"                       # string offset=1678
.Linfo_string187:
	.asciz	"s_minishell"                   # string offset=1686
.Linfo_string188:
	.asciz	"t_minishell"                   # string offset=1698
.Linfo_string189:
	.asciz	"i"                             # string offset=1710
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym init_cmd_pipe
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym manage_parent_pipe
	.addrsig_sym close
	.addrsig_sym setup_ast_next
	.addrsig_sym is_next_node_pipeline
	.addrsig_sym pipe
	.addrsig_sym setup_pipe
	.addrsig_sym exec_command
	.section	.debug_line,"",@progbits
.Lline_table_start0:

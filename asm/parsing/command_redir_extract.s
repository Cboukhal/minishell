	.text
	.file	"command_redir_extract.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/../../include/minishell.h"
	.globl	handle_infile_token             # -- Begin function handle_infile_token
	.p2align	4, 0x90
	.type	handle_infile_token,@function
handle_infile_token:                    # @handle_infile_token
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/command_redir_extract.c"
	.loc	2 17 0                          # src/parsing/command_redir_extract.c:17:0
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
.Ltmp0:
	.loc	2 18 6 prologue_end             # src/parsing/command_redir_extract.c:18:6
	movq	-16(%rbp), %rax
	.loc	2 18 16 is_stmt 0               # src/parsing/command_redir_extract.c:18:16
	cmpl	$9, 4(%rax)
	.loc	2 18 27                         # src/parsing/command_redir_extract.c:18:27
	jne	.LBB0_3
# %bb.1:
	.loc	2 18 40                         # src/parsing/command_redir_extract.c:18:40
	movq	-16(%rbp), %rax
	.loc	2 18 45                         # src/parsing/command_redir_extract.c:18:45
	movq	8(%rax), %rdi
	.loc	2 18 30                         # src/parsing/command_redir_extract.c:18:30
	callq	ft_strlen
	.loc	2 18 51                         # src/parsing/command_redir_extract.c:18:51
	cmpq	$0, %rax
.Ltmp1:
	.loc	2 18 6                          # src/parsing/command_redir_extract.c:18:6
	jbe	.LBB0_3
# %bb.2:
.Ltmp2:
	.loc	2 20 21 is_stmt 1               # src/parsing/command_redir_extract.c:20:21
	movq	-16(%rbp), %rax
	.loc	2 20 26 is_stmt 0               # src/parsing/command_redir_extract.c:20:26
	movq	8(%rax), %rdi
	.loc	2 20 3                          # src/parsing/command_redir_extract.c:20:3
	callq	get_redir_heredoc
	.loc	2 21 22 is_stmt 1               # src/parsing/command_redir_extract.c:21:22
	movq	-24(%rbp), %rdi
	.loc	2 21 3 is_stmt 0                # src/parsing/command_redir_extract.c:21:3
	leaq	-16(%rbp), %rsi
	callq	add_infile_to_list
	.loc	2 22 2 is_stmt 1                # src/parsing/command_redir_extract.c:22:2
	jmp	.LBB0_8
.Ltmp3:
.LBB0_3:
	.loc	2 23 11                         # src/parsing/command_redir_extract.c:23:11
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	.loc	2 23 21 is_stmt 0               # src/parsing/command_redir_extract.c:23:21
	je	.LBB0_6
# %bb.4:
	.loc	2 23 43                         # src/parsing/command_redir_extract.c:23:43
	movq	-8(%rbp), %rdi
	.loc	2 23 54                         # src/parsing/command_redir_extract.c:23:54
	movq	-16(%rbp), %rax
	.loc	2 23 59                         # src/parsing/command_redir_extract.c:23:59
	movq	8(%rax), %rsi
	.loc	2 23 24                         # src/parsing/command_redir_extract.c:23:24
	callq	is_file_accessible
.Ltmp4:
	.loc	2 23 11                         # src/parsing/command_redir_extract.c:23:11
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:
.Ltmp5:
	.loc	2 25 22 is_stmt 1               # src/parsing/command_redir_extract.c:25:22
	movq	-24(%rbp), %rdi
	.loc	2 25 3 is_stmt 0                # src/parsing/command_redir_extract.c:25:3
	leaq	-16(%rbp), %rsi
	callq	add_infile_to_list
	.loc	2 26 3 is_stmt 1                # src/parsing/command_redir_extract.c:26:3
	jmp	.LBB0_8
.Ltmp6:
.LBB0_6:
	.loc	2 30 8                          # src/parsing/command_redir_extract.c:30:8
	movq	-16(%rbp), %rax
	.loc	2 30 13 is_stmt 0               # src/parsing/command_redir_extract.c:30:13
	movq	8(%rax), %rdi
	.loc	2 30 3                          # src/parsing/command_redir_extract.c:30:3
	callq	free
	.loc	2 31 8 is_stmt 1                # src/parsing/command_redir_extract.c:31:8
	movq	-16(%rbp), %rdi
	.loc	2 31 3 is_stmt 0                # src/parsing/command_redir_extract.c:31:3
	callq	free
.Ltmp7:
# %bb.7:
	.loc	2 0 3                           # src/parsing/command_redir_extract.c:0:3
	jmp	.LBB0_8
.LBB0_8:
	.loc	2 33 1 is_stmt 1                # src/parsing/command_redir_extract.c:33:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp8:
.Lfunc_end0:
	.size	handle_infile_token, .Lfunc_end0-handle_infile_token
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_infile          # -- Begin function extract_command_infile
	.p2align	4, 0x90
	.type	extract_command_infile,@function
extract_command_infile:                 # @extract_command_infile
.Lfunc_begin1:
	.loc	2 37 0                          # src/parsing/command_redir_extract.c:37:0
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
.Ltmp9:
	.loc	2 40 8 prologue_end             # src/parsing/command_redir_extract.c:40:8
	movl	$24, %edi
	callq	malloc
	.loc	2 40 6 is_stmt 0                # src/parsing/command_redir_extract.c:40:6
	movq	%rax, -32(%rbp)
.Ltmp10:
	.loc	2 41 7 is_stmt 1                # src/parsing/command_redir_extract.c:41:7
	cmpq	$0, -32(%rbp)
.Ltmp11:
	.loc	2 41 6 is_stmt 0                # src/parsing/command_redir_extract.c:41:6
	jne	.LBB1_2
# %bb.1:
.Ltmp12:
	.loc	2 43 3 is_stmt 1                # src/parsing/command_redir_extract.c:43:3
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 44 3                          # src/parsing/command_redir_extract.c:44:3
	jmp	.LBB1_3
.Ltmp13:
.LBB1_2:
	.loc	2 46 2                          # src/parsing/command_redir_extract.c:46:2
	movq	-32(%rbp), %rax
	.loc	2 46 12 is_stmt 0               # src/parsing/command_redir_extract.c:46:12
	movq	$0, 16(%rax)
	.loc	2 47 14 is_stmt 1               # src/parsing/command_redir_extract.c:47:14
	movq	-16(%rbp), %rax
	.loc	2 47 21 is_stmt 0               # src/parsing/command_redir_extract.c:47:21
	movl	(%rax), %ecx
	.loc	2 47 2                          # src/parsing/command_redir_extract.c:47:2
	movq	-32(%rbp), %rax
	.loc	2 47 12                         # src/parsing/command_redir_extract.c:47:12
	movl	%ecx, 4(%rax)
	.loc	2 48 33 is_stmt 1               # src/parsing/command_redir_extract.c:48:33
	movq	-16(%rbp), %rax
	.loc	2 48 40 is_stmt 0               # src/parsing/command_redir_extract.c:48:40
	movq	16(%rax), %rdi
	.loc	2 48 48                         # src/parsing/command_redir_extract.c:48:48
	movq	-32(%rbp), %rax
	.loc	2 48 53                         # src/parsing/command_redir_extract.c:48:53
	movl	4(%rax), %esi
	.loc	2 48 14                         # src/parsing/command_redir_extract.c:48:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 48 2                          # src/parsing/command_redir_extract.c:48:2
	movq	-32(%rbp), %rax
	.loc	2 48 12                         # src/parsing/command_redir_extract.c:48:12
	movq	%rcx, 8(%rax)
	.loc	2 49 23 is_stmt 1               # src/parsing/command_redir_extract.c:49:23
	movq	-8(%rbp), %rdi
	.loc	2 49 34 is_stmt 0               # src/parsing/command_redir_extract.c:49:34
	movq	-32(%rbp), %rsi
	.loc	2 49 39                         # src/parsing/command_redir_extract.c:49:39
	movq	-24(%rbp), %rdx
	.loc	2 49 2                          # src/parsing/command_redir_extract.c:49:2
	callq	handle_infile_token
.LBB1_3:
	.loc	2 50 1 is_stmt 1                # src/parsing/command_redir_extract.c:50:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.Lfunc_end1:
	.size	extract_command_infile, .Lfunc_end1-extract_command_infile
	.cfi_endproc
                                        # -- End function
	.globl	manage_outfile_list             # -- Begin function manage_outfile_list
	.p2align	4, 0x90
	.type	manage_outfile_list,@function
manage_outfile_list:                    # @manage_outfile_list
.Lfunc_begin2:
	.loc	2 53 0                          # src/parsing/command_redir_extract.c:53:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp15:
	.loc	2 56 11 prologue_end            # src/parsing/command_redir_extract.c:56:11
	movq	-8(%rbp), %rax
	.loc	2 56 10 is_stmt 0               # src/parsing/command_redir_extract.c:56:10
	movq	(%rax), %rax
	.loc	2 56 8                          # src/parsing/command_redir_extract.c:56:8
	movq	%rax, -24(%rbp)
.Ltmp16:
	.loc	2 57 6 is_stmt 1                # src/parsing/command_redir_extract.c:57:6
	cmpq	$0, -24(%rbp)
.Ltmp17:
	.loc	2 57 6 is_stmt 0                # src/parsing/command_redir_extract.c:57:6
	je	.LBB2_5
# %bb.1:
.Ltmp18:
	.loc	2 59 3 is_stmt 1                # src/parsing/command_redir_extract.c:59:3
	jmp	.LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	.loc	2 59 10 is_stmt 0               # src/parsing/command_redir_extract.c:59:10
	movq	-24(%rbp), %rax
	.loc	2 59 3                          # src/parsing/command_redir_extract.c:59:3
	cmpq	$0, 16(%rax)
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	.loc	2 60 12 is_stmt 1               # src/parsing/command_redir_extract.c:60:12
	movq	-24(%rbp), %rax
	.loc	2 60 19 is_stmt 0               # src/parsing/command_redir_extract.c:60:19
	movq	16(%rax), %rax
	.loc	2 60 10                         # src/parsing/command_redir_extract.c:60:10
	movq	%rax, -24(%rbp)
	.loc	2 59 3 is_stmt 1                # src/parsing/command_redir_extract.c:59:3
	jmp	.LBB2_2
.LBB2_4:
	.loc	2 61 17                         # src/parsing/command_redir_extract.c:61:17
	movq	-16(%rbp), %rcx
	.loc	2 61 3 is_stmt 0                # src/parsing/command_redir_extract.c:61:3
	movq	-24(%rbp), %rax
	.loc	2 61 15                         # src/parsing/command_redir_extract.c:61:15
	movq	%rcx, 16(%rax)
	.loc	2 62 2 is_stmt 1                # src/parsing/command_redir_extract.c:62:2
	jmp	.LBB2_6
.Ltmp19:
.LBB2_5:
	.loc	2 64 14                         # src/parsing/command_redir_extract.c:64:14
	movq	-16(%rbp), %rcx
	.loc	2 64 4 is_stmt 0                # src/parsing/command_redir_extract.c:64:4
	movq	-8(%rbp), %rax
	.loc	2 64 12                         # src/parsing/command_redir_extract.c:64:12
	movq	%rcx, (%rax)
.Ltmp20:
.LBB2_6:
	.loc	2 65 1 is_stmt 1                # src/parsing/command_redir_extract.c:65:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.Lfunc_end2:
	.size	manage_outfile_list, .Lfunc_end2-manage_outfile_list
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_outfile         # -- Begin function extract_command_outfile
	.p2align	4, 0x90
	.type	extract_command_outfile,@function
extract_command_outfile:                # @extract_command_outfile
.Lfunc_begin3:
	.loc	2 68 0                          # src/parsing/command_redir_extract.c:68:0
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
.Ltmp22:
	.loc	2 71 8 prologue_end             # src/parsing/command_redir_extract.c:71:8
	movl	$24, %edi
	callq	malloc
	.loc	2 71 6 is_stmt 0                # src/parsing/command_redir_extract.c:71:6
	movq	%rax, -24(%rbp)
.Ltmp23:
	.loc	2 72 7 is_stmt 1                # src/parsing/command_redir_extract.c:72:7
	cmpq	$0, -24(%rbp)
.Ltmp24:
	.loc	2 72 6 is_stmt 0                # src/parsing/command_redir_extract.c:72:6
	jne	.LBB3_2
# %bb.1:
.Ltmp25:
	.loc	2 74 3 is_stmt 1                # src/parsing/command_redir_extract.c:74:3
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 75 3                          # src/parsing/command_redir_extract.c:75:3
	jmp	.LBB3_3
.Ltmp26:
.LBB3_2:
	.loc	2 77 2                          # src/parsing/command_redir_extract.c:77:2
	movq	-24(%rbp), %rax
	.loc	2 77 12 is_stmt 0               # src/parsing/command_redir_extract.c:77:12
	movq	$0, 16(%rax)
	.loc	2 78 14 is_stmt 1               # src/parsing/command_redir_extract.c:78:14
	movq	-8(%rbp), %rax
	.loc	2 78 21 is_stmt 0               # src/parsing/command_redir_extract.c:78:21
	movl	(%rax), %ecx
	.loc	2 78 2                          # src/parsing/command_redir_extract.c:78:2
	movq	-24(%rbp), %rax
	.loc	2 78 12                         # src/parsing/command_redir_extract.c:78:12
	movl	%ecx, 4(%rax)
	.loc	2 79 33 is_stmt 1               # src/parsing/command_redir_extract.c:79:33
	movq	-8(%rbp), %rax
	.loc	2 79 40 is_stmt 0               # src/parsing/command_redir_extract.c:79:40
	movq	16(%rax), %rdi
	.loc	2 79 48                         # src/parsing/command_redir_extract.c:79:48
	movq	-24(%rbp), %rax
	.loc	2 79 53                         # src/parsing/command_redir_extract.c:79:53
	movl	4(%rax), %esi
	.loc	2 79 14                         # src/parsing/command_redir_extract.c:79:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 79 2                          # src/parsing/command_redir_extract.c:79:2
	movq	-24(%rbp), %rax
	.loc	2 79 12                         # src/parsing/command_redir_extract.c:79:12
	movq	%rcx, 8(%rax)
	.loc	2 80 22 is_stmt 1               # src/parsing/command_redir_extract.c:80:22
	movq	-16(%rbp), %rdi
	.loc	2 80 31 is_stmt 0               # src/parsing/command_redir_extract.c:80:31
	movq	-24(%rbp), %rsi
	.loc	2 80 2                          # src/parsing/command_redir_extract.c:80:2
	callq	manage_outfile_list
.LBB3_3:
	.loc	2 81 1 is_stmt 1                # src/parsing/command_redir_extract.c:81:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp27:
.Lfunc_end3:
	.size	extract_command_outfile, .Lfunc_end3-extract_command_outfile
	.cfi_endproc
                                        # -- End function
	.globl	get_command_redir               # -- Begin function get_command_redir
	.p2align	4, 0x90
	.type	get_command_redir,@function
get_command_redir:                      # @get_command_redir
.Lfunc_begin4:
	.loc	2 85 0                          # src/parsing/command_redir_extract.c:85:0
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
.Ltmp28:
	.loc	2 86 8 prologue_end             # src/parsing/command_redir_extract.c:86:8
	movq	-24(%rbp), %rax
	.loc	2 86 15 is_stmt 0               # src/parsing/command_redir_extract.c:86:15
	cmpq	$0, (%rax)
.Ltmp29:
	.loc	2 86 6                          # src/parsing/command_redir_extract.c:86:6
	jne	.LBB4_4
# %bb.1:
.Ltmp30:
	.loc	2 88 14 is_stmt 1               # src/parsing/command_redir_extract.c:88:14
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 88 5 is_stmt 0                # src/parsing/command_redir_extract.c:88:5
	movq	-24(%rbp), %rax
	.loc	2 88 12                         # src/parsing/command_redir_extract.c:88:12
	movq	%rcx, (%rax)
.Ltmp31:
	.loc	2 89 10 is_stmt 1               # src/parsing/command_redir_extract.c:89:10
	movq	-24(%rbp), %rax
	.loc	2 89 8 is_stmt 0                # src/parsing/command_redir_extract.c:89:8
	cmpq	$0, (%rax)
.Ltmp32:
	.loc	2 89 7                          # src/parsing/command_redir_extract.c:89:7
	jne	.LBB4_3
# %bb.2:
.Ltmp33:
	.loc	2 90 4 is_stmt 1                # src/parsing/command_redir_extract.c:90:4
	movabsq	$.L.str.1, %rdi
	callq	perror
.Ltmp34:
.LBB4_3:
	.loc	2 91 5                          # src/parsing/command_redir_extract.c:91:5
	movq	-24(%rbp), %rax
	.loc	2 91 4 is_stmt 0                # src/parsing/command_redir_extract.c:91:4
	movq	(%rax), %rax
	.loc	2 91 20                         # src/parsing/command_redir_extract.c:91:20
	movq	$0, 8(%rax)
	.loc	2 92 5 is_stmt 1                # src/parsing/command_redir_extract.c:92:5
	movq	-24(%rbp), %rax
	.loc	2 92 4 is_stmt 0                # src/parsing/command_redir_extract.c:92:4
	movq	(%rax), %rax
	.loc	2 92 21                         # src/parsing/command_redir_extract.c:92:21
	movq	$0, 16(%rax)
.Ltmp35:
.LBB4_4:
	.loc	2 94 6 is_stmt 1                # src/parsing/command_redir_extract.c:94:6
	movq	-16(%rbp), %rax
	.loc	2 94 18 is_stmt 0               # src/parsing/command_redir_extract.c:94:18
	cmpl	$12, (%rax)
	.loc	2 94 28                         # src/parsing/command_redir_extract.c:94:28
	je	.LBB4_6
# %bb.5:
	.loc	2 94 31                         # src/parsing/command_redir_extract.c:94:31
	movq	-16(%rbp), %rax
	.loc	2 94 43                         # src/parsing/command_redir_extract.c:94:43
	cmpl	$9, (%rax)
.Ltmp36:
	.loc	2 94 6                          # src/parsing/command_redir_extract.c:94:6
	jne	.LBB4_7
.LBB4_6:
.Ltmp37:
	.loc	2 95 26 is_stmt 1               # src/parsing/command_redir_extract.c:95:26
	movq	-8(%rbp), %rdi
	.loc	2 95 37 is_stmt 0               # src/parsing/command_redir_extract.c:95:37
	movq	-16(%rbp), %rsi
	.loc	2 95 47                         # src/parsing/command_redir_extract.c:95:47
	movq	-24(%rbp), %rax
	.loc	2 95 46                         # src/parsing/command_redir_extract.c:95:46
	movq	(%rax), %rdx
	.loc	2 95 55                         # src/parsing/command_redir_extract.c:95:55
	addq	$8, %rdx
	.loc	2 95 3                          # src/parsing/command_redir_extract.c:95:3
	callq	extract_command_infile
	jmp	.LBB4_11
.LBB4_7:
.Ltmp38:
	.loc	2 96 11 is_stmt 1               # src/parsing/command_redir_extract.c:96:11
	movq	-16(%rbp), %rax
	.loc	2 96 23 is_stmt 0               # src/parsing/command_redir_extract.c:96:23
	cmpl	$10, (%rax)
	.loc	2 96 34                         # src/parsing/command_redir_extract.c:96:34
	je	.LBB4_9
# %bb.8:
	.loc	2 96 37                         # src/parsing/command_redir_extract.c:96:37
	movq	-16(%rbp), %rax
	.loc	2 96 49                         # src/parsing/command_redir_extract.c:96:49
	cmpl	$11, (%rax)
.Ltmp39:
	.loc	2 96 11                         # src/parsing/command_redir_extract.c:96:11
	jne	.LBB4_10
.LBB4_9:
.Ltmp40:
	.loc	2 97 27 is_stmt 1               # src/parsing/command_redir_extract.c:97:27
	movq	-16(%rbp), %rdi
	.loc	2 97 37 is_stmt 0               # src/parsing/command_redir_extract.c:97:37
	movq	-24(%rbp), %rax
	.loc	2 97 36                         # src/parsing/command_redir_extract.c:97:36
	movq	(%rax), %rsi
	.loc	2 97 45                         # src/parsing/command_redir_extract.c:97:45
	addq	$16, %rsi
	.loc	2 97 3                          # src/parsing/command_redir_extract.c:97:3
	callq	extract_command_outfile
.Ltmp41:
.LBB4_10:
	.loc	2 0 3                           # src/parsing/command_redir_extract.c:0:3
	jmp	.LBB4_11
.LBB4_11:
	.loc	2 98 1 is_stmt 1                # src/parsing/command_redir_extract.c:98:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp42:
.Lfunc_end4:
	.size	get_command_redir, .Lfunc_end4-get_command_redir
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"malloc:"
	.size	.L.str.1, 8

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
	.byte	5                               # DW_FORM_data2
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
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc38 DW_TAG_compile_unit
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
	.byte	6                               # Abbrev [6] 0xb1:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xc6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xd4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string195                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	1451                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0xe2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	3123                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xf1:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x106:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x114:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string196                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	1666                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x122:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	3123                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x130:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string195                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	1451                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x13f:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x154:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	3128                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x162:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string195                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	1529                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x170:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string197                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	1529                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x17f:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x194:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string196                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	1666                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	3128                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1b0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string195                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	1529                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1bf:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1d4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1e2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string196                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	1666                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1f0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string66                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	3133                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1ff:0x5 DW_TAG_pointer_type
	.long	516                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x204:0xb DW_TAG_typedef
	.long	527                             # DW_AT_type
	.long	.Linfo_string194                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x20f:0xbe DW_TAG_structure_type
	.long	.Linfo_string193                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x218:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x224:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x230:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x23c:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x248:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x254:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x260:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26c:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x278:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x284:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x290:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	894                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x29c:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1666                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2a8:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1780                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2b4:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2612                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2c0:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	2961                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x2cd:0x5 DW_TAG_pointer_type
	.long	722                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2d2:0xb DW_TAG_typedef
	.long	733                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2dd:0x5 DW_TAG_structure_type
	.long	.Linfo_string31                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	4                               # Abbrev [4] 0x2e2:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2e9:0x5 DW_TAG_pointer_type
	.long	750                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2ee:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2f5:0x5 DW_TAG_pointer_type
	.long	745                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2fa:0x5 DW_TAG_pointer_type
	.long	767                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ff:0xb DW_TAG_typedef
	.long	778                             # DW_AT_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x30a:0x2d DW_TAG_structure_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x312:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	823                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x337:0x5 DW_TAG_pointer_type
	.long	778                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x33c:0x5 DW_TAG_pointer_type
	.long	833                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x341:0xb DW_TAG_typedef
	.long	844                             # DW_AT_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x34c:0x2d DW_TAG_structure_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x354:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x360:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x36c:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	889                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x379:0x5 DW_TAG_pointer_type
	.long	844                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x37e:0x5 DW_TAG_pointer_type
	.long	899                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x383:0xb DW_TAG_typedef
	.long	910                             # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x38e:0x2d DW_TAG_structure_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x396:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	955                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3a2:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1661                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3ae:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1661                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3bb:0x5 DW_TAG_pointer_type
	.long	960                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3c0:0xb DW_TAG_typedef
	.long	971                             # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3cb:0x51 DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3d3:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3df:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3eb:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1052                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3f7:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x403:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x40f:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x41c:0x5 DW_TAG_pointer_type
	.long	738                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x421:0x5 DW_TAG_pointer_type
	.long	1062                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x426:0xc9 DW_TAG_structure_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x42e:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x43a:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x446:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x452:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x45e:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x46a:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x476:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1263                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x482:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1317                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x48e:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1378                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x49a:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1451                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4a6:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4b2:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1529                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4be:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1607                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ca:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4d6:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4e2:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4ef:0x5 DW_TAG_pointer_type
	.long	1268                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4f4:0xb DW_TAG_typedef
	.long	1279                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x4ff:0x21 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x507:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x513:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1312                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x520:0x5 DW_TAG_pointer_type
	.long	1279                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x525:0x5 DW_TAG_pointer_type
	.long	1322                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x52a:0xb DW_TAG_typedef
	.long	1333                            # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x535:0x2d DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x53d:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1052                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x549:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1052                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x555:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1052                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x562:0x5 DW_TAG_pointer_type
	.long	1383                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x567:0xb DW_TAG_typedef
	.long	1394                            # DW_AT_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x572:0x39 DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x57a:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x586:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x592:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1451                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x59e:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1529                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5ab:0x5 DW_TAG_pointer_type
	.long	1456                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5b0:0xb DW_TAG_typedef
	.long	1467                            # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x5bb:0x39 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5c3:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5cf:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5db:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5e7:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1524                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5f4:0x5 DW_TAG_pointer_type
	.long	1467                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5f9:0x5 DW_TAG_pointer_type
	.long	1534                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5fe:0xb DW_TAG_typedef
	.long	1545                            # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x609:0x39 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x611:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x61d:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x629:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x635:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1602                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x642:0x5 DW_TAG_pointer_type
	.long	1545                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x647:0x5 DW_TAG_pointer_type
	.long	1612                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x64c:0xb DW_TAG_typedef
	.long	1623                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x657:0x21 DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x65f:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x66b:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1656                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x678:0x5 DW_TAG_pointer_type
	.long	1623                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x67d:0x5 DW_TAG_pointer_type
	.long	910                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x682:0x5 DW_TAG_pointer_type
	.long	1671                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x687:0xb DW_TAG_typedef
	.long	1682                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x692:0x5d DW_TAG_structure_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x69a:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6a6:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6b2:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6be:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6ca:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1607                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6d6:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1775                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6e2:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1775                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6ef:0x5 DW_TAG_pointer_type
	.long	1682                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6f4:0x56 DW_TAG_structure_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6fc:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1800                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x708:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x70c:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1866                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x718:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1889                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x725:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2559                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x731:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x73d:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2606                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x74a:0xb DW_TAG_typedef
	.long	1877                            # DW_AT_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x755:0x5 DW_TAG_pointer_type
	.long	1882                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x75a:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x75b:0x5 DW_TAG_formal_parameter
	.long	738                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x761:0x5 DW_TAG_pointer_type
	.long	1894                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x766:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x767:0x5 DW_TAG_formal_parameter
	.long	738                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x76c:0x5 DW_TAG_formal_parameter
	.long	1911                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x771:0x5 DW_TAG_formal_parameter
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x777:0x5 DW_TAG_pointer_type
	.long	1916                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x77c:0xb DW_TAG_typedef
	.long	1927                            # DW_AT_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x787:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x78b:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x797:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7a3:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7af:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7bb:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1991                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7c7:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7cb:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2438                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7d7:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2019                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7e3:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7e7:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2457                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7f3:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2468                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x800:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2060                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x80c:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x810:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x81c:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x828:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2479                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x835:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2113                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x841:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x845:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2457                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x851:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2468                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x85d:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2479                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x86a:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2166                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x876:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x87a:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2457                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x886:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2468                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x892:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x89e:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2523                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8aa:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2523                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x8b7:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2243                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8c3:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8c7:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8d3:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2541                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8df:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2283                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x8eb:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8ef:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2299                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8fb:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8ff:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x90b:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x918:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x926:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2354                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x932:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x936:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2534                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x942:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x94f:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2395                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x95b:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x95f:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x96b:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x977:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	169                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x986:0xc DW_TAG_array_type
	.long	738                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x98b:0x6 DW_TAG_subrange_type
	.long	2450                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x992:0x7 DW_TAG_base_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x999:0xb DW_TAG_typedef
	.long	738                             # DW_AT_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9a4:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9af:0xb DW_TAG_typedef
	.long	2490                            # DW_AT_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x9ba:0x21 DW_TAG_union_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9c2:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x9ce:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x9db:0xb DW_TAG_typedef
	.long	2534                            # DW_AT_type
	.long	.Linfo_string123                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9e6:0x7 DW_TAG_base_type
	.long	.Linfo_string122                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x9ed:0x7 DW_TAG_base_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x9f4:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9ff:0xb DW_TAG_typedef
	.long	2570                            # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xa0a:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa0e:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2587                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xa1b:0xc DW_TAG_array_type
	.long	2599                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xa20:0x6 DW_TAG_subrange_type
	.long	2450                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa27:0x7 DW_TAG_base_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa2e:0x5 DW_TAG_pointer_type
	.long	2611                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xa33:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0xa34:0x5 DW_TAG_pointer_type
	.long	2617                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0xa39:0xbd DW_TAG_structure_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa41:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2806                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa4d:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2817                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa59:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2828                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa65:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2839                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa71:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2468                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa7d:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2850                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa89:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	738                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa95:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2806                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaa1:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2861                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaad:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2872                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xab9:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2883                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xac5:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2894                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xad1:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2894                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xadd:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2894                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xae9:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2949                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xaf6:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb01:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb0c:0xb DW_TAG_typedef
	.long	2599                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb17:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb22:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb2d:0xb DW_TAG_typedef
	.long	2534                            # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb38:0xb DW_TAG_typedef
	.long	2534                            # DW_AT_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb43:0xb DW_TAG_typedef
	.long	2534                            # DW_AT_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xb4e:0x21 DW_TAG_structure_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb56:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2927                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb62:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2938                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb6f:0xb DW_TAG_typedef
	.long	2534                            # DW_AT_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb7a:0xb DW_TAG_typedef
	.long	2534                            # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xb85:0xc DW_TAG_array_type
	.long	2938                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xb8a:0x6 DW_TAG_subrange_type
	.long	2450                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb91:0x5 DW_TAG_pointer_type
	.long	2966                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0xb96:0x69 DW_TAG_structure_type
	.long	.Linfo_string192                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb9e:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3071                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbaa:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	3071                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbb6:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3071                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbc2:0xc DW_TAG_member
	.long	.Linfo_string184                # DW_AT_name
	.long	3071                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbce:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	3082                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbda:0xc DW_TAG_member
	.long	.Linfo_string188                # DW_AT_name
	.long	3100                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbe6:0xc DW_TAG_member
	.long	.Linfo_string189                # DW_AT_name
	.long	3112                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbf2:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	3112                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xbff:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc0a:0xb DW_TAG_typedef
	.long	3093                            # DW_AT_type
	.long	.Linfo_string187                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc15:0x7 DW_TAG_base_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xc1c:0xc DW_TAG_array_type
	.long	3082                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc21:0x6 DW_TAG_subrange_type
	.long	2450                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc28:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string190                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc33:0x5 DW_TAG_pointer_type
	.long	1451                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc38:0x5 DW_TAG_pointer_type
	.long	1529                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc3d:0x5 DW_TAG_pointer_type
	.long	1378                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_redir_extract.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=74
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=143
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=156
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=170
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=184
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=197
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=210
.Linfo_string9:
	.asciz	"expansion"                     # string offset=222
.Linfo_string10:
	.asciz	"operator"                      # string offset=232
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=241
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=250
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=258
.Linfo_string14:
	.asciz	"outfile"                       # string offset=266
.Linfo_string15:
	.asciz	"append"                        # string offset=274
.Linfo_string16:
	.asciz	"infile"                        # string offset=281
.Linfo_string17:
	.asciz	"and_if"                        # string offset=288
.Linfo_string18:
	.asciz	"or_if"                         # string offset=295
.Linfo_string19:
	.asciz	"word"                          # string offset=301
.Linfo_string20:
	.asciz	"name"                          # string offset=306
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=311
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=327
.Linfo_string23:
	.asciz	"e_token"                       # string offset=337
.Linfo_string24:
	.asciz	"handle_infile_token"           # string offset=345
.Linfo_string25:
	.asciz	"extract_command_infile"        # string offset=365
.Linfo_string26:
	.asciz	"manage_outfile_list"           # string offset=388
.Linfo_string27:
	.asciz	"extract_command_outfile"       # string offset=408
.Linfo_string28:
	.asciz	"get_command_redir"             # string offset=432
.Linfo_string29:
	.asciz	"minishell"                     # string offset=450
.Linfo_string30:
	.asciz	"dir"                           # string offset=460
.Linfo_string31:
	.asciz	"__dirstream"                   # string offset=464
.Linfo_string32:
	.asciz	"DIR"                           # string offset=476
.Linfo_string33:
	.asciz	"state"                         # string offset=480
.Linfo_string34:
	.asciz	"int"                           # string offset=486
.Linfo_string35:
	.asciz	"input"                         # string offset=490
.Linfo_string36:
	.asciz	"char"                          # string offset=496
.Linfo_string37:
	.asciz	"path"                          # string offset=501
.Linfo_string38:
	.asciz	"prompt"                        # string offset=506
.Linfo_string39:
	.asciz	"operator_nbr"                  # string offset=513
.Linfo_string40:
	.asciz	"env_array"                     # string offset=526
.Linfo_string41:
	.asciz	"env"                           # string offset=536
.Linfo_string42:
	.asciz	"value"                         # string offset=540
.Linfo_string43:
	.asciz	"next"                          # string offset=546
.Linfo_string44:
	.asciz	"s_env"                         # string offset=551
.Linfo_string45:
	.asciz	"t_env"                         # string offset=557
.Linfo_string46:
	.asciz	"local"                         # string offset=563
.Linfo_string47:
	.asciz	"s_var"                         # string offset=569
.Linfo_string48:
	.asciz	"t_var"                         # string offset=575
.Linfo_string49:
	.asciz	"syntax_tree"                   # string offset=581
.Linfo_string50:
	.asciz	"node"                          # string offset=593
.Linfo_string51:
	.asciz	"id"                            # string offset=598
.Linfo_string52:
	.asciz	"type"                          # string offset=601
.Linfo_string53:
	.asciz	"pipe_fd"                       # string offset=606
.Linfo_string54:
	.asciz	"left"                          # string offset=614
.Linfo_string55:
	.asciz	"pid"                           # string offset=619
.Linfo_string56:
	.asciz	"wstatus"                       # string offset=623
.Linfo_string57:
	.asciz	"arg"                           # string offset=631
.Linfo_string58:
	.asciz	"s_arg"                         # string offset=635
.Linfo_string59:
	.asciz	"t_arg"                         # string offset=641
.Linfo_string60:
	.asciz	"pipe"                          # string offset=647
.Linfo_string61:
	.asciz	"to_close"                      # string offset=652
.Linfo_string62:
	.asciz	"write"                         # string offset=661
.Linfo_string63:
	.asciz	"read"                          # string offset=667
.Linfo_string64:
	.asciz	"s_pipe"                        # string offset=672
.Linfo_string65:
	.asciz	"t_pipe"                        # string offset=679
.Linfo_string66:
	.asciz	"redir"                         # string offset=686
.Linfo_string67:
	.asciz	"in_fd"                         # string offset=692
.Linfo_string68:
	.asciz	"out_fd"                        # string offset=698
.Linfo_string69:
	.asciz	"fd"                            # string offset=705
.Linfo_string70:
	.asciz	"s_infile"                      # string offset=708
.Linfo_string71:
	.asciz	"t_infile"                      # string offset=717
.Linfo_string72:
	.asciz	"s_outfile"                     # string offset=726
.Linfo_string73:
	.asciz	"t_outfile"                     # string offset=736
.Linfo_string74:
	.asciz	"s_redir"                       # string offset=746
.Linfo_string75:
	.asciz	"t_redir"                       # string offset=754
.Linfo_string76:
	.asciz	"assign"                        # string offset=762
.Linfo_string77:
	.asciz	"s_expan"                       # string offset=769
.Linfo_string78:
	.asciz	"t_expan"                       # string offset=777
.Linfo_string79:
	.asciz	"arg_array"                     # string offset=785
.Linfo_string80:
	.asciz	"prev"                          # string offset=795
.Linfo_string81:
	.asciz	"s_cmd"                         # string offset=800
.Linfo_string82:
	.asciz	"right"                         # string offset=806
.Linfo_string83:
	.asciz	"s_ast_node"                    # string offset=812
.Linfo_string84:
	.asciz	"t_ast_node"                    # string offset=823
.Linfo_string85:
	.asciz	"s_ast"                         # string offset=834
.Linfo_string86:
	.asciz	"t_ast"                         # string offset=840
.Linfo_string87:
	.asciz	"token_stream"                  # string offset=846
.Linfo_string88:
	.asciz	"quote_nbr"                     # string offset=859
.Linfo_string89:
	.asciz	"length"                        # string offset=869
.Linfo_string90:
	.asciz	"lexeme"                        # string offset=876
.Linfo_string91:
	.asciz	"s_token"                       # string offset=883
.Linfo_string92:
	.asciz	"t_token"                       # string offset=891
.Linfo_string93:
	.asciz	"sighandler"                    # string offset=899
.Linfo_string94:
	.asciz	"__sigaction_handler"           # string offset=910
.Linfo_string95:
	.asciz	"sa_handler"                    # string offset=930
.Linfo_string96:
	.asciz	"__sighandler_t"                # string offset=941
.Linfo_string97:
	.asciz	"sa_sigaction"                  # string offset=956
.Linfo_string98:
	.asciz	"si_signo"                      # string offset=969
.Linfo_string99:
	.asciz	"si_errno"                      # string offset=978
.Linfo_string100:
	.asciz	"si_code"                       # string offset=987
.Linfo_string101:
	.asciz	"__pad0"                        # string offset=995
.Linfo_string102:
	.asciz	"_sifields"                     # string offset=1002
.Linfo_string103:
	.asciz	"_pad"                          # string offset=1012
.Linfo_string104:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1017
.Linfo_string105:
	.asciz	"_kill"                         # string offset=1037
.Linfo_string106:
	.asciz	"si_pid"                        # string offset=1043
.Linfo_string107:
	.asciz	"__pid_t"                       # string offset=1050
.Linfo_string108:
	.asciz	"si_uid"                        # string offset=1058
.Linfo_string109:
	.asciz	"__uid_t"                       # string offset=1065
.Linfo_string110:
	.asciz	"_timer"                        # string offset=1073
.Linfo_string111:
	.asciz	"si_tid"                        # string offset=1080
.Linfo_string112:
	.asciz	"si_overrun"                    # string offset=1087
.Linfo_string113:
	.asciz	"si_sigval"                     # string offset=1098
.Linfo_string114:
	.asciz	"sival_int"                     # string offset=1108
.Linfo_string115:
	.asciz	"sival_ptr"                     # string offset=1118
.Linfo_string116:
	.asciz	"sigval"                        # string offset=1128
.Linfo_string117:
	.asciz	"__sigval_t"                    # string offset=1135
.Linfo_string118:
	.asciz	"_rt"                           # string offset=1146
.Linfo_string119:
	.asciz	"_sigchld"                      # string offset=1150
.Linfo_string120:
	.asciz	"si_status"                     # string offset=1159
.Linfo_string121:
	.asciz	"si_utime"                      # string offset=1169
.Linfo_string122:
	.asciz	"long int"                      # string offset=1178
.Linfo_string123:
	.asciz	"__clock_t"                     # string offset=1187
.Linfo_string124:
	.asciz	"si_stime"                      # string offset=1197
.Linfo_string125:
	.asciz	"_sigfault"                     # string offset=1206
.Linfo_string126:
	.asciz	"si_addr"                       # string offset=1216
.Linfo_string127:
	.asciz	"si_addr_lsb"                   # string offset=1224
.Linfo_string128:
	.asciz	"short"                         # string offset=1236
.Linfo_string129:
	.asciz	"_bounds"                       # string offset=1242
.Linfo_string130:
	.asciz	"_addr_bnd"                     # string offset=1250
.Linfo_string131:
	.asciz	"_lower"                        # string offset=1260
.Linfo_string132:
	.asciz	"_upper"                        # string offset=1267
.Linfo_string133:
	.asciz	"_pkey"                         # string offset=1274
.Linfo_string134:
	.asciz	"__uint32_t"                    # string offset=1280
.Linfo_string135:
	.asciz	"_sigpoll"                      # string offset=1291
.Linfo_string136:
	.asciz	"si_band"                       # string offset=1300
.Linfo_string137:
	.asciz	"si_fd"                         # string offset=1308
.Linfo_string138:
	.asciz	"_sigsys"                       # string offset=1314
.Linfo_string139:
	.asciz	"_call_addr"                    # string offset=1322
.Linfo_string140:
	.asciz	"_syscall"                      # string offset=1333
.Linfo_string141:
	.asciz	"_arch"                         # string offset=1342
.Linfo_string142:
	.asciz	"siginfo_t"                     # string offset=1348
.Linfo_string143:
	.asciz	"sa_mask"                       # string offset=1358
.Linfo_string144:
	.asciz	"__val"                         # string offset=1366
.Linfo_string145:
	.asciz	"long unsigned int"             # string offset=1372
.Linfo_string146:
	.asciz	"__sigset_t"                    # string offset=1390
.Linfo_string147:
	.asciz	"sa_flags"                      # string offset=1401
.Linfo_string148:
	.asciz	"sa_restorer"                   # string offset=1410
.Linfo_string149:
	.asciz	"sigaction"                     # string offset=1422
.Linfo_string150:
	.asciz	"statbuf"                       # string offset=1432
.Linfo_string151:
	.asciz	"st_dev"                        # string offset=1440
.Linfo_string152:
	.asciz	"__dev_t"                       # string offset=1447
.Linfo_string153:
	.asciz	"st_ino"                        # string offset=1455
.Linfo_string154:
	.asciz	"__ino_t"                       # string offset=1462
.Linfo_string155:
	.asciz	"st_nlink"                      # string offset=1470
.Linfo_string156:
	.asciz	"__nlink_t"                     # string offset=1479
.Linfo_string157:
	.asciz	"st_mode"                       # string offset=1489
.Linfo_string158:
	.asciz	"__mode_t"                      # string offset=1497
.Linfo_string159:
	.asciz	"st_uid"                        # string offset=1506
.Linfo_string160:
	.asciz	"st_gid"                        # string offset=1513
.Linfo_string161:
	.asciz	"__gid_t"                       # string offset=1520
.Linfo_string162:
	.asciz	"st_rdev"                       # string offset=1528
.Linfo_string163:
	.asciz	"st_size"                       # string offset=1536
.Linfo_string164:
	.asciz	"__off_t"                       # string offset=1544
.Linfo_string165:
	.asciz	"st_blksize"                    # string offset=1552
.Linfo_string166:
	.asciz	"__blksize_t"                   # string offset=1563
.Linfo_string167:
	.asciz	"st_blocks"                     # string offset=1575
.Linfo_string168:
	.asciz	"__blkcnt_t"                    # string offset=1585
.Linfo_string169:
	.asciz	"st_atim"                       # string offset=1596
.Linfo_string170:
	.asciz	"tv_sec"                        # string offset=1604
.Linfo_string171:
	.asciz	"__time_t"                      # string offset=1611
.Linfo_string172:
	.asciz	"tv_nsec"                       # string offset=1620
.Linfo_string173:
	.asciz	"__syscall_slong_t"             # string offset=1628
.Linfo_string174:
	.asciz	"timespec"                      # string offset=1646
.Linfo_string175:
	.asciz	"st_mtim"                       # string offset=1655
.Linfo_string176:
	.asciz	"st_ctim"                       # string offset=1663
.Linfo_string177:
	.asciz	"__glibc_reserved"              # string offset=1671
.Linfo_string178:
	.asciz	"stat"                          # string offset=1688
.Linfo_string179:
	.asciz	"term"                          # string offset=1693
.Linfo_string180:
	.asciz	"c_iflag"                       # string offset=1698
.Linfo_string181:
	.asciz	"tcflag_t"                      # string offset=1706
.Linfo_string182:
	.asciz	"c_oflag"                       # string offset=1715
.Linfo_string183:
	.asciz	"c_cflag"                       # string offset=1723
.Linfo_string184:
	.asciz	"c_lflag"                       # string offset=1731
.Linfo_string185:
	.asciz	"c_line"                        # string offset=1739
.Linfo_string186:
	.asciz	"unsigned char"                 # string offset=1746
.Linfo_string187:
	.asciz	"cc_t"                          # string offset=1760
.Linfo_string188:
	.asciz	"c_cc"                          # string offset=1765
.Linfo_string189:
	.asciz	"c_ispeed"                      # string offset=1770
.Linfo_string190:
	.asciz	"speed_t"                       # string offset=1779
.Linfo_string191:
	.asciz	"c_ospeed"                      # string offset=1787
.Linfo_string192:
	.asciz	"termios"                       # string offset=1796
.Linfo_string193:
	.asciz	"s_minishell"                   # string offset=1804
.Linfo_string194:
	.asciz	"t_minishell"                   # string offset=1816
.Linfo_string195:
	.asciz	"new"                           # string offset=1828
.Linfo_string196:
	.asciz	"token"                         # string offset=1832
.Linfo_string197:
	.asciz	"index"                         # string offset=1838
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_infile_token
	.addrsig_sym ft_strlen
	.addrsig_sym get_redir_heredoc
	.addrsig_sym add_infile_to_list
	.addrsig_sym is_file_accessible
	.addrsig_sym free
	.addrsig_sym extract_command_infile
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym get_redir_filename
	.addrsig_sym manage_outfile_list
	.addrsig_sym extract_command_outfile
	.section	.debug_line,"",@progbits
.Lline_table_start0:

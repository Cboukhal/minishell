	.text
	.file	"command_redir_extract.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/parsing/../../include/minishell.h"
	.globl	get_redir_heredoc               # -- Begin function get_redir_heredoc
	.p2align	4, 0x90
	.type	get_redir_heredoc,@function
get_redir_heredoc:                      # @get_redir_heredoc
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/parsing/command_redir_extract.c"
	.loc	2 16 0                          # src/parsing/command_redir_extract.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	2 20 7 prologue_end             # src/parsing/command_redir_extract.c:20:7
	movabsq	$.L.str, %rdi
	movl	$577, %esi                      # imm = 0x241
	movl	$384, %edx                      # imm = 0x180
	movb	$0, %al
	callq	open
	.loc	2 20 5 is_stmt 0                # src/parsing/command_redir_extract.c:20:5
	movl	%eax, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp1:
	.loc	2 24 3 is_stmt 1                # src/parsing/command_redir_extract.c:24:3
	movl	$1, %edi
	movabsq	$.L.str.1, %rsi
	movl	$2, %edx
	callq	write
	.loc	2 25 12                         # src/parsing/command_redir_extract.c:25:12
	movl	$1, %edi
	callq	get_next_line
	.loc	2 25 10 is_stmt 0               # src/parsing/command_redir_extract.c:25:10
	movq	%rax, -24(%rbp)
.Ltmp2:
	.loc	2 26 8 is_stmt 1                # src/parsing/command_redir_extract.c:26:8
	cmpq	$0, -24(%rbp)
	.loc	2 27 4                          # src/parsing/command_redir_extract.c:27:4
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 27 18 is_stmt 0               # src/parsing/command_redir_extract.c:27:18
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	2 27 26                         # src/parsing/command_redir_extract.c:27:26
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	2 27 47                         # src/parsing/command_redir_extract.c:27:47
	movq	-8(%rbp), %rdi
	.loc	2 27 37                         # src/parsing/command_redir_extract.c:27:37
	callq	ft_strlen
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	2 27 7                          # src/parsing/command_redir_extract.c:27:7
	callq	ft_strncmp
	.loc	2 27 59                         # src/parsing/command_redir_extract.c:27:59
	cmpl	$0, %eax
.Ltmp3:
	.loc	2 26 7 is_stmt 1                # src/parsing/command_redir_extract.c:26:7
	jne	.LBB0_4
.LBB0_3:
.Ltmp4:
	.loc	2 28 4                          # src/parsing/command_redir_extract.c:28:4
	jmp	.LBB0_5
.Ltmp5:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 29 9                          # src/parsing/command_redir_extract.c:29:9
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	.loc	2 29 13 is_stmt 0               # src/parsing/command_redir_extract.c:29:13
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	2 29 31                         # src/parsing/command_redir_extract.c:29:31
	movq	-24(%rbp), %rdi
	.loc	2 29 21                         # src/parsing/command_redir_extract.c:29:21
	callq	ft_strlen
	movl	-52(%rbp), %edi                 # 4-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	2 29 3                          # src/parsing/command_redir_extract.c:29:3
	callq	write
	.loc	2 30 8 is_stmt 1                # src/parsing/command_redir_extract.c:30:8
	movq	-24(%rbp), %rdi
	.loc	2 30 3 is_stmt 0                # src/parsing/command_redir_extract.c:30:3
	callq	free
.Ltmp6:
	.loc	2 22 2 is_stmt 1                # src/parsing/command_redir_extract.c:22:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	2 32 7                          # src/parsing/command_redir_extract.c:32:7
	movq	-24(%rbp), %rdi
	.loc	2 32 2 is_stmt 0                # src/parsing/command_redir_extract.c:32:2
	callq	free
	.loc	2 33 8 is_stmt 1                # src/parsing/command_redir_extract.c:33:8
	movl	-12(%rbp), %edi
	.loc	2 33 2 is_stmt 0                # src/parsing/command_redir_extract.c:33:2
	callq	close
	.loc	2 34 1 is_stmt 1                # src/parsing/command_redir_extract.c:34:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	get_redir_heredoc, .Lfunc_end0-get_redir_heredoc
	.cfi_endproc
                                        # -- End function
	.globl	is_file_accessible              # -- Begin function is_file_accessible
	.p2align	4, 0x90
	.type	is_file_accessible,@function
is_file_accessible:                     # @is_file_accessible
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp8:
	.loc	2 38 6 prologue_end             # src/parsing/command_redir_extract.c:38:6
	cmpq	$0, -24(%rbp)
	.loc	2 38 15 is_stmt 0               # src/parsing/command_redir_extract.c:38:15
	je	.LBB1_5
# %bb.1:
	.loc	2 38 28                         # src/parsing/command_redir_extract.c:38:28
	movq	-24(%rbp), %rdi
	.loc	2 38 18                         # src/parsing/command_redir_extract.c:38:18
	callq	ft_strlen
	.loc	2 38 38                         # src/parsing/command_redir_extract.c:38:38
	cmpq	$0, %rax
.Ltmp9:
	.loc	2 38 6                          # src/parsing/command_redir_extract.c:38:6
	jbe	.LBB1_5
# %bb.2:
.Ltmp10:
	.loc	2 40 14 is_stmt 1               # src/parsing/command_redir_extract.c:40:14
	movq	-24(%rbp), %rdi
	.loc	2 40 7 is_stmt 0                # src/parsing/command_redir_extract.c:40:7
	xorl	%esi, %esi
	callq	access
	.loc	2 40 30                         # src/parsing/command_redir_extract.c:40:30
	cmpl	$0, %eax
.Ltmp11:
	.loc	2 40 7                          # src/parsing/command_redir_extract.c:40:7
	jne	.LBB1_4
# %bb.3:
.Ltmp12:
	.loc	2 41 4 is_stmt 1                # src/parsing/command_redir_extract.c:41:4
	movb	$1, -1(%rbp)
	jmp	.LBB1_6
.Ltmp13:
.LBB1_4:
	.loc	2 42 31                         # src/parsing/command_redir_extract.c:42:31
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	2 42 50 is_stmt 0               # src/parsing/command_redir_extract.c:42:50
	callq	__errno_location
	movl	(%rax), %edi
	.loc	2 42 41                         # src/parsing/command_redir_extract.c:42:41
	callq	strerror
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	2 42 3                          # src/parsing/command_redir_extract.c:42:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 43 3 is_stmt 1                # src/parsing/command_redir_extract.c:43:3
	movq	-16(%rbp), %rax
	.loc	2 43 26 is_stmt 0               # src/parsing/command_redir_extract.c:43:26
	movl	$1, 44(%rax)
.Ltmp14:
.LBB1_5:
	.loc	2 45 2 is_stmt 1                # src/parsing/command_redir_extract.c:45:2
	movb	$0, -1(%rbp)
.LBB1_6:
	.loc	2 46 1                          # src/parsing/command_redir_extract.c:46:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	is_file_accessible, .Lfunc_end1-is_file_accessible
	.cfi_endproc
                                        # -- End function
	.globl	process_redirection             # -- Begin function process_redirection
	.p2align	4, 0x90
	.type	process_redirection,@function
process_redirection:                    # @process_redirection
.Lfunc_begin2:
	.loc	2 87 0                          # src/parsing/command_redir_extract.c:87:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp16:
	.loc	2 88 6 prologue_end             # src/parsing/command_redir_extract.c:88:6
	movq	-8(%rbp), %rax
	.loc	2 88 16 is_stmt 0               # src/parsing/command_redir_extract.c:88:16
	cmpl	$9, 4(%rax)
	.loc	2 88 27                         # src/parsing/command_redir_extract.c:88:27
	jne	.LBB2_3
# %bb.1:
	.loc	2 88 40                         # src/parsing/command_redir_extract.c:88:40
	movq	-8(%rbp), %rax
	.loc	2 88 45                         # src/parsing/command_redir_extract.c:88:45
	movq	8(%rax), %rdi
	.loc	2 88 30                         # src/parsing/command_redir_extract.c:88:30
	callq	ft_strlen
	.loc	2 88 51                         # src/parsing/command_redir_extract.c:88:51
	cmpq	$0, %rax
.Ltmp17:
	.loc	2 88 6                          # src/parsing/command_redir_extract.c:88:6
	jbe	.LBB2_3
# %bb.2:
.Ltmp18:
	.loc	2 89 21 is_stmt 1               # src/parsing/command_redir_extract.c:89:21
	movq	-8(%rbp), %rax
	.loc	2 89 26 is_stmt 0               # src/parsing/command_redir_extract.c:89:26
	movq	8(%rax), %rdi
	.loc	2 89 3                          # src/parsing/command_redir_extract.c:89:3
	callq	get_redir_heredoc
.Ltmp19:
.LBB2_3:
	.loc	2 90 1 is_stmt 1                # src/parsing/command_redir_extract.c:90:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp20:
.Lfunc_end2:
	.size	process_redirection, .Lfunc_end2-process_redirection
	.cfi_endproc
                                        # -- End function
	.globl	manage_infile_list              # -- Begin function manage_infile_list
	.p2align	4, 0x90
	.type	manage_infile_list,@function
manage_infile_list:                     # @manage_infile_list
.Lfunc_begin3:
	.loc	2 93 0                          # src/parsing/command_redir_extract.c:93:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp21:
	.loc	2 96 11 prologue_end            # src/parsing/command_redir_extract.c:96:11
	movq	-8(%rbp), %rax
	.loc	2 96 10 is_stmt 0               # src/parsing/command_redir_extract.c:96:10
	movq	(%rax), %rax
	.loc	2 96 8                          # src/parsing/command_redir_extract.c:96:8
	movq	%rax, -24(%rbp)
.Ltmp22:
	.loc	2 97 6 is_stmt 1                # src/parsing/command_redir_extract.c:97:6
	cmpq	$0, -24(%rbp)
.Ltmp23:
	.loc	2 97 6 is_stmt 0                # src/parsing/command_redir_extract.c:97:6
	je	.LBB3_5
# %bb.1:
.Ltmp24:
	.loc	2 99 3 is_stmt 1                # src/parsing/command_redir_extract.c:99:3
	jmp	.LBB3_2
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	.loc	2 99 10 is_stmt 0               # src/parsing/command_redir_extract.c:99:10
	movq	-24(%rbp), %rax
	.loc	2 99 3                          # src/parsing/command_redir_extract.c:99:3
	cmpq	$0, 16(%rax)
	je	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	.loc	2 100 12 is_stmt 1              # src/parsing/command_redir_extract.c:100:12
	movq	-24(%rbp), %rax
	.loc	2 100 19 is_stmt 0              # src/parsing/command_redir_extract.c:100:19
	movq	16(%rax), %rax
	.loc	2 100 10                        # src/parsing/command_redir_extract.c:100:10
	movq	%rax, -24(%rbp)
	.loc	2 99 3 is_stmt 1                # src/parsing/command_redir_extract.c:99:3
	jmp	.LBB3_2
.LBB3_4:
	.loc	2 101 17                        # src/parsing/command_redir_extract.c:101:17
	movq	-16(%rbp), %rcx
	.loc	2 101 3 is_stmt 0               # src/parsing/command_redir_extract.c:101:3
	movq	-24(%rbp), %rax
	.loc	2 101 15                        # src/parsing/command_redir_extract.c:101:15
	movq	%rcx, 16(%rax)
	.loc	2 102 2 is_stmt 1               # src/parsing/command_redir_extract.c:102:2
	jmp	.LBB3_6
.Ltmp25:
.LBB3_5:
	.loc	2 104 13                        # src/parsing/command_redir_extract.c:104:13
	movq	-16(%rbp), %rcx
	.loc	2 104 4 is_stmt 0               # src/parsing/command_redir_extract.c:104:4
	movq	-8(%rbp), %rax
	.loc	2 104 11                        # src/parsing/command_redir_extract.c:104:11
	movq	%rcx, (%rax)
.Ltmp26:
.LBB3_6:
	.loc	2 105 1 is_stmt 1               # src/parsing/command_redir_extract.c:105:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp27:
.Lfunc_end3:
	.size	manage_infile_list, .Lfunc_end3-manage_infile_list
	.cfi_endproc
                                        # -- End function
	.globl	add_infile_to_list              # -- Begin function add_infile_to_list
	.p2align	4, 0x90
	.type	add_infile_to_list,@function
add_infile_to_list:                     # @add_infile_to_list
.Lfunc_begin4:
	.loc	2 108 0                         # src/parsing/command_redir_extract.c:108:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp28:
	.loc	2 111 8 prologue_end            # src/parsing/command_redir_extract.c:111:8
	movq	-8(%rbp), %rax
	.loc	2 111 6 is_stmt 0               # src/parsing/command_redir_extract.c:111:6
	cmpq	$0, (%rax)
.Ltmp29:
	.loc	2 111 6                         # src/parsing/command_redir_extract.c:111:6
	je	.LBB4_7
# %bb.1:
.Ltmp30:
	.loc	2 113 13 is_stmt 1              # src/parsing/command_redir_extract.c:113:13
	movq	-8(%rbp), %rax
	.loc	2 113 12 is_stmt 0              # src/parsing/command_redir_extract.c:113:12
	movq	(%rax), %rax
	.loc	2 113 9                         # src/parsing/command_redir_extract.c:113:9
	movq	%rax, -24(%rbp)
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	.loc	2 114 3 is_stmt 1               # src/parsing/command_redir_extract.c:114:3
	cmpq	$0, -24(%rbp)
	je	.LBB4_6
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
.Ltmp31:
	.loc	2 116 8                         # src/parsing/command_redir_extract.c:116:8
	movq	-24(%rbp), %rax
	.loc	2 116 20 is_stmt 0              # src/parsing/command_redir_extract.c:116:20
	cmpq	$0, 16(%rax)
.Ltmp32:
	.loc	2 116 8                         # src/parsing/command_redir_extract.c:116:8
	jne	.LBB4_5
# %bb.4:
.Ltmp33:
	.loc	2 117 5 is_stmt 1               # src/parsing/command_redir_extract.c:117:5
	jmp	.LBB4_6
.Ltmp34:
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	.loc	2 118 12                        # src/parsing/command_redir_extract.c:118:12
	movq	-24(%rbp), %rax
	.loc	2 118 19 is_stmt 0              # src/parsing/command_redir_extract.c:118:19
	movq	16(%rax), %rax
	.loc	2 118 10                        # src/parsing/command_redir_extract.c:118:10
	movq	%rax, -24(%rbp)
.Ltmp35:
	.loc	2 114 3 is_stmt 1               # src/parsing/command_redir_extract.c:114:3
	jmp	.LBB4_2
.LBB4_6:
	.loc	2 120 19                        # src/parsing/command_redir_extract.c:120:19
	movq	-16(%rbp), %rax
	.loc	2 120 18 is_stmt 0              # src/parsing/command_redir_extract.c:120:18
	movq	(%rax), %rcx
	.loc	2 120 3                         # src/parsing/command_redir_extract.c:120:3
	movq	-24(%rbp), %rax
	.loc	2 120 15                        # src/parsing/command_redir_extract.c:120:15
	movq	%rcx, 16(%rax)
	.loc	2 121 2 is_stmt 1               # src/parsing/command_redir_extract.c:121:2
	jmp	.LBB4_8
.Ltmp36:
.LBB4_7:
	.loc	2 123 17                        # src/parsing/command_redir_extract.c:123:17
	movq	-16(%rbp), %rax
	.loc	2 123 16 is_stmt 0              # src/parsing/command_redir_extract.c:123:16
	movq	(%rax), %rcx
	.loc	2 123 5                         # src/parsing/command_redir_extract.c:123:5
	movq	-8(%rbp), %rax
	.loc	2 123 13                        # src/parsing/command_redir_extract.c:123:13
	movq	%rcx, (%rax)
.Ltmp37:
.LBB4_8:
	.loc	2 124 1 is_stmt 1               # src/parsing/command_redir_extract.c:124:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp38:
.Lfunc_end4:
	.size	add_infile_to_list, .Lfunc_end4-add_infile_to_list
	.cfi_endproc
                                        # -- End function
	.globl	handle_infile_token             # -- Begin function handle_infile_token
	.p2align	4, 0x90
	.type	handle_infile_token,@function
handle_infile_token:                    # @handle_infile_token
.Lfunc_begin5:
	.loc	2 128 0                         # src/parsing/command_redir_extract.c:128:0
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
.Ltmp39:
	.loc	2 129 6 prologue_end            # src/parsing/command_redir_extract.c:129:6
	movq	-16(%rbp), %rax
	.loc	2 129 16 is_stmt 0              # src/parsing/command_redir_extract.c:129:16
	cmpl	$9, 4(%rax)
	.loc	2 129 27                        # src/parsing/command_redir_extract.c:129:27
	jne	.LBB5_3
# %bb.1:
	.loc	2 129 40                        # src/parsing/command_redir_extract.c:129:40
	movq	-16(%rbp), %rax
	.loc	2 129 45                        # src/parsing/command_redir_extract.c:129:45
	movq	8(%rax), %rdi
	.loc	2 129 30                        # src/parsing/command_redir_extract.c:129:30
	callq	ft_strlen
	.loc	2 129 51                        # src/parsing/command_redir_extract.c:129:51
	cmpq	$0, %rax
.Ltmp40:
	.loc	2 129 6                         # src/parsing/command_redir_extract.c:129:6
	jbe	.LBB5_3
# %bb.2:
.Ltmp41:
	.loc	2 131 21 is_stmt 1              # src/parsing/command_redir_extract.c:131:21
	movq	-16(%rbp), %rax
	.loc	2 131 26 is_stmt 0              # src/parsing/command_redir_extract.c:131:26
	movq	8(%rax), %rdi
	.loc	2 131 3                         # src/parsing/command_redir_extract.c:131:3
	callq	get_redir_heredoc
	.loc	2 132 22 is_stmt 1              # src/parsing/command_redir_extract.c:132:22
	movq	-24(%rbp), %rdi
	.loc	2 132 3 is_stmt 0               # src/parsing/command_redir_extract.c:132:3
	leaq	-16(%rbp), %rsi
	callq	add_infile_to_list
	.loc	2 133 2 is_stmt 1               # src/parsing/command_redir_extract.c:133:2
	jmp	.LBB5_8
.Ltmp42:
.LBB5_3:
	.loc	2 134 11                        # src/parsing/command_redir_extract.c:134:11
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	.loc	2 134 21 is_stmt 0              # src/parsing/command_redir_extract.c:134:21
	je	.LBB5_6
# %bb.4:
	.loc	2 134 43                        # src/parsing/command_redir_extract.c:134:43
	movq	-8(%rbp), %rdi
	.loc	2 134 54                        # src/parsing/command_redir_extract.c:134:54
	movq	-16(%rbp), %rax
	.loc	2 134 59                        # src/parsing/command_redir_extract.c:134:59
	movq	8(%rax), %rsi
	.loc	2 134 24                        # src/parsing/command_redir_extract.c:134:24
	callq	is_file_accessible
.Ltmp43:
	.loc	2 134 11                        # src/parsing/command_redir_extract.c:134:11
	testb	$1, %al
	jne	.LBB5_5
	jmp	.LBB5_6
.LBB5_5:
.Ltmp44:
	.loc	2 136 22 is_stmt 1              # src/parsing/command_redir_extract.c:136:22
	movq	-24(%rbp), %rdi
	.loc	2 136 3 is_stmt 0               # src/parsing/command_redir_extract.c:136:3
	leaq	-16(%rbp), %rsi
	callq	add_infile_to_list
	.loc	2 137 3 is_stmt 1               # src/parsing/command_redir_extract.c:137:3
	jmp	.LBB5_8
.Ltmp45:
.LBB5_6:
	.loc	2 141 8                         # src/parsing/command_redir_extract.c:141:8
	movq	-16(%rbp), %rax
	.loc	2 141 13 is_stmt 0              # src/parsing/command_redir_extract.c:141:13
	movq	8(%rax), %rdi
	.loc	2 141 3                         # src/parsing/command_redir_extract.c:141:3
	callq	free
	.loc	2 142 8 is_stmt 1               # src/parsing/command_redir_extract.c:142:8
	movq	-16(%rbp), %rdi
	.loc	2 142 3 is_stmt 0               # src/parsing/command_redir_extract.c:142:3
	callq	free
.Ltmp46:
# %bb.7:
	.loc	2 0 3                           # src/parsing/command_redir_extract.c:0:3
	jmp	.LBB5_8
.LBB5_8:
	.loc	2 144 1 is_stmt 1               # src/parsing/command_redir_extract.c:144:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp47:
.Lfunc_end5:
	.size	handle_infile_token, .Lfunc_end5-handle_infile_token
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_infile          # -- Begin function extract_command_infile
	.p2align	4, 0x90
	.type	extract_command_infile,@function
extract_command_infile:                 # @extract_command_infile
.Lfunc_begin6:
	.loc	2 148 0                         # src/parsing/command_redir_extract.c:148:0
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
.Ltmp48:
	.loc	2 151 8 prologue_end            # src/parsing/command_redir_extract.c:151:8
	movl	$24, %edi
	callq	malloc
	.loc	2 151 6 is_stmt 0               # src/parsing/command_redir_extract.c:151:6
	movq	%rax, -32(%rbp)
.Ltmp49:
	.loc	2 152 7 is_stmt 1               # src/parsing/command_redir_extract.c:152:7
	cmpq	$0, -32(%rbp)
.Ltmp50:
	.loc	2 152 6 is_stmt 0               # src/parsing/command_redir_extract.c:152:6
	jne	.LBB6_2
# %bb.1:
.Ltmp51:
	.loc	2 154 3 is_stmt 1               # src/parsing/command_redir_extract.c:154:3
	movabsq	$.L.str.3, %rdi
	callq	perror
	.loc	2 155 3                         # src/parsing/command_redir_extract.c:155:3
	jmp	.LBB6_3
.Ltmp52:
.LBB6_2:
	.loc	2 157 2                         # src/parsing/command_redir_extract.c:157:2
	movq	-32(%rbp), %rax
	.loc	2 157 12 is_stmt 0              # src/parsing/command_redir_extract.c:157:12
	movq	$0, 16(%rax)
	.loc	2 158 14 is_stmt 1              # src/parsing/command_redir_extract.c:158:14
	movq	-16(%rbp), %rax
	.loc	2 158 21 is_stmt 0              # src/parsing/command_redir_extract.c:158:21
	movl	(%rax), %ecx
	.loc	2 158 2                         # src/parsing/command_redir_extract.c:158:2
	movq	-32(%rbp), %rax
	.loc	2 158 12                        # src/parsing/command_redir_extract.c:158:12
	movl	%ecx, 4(%rax)
	.loc	2 159 33 is_stmt 1              # src/parsing/command_redir_extract.c:159:33
	movq	-16(%rbp), %rax
	.loc	2 159 40 is_stmt 0              # src/parsing/command_redir_extract.c:159:40
	movq	16(%rax), %rdi
	.loc	2 159 48                        # src/parsing/command_redir_extract.c:159:48
	movq	-32(%rbp), %rax
	.loc	2 159 53                        # src/parsing/command_redir_extract.c:159:53
	movl	4(%rax), %esi
	.loc	2 159 14                        # src/parsing/command_redir_extract.c:159:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 159 2                         # src/parsing/command_redir_extract.c:159:2
	movq	-32(%rbp), %rax
	.loc	2 159 12                        # src/parsing/command_redir_extract.c:159:12
	movq	%rcx, 8(%rax)
	.loc	2 160 23 is_stmt 1              # src/parsing/command_redir_extract.c:160:23
	movq	-8(%rbp), %rdi
	.loc	2 160 34 is_stmt 0              # src/parsing/command_redir_extract.c:160:34
	movq	-32(%rbp), %rsi
	.loc	2 160 39                        # src/parsing/command_redir_extract.c:160:39
	movq	-24(%rbp), %rdx
	.loc	2 160 2                         # src/parsing/command_redir_extract.c:160:2
	callq	handle_infile_token
.LBB6_3:
	.loc	2 161 1 is_stmt 1               # src/parsing/command_redir_extract.c:161:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp53:
.Lfunc_end6:
	.size	extract_command_infile, .Lfunc_end6-extract_command_infile
	.cfi_endproc
                                        # -- End function
	.globl	manage_outfile_list             # -- Begin function manage_outfile_list
	.p2align	4, 0x90
	.type	manage_outfile_list,@function
manage_outfile_list:                    # @manage_outfile_list
.Lfunc_begin7:
	.loc	2 194 0                         # src/parsing/command_redir_extract.c:194:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp54:
	.loc	2 197 11 prologue_end           # src/parsing/command_redir_extract.c:197:11
	movq	-8(%rbp), %rax
	.loc	2 197 10 is_stmt 0              # src/parsing/command_redir_extract.c:197:10
	movq	(%rax), %rax
	.loc	2 197 8                         # src/parsing/command_redir_extract.c:197:8
	movq	%rax, -24(%rbp)
.Ltmp55:
	.loc	2 198 6 is_stmt 1               # src/parsing/command_redir_extract.c:198:6
	cmpq	$0, -24(%rbp)
.Ltmp56:
	.loc	2 198 6 is_stmt 0               # src/parsing/command_redir_extract.c:198:6
	je	.LBB7_5
# %bb.1:
.Ltmp57:
	.loc	2 200 3 is_stmt 1               # src/parsing/command_redir_extract.c:200:3
	jmp	.LBB7_2
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	.loc	2 200 10 is_stmt 0              # src/parsing/command_redir_extract.c:200:10
	movq	-24(%rbp), %rax
	.loc	2 200 3                         # src/parsing/command_redir_extract.c:200:3
	cmpq	$0, 16(%rax)
	je	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	.loc	2 201 12 is_stmt 1              # src/parsing/command_redir_extract.c:201:12
	movq	-24(%rbp), %rax
	.loc	2 201 19 is_stmt 0              # src/parsing/command_redir_extract.c:201:19
	movq	16(%rax), %rax
	.loc	2 201 10                        # src/parsing/command_redir_extract.c:201:10
	movq	%rax, -24(%rbp)
	.loc	2 200 3 is_stmt 1               # src/parsing/command_redir_extract.c:200:3
	jmp	.LBB7_2
.LBB7_4:
	.loc	2 202 17                        # src/parsing/command_redir_extract.c:202:17
	movq	-16(%rbp), %rcx
	.loc	2 202 3 is_stmt 0               # src/parsing/command_redir_extract.c:202:3
	movq	-24(%rbp), %rax
	.loc	2 202 15                        # src/parsing/command_redir_extract.c:202:15
	movq	%rcx, 16(%rax)
	.loc	2 203 2 is_stmt 1               # src/parsing/command_redir_extract.c:203:2
	jmp	.LBB7_6
.Ltmp58:
.LBB7_5:
	.loc	2 205 14                        # src/parsing/command_redir_extract.c:205:14
	movq	-16(%rbp), %rcx
	.loc	2 205 4 is_stmt 0               # src/parsing/command_redir_extract.c:205:4
	movq	-8(%rbp), %rax
	.loc	2 205 12                        # src/parsing/command_redir_extract.c:205:12
	movq	%rcx, (%rax)
.Ltmp59:
.LBB7_6:
	.loc	2 206 1 is_stmt 1               # src/parsing/command_redir_extract.c:206:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp60:
.Lfunc_end7:
	.size	manage_outfile_list, .Lfunc_end7-manage_outfile_list
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_outfile         # -- Begin function extract_command_outfile
	.p2align	4, 0x90
	.type	extract_command_outfile,@function
extract_command_outfile:                # @extract_command_outfile
.Lfunc_begin8:
	.loc	2 209 0                         # src/parsing/command_redir_extract.c:209:0
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
.Ltmp61:
	.loc	2 212 8 prologue_end            # src/parsing/command_redir_extract.c:212:8
	movl	$24, %edi
	callq	malloc
	.loc	2 212 6 is_stmt 0               # src/parsing/command_redir_extract.c:212:6
	movq	%rax, -24(%rbp)
.Ltmp62:
	.loc	2 213 7 is_stmt 1               # src/parsing/command_redir_extract.c:213:7
	cmpq	$0, -24(%rbp)
.Ltmp63:
	.loc	2 213 6 is_stmt 0               # src/parsing/command_redir_extract.c:213:6
	jne	.LBB8_2
# %bb.1:
.Ltmp64:
	.loc	2 215 3 is_stmt 1               # src/parsing/command_redir_extract.c:215:3
	movabsq	$.L.str.3, %rdi
	callq	perror
	.loc	2 216 3                         # src/parsing/command_redir_extract.c:216:3
	jmp	.LBB8_3
.Ltmp65:
.LBB8_2:
	.loc	2 218 2                         # src/parsing/command_redir_extract.c:218:2
	movq	-24(%rbp), %rax
	.loc	2 218 12 is_stmt 0              # src/parsing/command_redir_extract.c:218:12
	movq	$0, 16(%rax)
	.loc	2 219 14 is_stmt 1              # src/parsing/command_redir_extract.c:219:14
	movq	-8(%rbp), %rax
	.loc	2 219 21 is_stmt 0              # src/parsing/command_redir_extract.c:219:21
	movl	(%rax), %ecx
	.loc	2 219 2                         # src/parsing/command_redir_extract.c:219:2
	movq	-24(%rbp), %rax
	.loc	2 219 12                        # src/parsing/command_redir_extract.c:219:12
	movl	%ecx, 4(%rax)
	.loc	2 220 33 is_stmt 1              # src/parsing/command_redir_extract.c:220:33
	movq	-8(%rbp), %rax
	.loc	2 220 40 is_stmt 0              # src/parsing/command_redir_extract.c:220:40
	movq	16(%rax), %rdi
	.loc	2 220 48                        # src/parsing/command_redir_extract.c:220:48
	movq	-24(%rbp), %rax
	.loc	2 220 53                        # src/parsing/command_redir_extract.c:220:53
	movl	4(%rax), %esi
	.loc	2 220 14                        # src/parsing/command_redir_extract.c:220:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 220 2                         # src/parsing/command_redir_extract.c:220:2
	movq	-24(%rbp), %rax
	.loc	2 220 12                        # src/parsing/command_redir_extract.c:220:12
	movq	%rcx, 8(%rax)
	.loc	2 221 22 is_stmt 1              # src/parsing/command_redir_extract.c:221:22
	movq	-16(%rbp), %rdi
	.loc	2 221 31 is_stmt 0              # src/parsing/command_redir_extract.c:221:31
	movq	-24(%rbp), %rsi
	.loc	2 221 2                         # src/parsing/command_redir_extract.c:221:2
	callq	manage_outfile_list
.LBB8_3:
	.loc	2 222 1 is_stmt 1               # src/parsing/command_redir_extract.c:222:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp66:
.Lfunc_end8:
	.size	extract_command_outfile, .Lfunc_end8-extract_command_outfile
	.cfi_endproc
                                        # -- End function
	.globl	get_command_redir               # -- Begin function get_command_redir
	.p2align	4, 0x90
	.type	get_command_redir,@function
get_command_redir:                      # @get_command_redir
.Lfunc_begin9:
	.loc	2 226 0                         # src/parsing/command_redir_extract.c:226:0
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
.Ltmp67:
	.loc	2 227 8 prologue_end            # src/parsing/command_redir_extract.c:227:8
	movq	-24(%rbp), %rax
	.loc	2 227 15 is_stmt 0              # src/parsing/command_redir_extract.c:227:15
	cmpq	$0, (%rax)
.Ltmp68:
	.loc	2 227 6                         # src/parsing/command_redir_extract.c:227:6
	jne	.LBB9_4
# %bb.1:
.Ltmp69:
	.loc	2 229 14 is_stmt 1              # src/parsing/command_redir_extract.c:229:14
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 229 5 is_stmt 0               # src/parsing/command_redir_extract.c:229:5
	movq	-24(%rbp), %rax
	.loc	2 229 12                        # src/parsing/command_redir_extract.c:229:12
	movq	%rcx, (%rax)
.Ltmp70:
	.loc	2 230 10 is_stmt 1              # src/parsing/command_redir_extract.c:230:10
	movq	-24(%rbp), %rax
	.loc	2 230 8 is_stmt 0               # src/parsing/command_redir_extract.c:230:8
	cmpq	$0, (%rax)
.Ltmp71:
	.loc	2 230 7                         # src/parsing/command_redir_extract.c:230:7
	jne	.LBB9_3
# %bb.2:
.Ltmp72:
	.loc	2 231 4 is_stmt 1               # src/parsing/command_redir_extract.c:231:4
	movabsq	$.L.str.4, %rdi
	callq	perror
.Ltmp73:
.LBB9_3:
	.loc	2 232 5                         # src/parsing/command_redir_extract.c:232:5
	movq	-24(%rbp), %rax
	.loc	2 232 4 is_stmt 0               # src/parsing/command_redir_extract.c:232:4
	movq	(%rax), %rax
	.loc	2 232 20                        # src/parsing/command_redir_extract.c:232:20
	movq	$0, 8(%rax)
	.loc	2 233 5 is_stmt 1               # src/parsing/command_redir_extract.c:233:5
	movq	-24(%rbp), %rax
	.loc	2 233 4 is_stmt 0               # src/parsing/command_redir_extract.c:233:4
	movq	(%rax), %rax
	.loc	2 233 21                        # src/parsing/command_redir_extract.c:233:21
	movq	$0, 16(%rax)
.Ltmp74:
.LBB9_4:
	.loc	2 235 6 is_stmt 1               # src/parsing/command_redir_extract.c:235:6
	movq	-16(%rbp), %rax
	.loc	2 235 18 is_stmt 0              # src/parsing/command_redir_extract.c:235:18
	cmpl	$12, (%rax)
	.loc	2 235 28                        # src/parsing/command_redir_extract.c:235:28
	je	.LBB9_6
# %bb.5:
	.loc	2 235 31                        # src/parsing/command_redir_extract.c:235:31
	movq	-16(%rbp), %rax
	.loc	2 235 43                        # src/parsing/command_redir_extract.c:235:43
	cmpl	$9, (%rax)
.Ltmp75:
	.loc	2 235 6                         # src/parsing/command_redir_extract.c:235:6
	jne	.LBB9_7
.LBB9_6:
.Ltmp76:
	.loc	2 236 26 is_stmt 1              # src/parsing/command_redir_extract.c:236:26
	movq	-8(%rbp), %rdi
	.loc	2 236 37 is_stmt 0              # src/parsing/command_redir_extract.c:236:37
	movq	-16(%rbp), %rsi
	.loc	2 236 47                        # src/parsing/command_redir_extract.c:236:47
	movq	-24(%rbp), %rax
	.loc	2 236 46                        # src/parsing/command_redir_extract.c:236:46
	movq	(%rax), %rdx
	.loc	2 236 55                        # src/parsing/command_redir_extract.c:236:55
	addq	$8, %rdx
	.loc	2 236 3                         # src/parsing/command_redir_extract.c:236:3
	callq	extract_command_infile
	jmp	.LBB9_11
.LBB9_7:
.Ltmp77:
	.loc	2 237 11 is_stmt 1              # src/parsing/command_redir_extract.c:237:11
	movq	-16(%rbp), %rax
	.loc	2 237 23 is_stmt 0              # src/parsing/command_redir_extract.c:237:23
	cmpl	$10, (%rax)
	.loc	2 237 34                        # src/parsing/command_redir_extract.c:237:34
	je	.LBB9_9
# %bb.8:
	.loc	2 237 37                        # src/parsing/command_redir_extract.c:237:37
	movq	-16(%rbp), %rax
	.loc	2 237 49                        # src/parsing/command_redir_extract.c:237:49
	cmpl	$11, (%rax)
.Ltmp78:
	.loc	2 237 11                        # src/parsing/command_redir_extract.c:237:11
	jne	.LBB9_10
.LBB9_9:
.Ltmp79:
	.loc	2 238 27 is_stmt 1              # src/parsing/command_redir_extract.c:238:27
	movq	-16(%rbp), %rdi
	.loc	2 238 37 is_stmt 0              # src/parsing/command_redir_extract.c:238:37
	movq	-24(%rbp), %rax
	.loc	2 238 36                        # src/parsing/command_redir_extract.c:238:36
	movq	(%rax), %rsi
	.loc	2 238 45                        # src/parsing/command_redir_extract.c:238:45
	addq	$16, %rsi
	.loc	2 238 3                         # src/parsing/command_redir_extract.c:238:3
	callq	extract_command_outfile
.Ltmp80:
.LBB9_10:
	.loc	2 0 3                           # src/parsing/command_redir_extract.c:0:3
	jmp	.LBB9_11
.LBB9_11:
	.loc	2 239 1 is_stmt 1               # src/parsing/command_redir_extract.c:239:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp81:
.Lfunc_end9:
	.size	get_command_redir, .Lfunc_end9-get_command_redir
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/tmp/heredoc"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"> "
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bash: %s: %s\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"malloc"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"malloc:"
	.size	.L.str.4, 8

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
	.byte	5                               # DW_FORM_data2
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
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xd59 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	800                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	812                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string39                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	800                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xf1:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	793                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x10a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	819                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x118:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string203                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	800                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x127:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x13c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	1740                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x14b:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x160:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	3412                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x16e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	1740                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x17c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string205                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	1740                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x18b:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1a0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	3412                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1ae:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	3412                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1bc:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string205                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	1740                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1cb:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1e0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	819                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1ee:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	1740                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1fc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	3412                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x20b:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x220:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.long	819                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x22e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string206                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	1955                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x23c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	3412                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x24a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.long	1740                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x259:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin7                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x26e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	3417                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x27c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	1818                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x28a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string205                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	1818                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x299:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin8                   # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x2ae:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string206                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.long	1955                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2bc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.long	3417                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2ca:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	1818                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2d9:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin9                   # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x2ee:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.long	819                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2fc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string206                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1955                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x30a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	3422                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x319:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x320:0x5 DW_TAG_pointer_type
	.long	805                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x325:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x32c:0x7 DW_TAG_base_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x333:0x5 DW_TAG_pointer_type
	.long	824                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x338:0xb DW_TAG_typedef
	.long	835                             # DW_AT_type
	.long	.Linfo_string202                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x343:0xbe DW_TAG_structure_type
	.long	.Linfo_string201                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x34c:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x358:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x364:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x370:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	1046                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x37c:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x388:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x394:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3a0:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1046                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1051                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3b8:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1117                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3c4:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3d0:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1955                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3dc:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2069                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3e8:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2901                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3f4:0xc DW_TAG_member
	.long	.Linfo_string187                # DW_AT_name
	.long	3250                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x401:0x5 DW_TAG_pointer_type
	.long	1030                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x406:0xb DW_TAG_typedef
	.long	1041                            # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x411:0x5 DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x416:0x5 DW_TAG_pointer_type
	.long	800                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x41b:0x5 DW_TAG_pointer_type
	.long	1056                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x420:0xb DW_TAG_typedef
	.long	1067                            # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x42b:0x2d DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x433:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x43f:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x44b:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1112                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x458:0x5 DW_TAG_pointer_type
	.long	1067                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x45d:0x5 DW_TAG_pointer_type
	.long	1122                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x462:0xb DW_TAG_typedef
	.long	1133                            # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x46d:0x2d DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x475:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x481:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x48d:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1178                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x49a:0x5 DW_TAG_pointer_type
	.long	1133                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x49f:0x5 DW_TAG_pointer_type
	.long	1188                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4a4:0xb DW_TAG_typedef
	.long	1199                            # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x4af:0x2d DW_TAG_structure_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4b7:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	1244                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4c3:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1950                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4cf:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1950                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4dc:0x5 DW_TAG_pointer_type
	.long	1249                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4e1:0xb DW_TAG_typedef
	.long	1260                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x4ec:0x51 DW_TAG_structure_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4f4:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x500:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x50c:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x518:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x524:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1346                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x530:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1346                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x53d:0x5 DW_TAG_pointer_type
	.long	812                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x542:0x5 DW_TAG_pointer_type
	.long	1351                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x547:0xc9 DW_TAG_structure_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x54f:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x55b:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x567:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x573:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x57f:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x58b:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x597:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1552                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5a3:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1606                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5af:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1667                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5bb:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1740                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5c7:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1117                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5d3:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1818                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5df:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1896                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5eb:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1046                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5f7:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1346                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x603:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1346                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x610:0x5 DW_TAG_pointer_type
	.long	1557                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x615:0xb DW_TAG_typedef
	.long	1568                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x620:0x21 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x628:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x634:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x641:0x5 DW_TAG_pointer_type
	.long	1568                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x646:0x5 DW_TAG_pointer_type
	.long	1611                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x64b:0xb DW_TAG_typedef
	.long	1622                            # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x656:0x2d DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x65e:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x66a:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x676:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x683:0x5 DW_TAG_pointer_type
	.long	1672                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x688:0xb DW_TAG_typedef
	.long	1683                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x693:0x39 DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x69b:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6a7:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6b3:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1740                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6bf:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1818                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6cc:0x5 DW_TAG_pointer_type
	.long	1745                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6d1:0xb DW_TAG_typedef
	.long	1756                            # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x6dc:0x39 DW_TAG_structure_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6e4:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6f0:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6fc:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x708:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1813                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x715:0x5 DW_TAG_pointer_type
	.long	1756                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x71a:0x5 DW_TAG_pointer_type
	.long	1823                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x71f:0xb DW_TAG_typedef
	.long	1834                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x72a:0x39 DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x732:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x73e:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x74a:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x756:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1891                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x763:0x5 DW_TAG_pointer_type
	.long	1834                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x768:0x5 DW_TAG_pointer_type
	.long	1901                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x76d:0xb DW_TAG_typedef
	.long	1912                            # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x778:0x21 DW_TAG_structure_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x780:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x78c:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1945                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x799:0x5 DW_TAG_pointer_type
	.long	1912                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x79e:0x5 DW_TAG_pointer_type
	.long	1199                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7a3:0x5 DW_TAG_pointer_type
	.long	1960                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7a8:0xb DW_TAG_typedef
	.long	1971                            # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x7b3:0x5d DW_TAG_structure_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7bb:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7c7:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7d3:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7df:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	800                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7eb:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1896                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7f7:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	2064                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x803:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	2064                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x810:0x5 DW_TAG_pointer_type
	.long	1971                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x815:0x56 DW_TAG_structure_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x81d:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2089                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x829:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x82d:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2155                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x839:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2178                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x846:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2848                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x852:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x85e:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2895                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x86b:0xb DW_TAG_typedef
	.long	2166                            # DW_AT_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x876:0x5 DW_TAG_pointer_type
	.long	2171                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x87b:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x87c:0x5 DW_TAG_formal_parameter
	.long	812                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x882:0x5 DW_TAG_pointer_type
	.long	2183                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x887:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x888:0x5 DW_TAG_formal_parameter
	.long	812                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x88d:0x5 DW_TAG_formal_parameter
	.long	2200                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x892:0x5 DW_TAG_formal_parameter
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x898:0x5 DW_TAG_pointer_type
	.long	2205                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x89d:0xb DW_TAG_typedef
	.long	2216                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x8a8:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8ac:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8b8:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8c4:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8d0:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8dc:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2280                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x8e8:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8ec:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2727                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8f8:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2308                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x904:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x908:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2746                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x914:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2757                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x921:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2349                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x92d:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x931:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x93d:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x949:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2768                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x956:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2402                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x962:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x966:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2746                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x972:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2757                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x97e:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2768                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x98b:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2455                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x997:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x99b:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2746                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9a7:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2757                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9b3:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9bf:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2812                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9cb:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2812                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x9d8:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2532                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x9e4:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9e8:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9f4:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa00:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2572                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0xa0c:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa10:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2588                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0xa1c:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa20:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa2c:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xa39:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2837                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xa47:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2643                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0xa53:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa57:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2823                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa63:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xa70:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2684                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0xa7c:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa80:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa8c:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa98:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	169                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xaa7:0xc DW_TAG_array_type
	.long	812                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0xaac:0x6 DW_TAG_subrange_type
	.long	2739                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0xab3:0x7 DW_TAG_base_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0xaba:0xb DW_TAG_typedef
	.long	812                             # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xac5:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xad0:0xb DW_TAG_typedef
	.long	2779                            # DW_AT_type
	.long	.Linfo_string125                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0xadb:0x21 DW_TAG_union_type
	.long	.Linfo_string124                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xae3:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaef:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xafc:0xb DW_TAG_typedef
	.long	2823                            # DW_AT_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xb07:0x7 DW_TAG_base_type
	.long	.Linfo_string130                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xb0e:0x7 DW_TAG_base_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xb15:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb20:0xb DW_TAG_typedef
	.long	2859                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xb2b:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb2f:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2876                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xb3c:0xc DW_TAG_array_type
	.long	2888                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xb41:0x6 DW_TAG_subrange_type
	.long	2739                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xb48:0x7 DW_TAG_base_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xb4f:0x5 DW_TAG_pointer_type
	.long	2900                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xb54:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0xb55:0x5 DW_TAG_pointer_type
	.long	2906                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xb5a:0xbd DW_TAG_structure_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb62:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	3095                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb6e:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	3106                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb7a:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	3117                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb86:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	3128                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb92:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2757                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb9e:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	3139                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbaa:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbb6:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	3095                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbc2:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	3150                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbce:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	3161                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbda:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3172                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbe6:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	3183                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbf2:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3183                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbfe:0xc DW_TAG_member
	.long	.Linfo_string184                # DW_AT_name
	.long	3183                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc0a:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	3238                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc17:0xb DW_TAG_typedef
	.long	2888                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc22:0xb DW_TAG_typedef
	.long	2888                            # DW_AT_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc2d:0xb DW_TAG_typedef
	.long	2888                            # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc38:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc43:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc4e:0xb DW_TAG_typedef
	.long	2823                            # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc59:0xb DW_TAG_typedef
	.long	2823                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc64:0xb DW_TAG_typedef
	.long	2823                            # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xc6f:0x21 DW_TAG_structure_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xc77:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	3216                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc83:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3227                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc90:0xb DW_TAG_typedef
	.long	2823                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc9b:0xb DW_TAG_typedef
	.long	2823                            # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xca6:0xc DW_TAG_array_type
	.long	3227                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xcab:0x6 DW_TAG_subrange_type
	.long	2739                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xcb2:0x5 DW_TAG_pointer_type
	.long	3255                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xcb7:0x69 DW_TAG_structure_type
	.long	.Linfo_string200                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xcbf:0xc DW_TAG_member
	.long	.Linfo_string188                # DW_AT_name
	.long	3360                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xccb:0xc DW_TAG_member
	.long	.Linfo_string190                # DW_AT_name
	.long	3360                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xcd7:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	3360                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xce3:0xc DW_TAG_member
	.long	.Linfo_string192                # DW_AT_name
	.long	3360                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xcef:0xc DW_TAG_member
	.long	.Linfo_string193                # DW_AT_name
	.long	3371                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xcfb:0xc DW_TAG_member
	.long	.Linfo_string196                # DW_AT_name
	.long	3389                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xd07:0xc DW_TAG_member
	.long	.Linfo_string197                # DW_AT_name
	.long	3401                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xd13:0xc DW_TAG_member
	.long	.Linfo_string199                # DW_AT_name
	.long	3401                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xd20:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string189                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xd2b:0xb DW_TAG_typedef
	.long	3382                            # DW_AT_type
	.long	.Linfo_string195                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xd36:0x7 DW_TAG_base_type
	.long	.Linfo_string194                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0xd3d:0xc DW_TAG_array_type
	.long	3371                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xd42:0x6 DW_TAG_subrange_type
	.long	2739                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xd49:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string198                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xd54:0x5 DW_TAG_pointer_type
	.long	1740                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd59:0x5 DW_TAG_pointer_type
	.long	1818                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd5e:0x5 DW_TAG_pointer_type
	.long	1667                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_redir_extract.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=74
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=132
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=145
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=159
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=173
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=186
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=199
.Linfo_string9:
	.asciz	"expansion"                     # string offset=211
.Linfo_string10:
	.asciz	"operator"                      # string offset=221
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=230
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=239
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=247
.Linfo_string14:
	.asciz	"outfile"                       # string offset=255
.Linfo_string15:
	.asciz	"append"                        # string offset=263
.Linfo_string16:
	.asciz	"infile"                        # string offset=270
.Linfo_string17:
	.asciz	"and_if"                        # string offset=277
.Linfo_string18:
	.asciz	"or_if"                         # string offset=284
.Linfo_string19:
	.asciz	"word"                          # string offset=290
.Linfo_string20:
	.asciz	"name"                          # string offset=295
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=300
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=316
.Linfo_string23:
	.asciz	"e_token"                       # string offset=326
.Linfo_string24:
	.asciz	"get_redir_heredoc"             # string offset=334
.Linfo_string25:
	.asciz	"is_file_accessible"            # string offset=352
.Linfo_string26:
	.asciz	"_Bool"                         # string offset=371
.Linfo_string27:
	.asciz	"process_redirection"           # string offset=377
.Linfo_string28:
	.asciz	"manage_infile_list"            # string offset=397
.Linfo_string29:
	.asciz	"add_infile_to_list"            # string offset=416
.Linfo_string30:
	.asciz	"handle_infile_token"           # string offset=435
.Linfo_string31:
	.asciz	"extract_command_infile"        # string offset=455
.Linfo_string32:
	.asciz	"manage_outfile_list"           # string offset=478
.Linfo_string33:
	.asciz	"extract_command_outfile"       # string offset=498
.Linfo_string34:
	.asciz	"get_command_redir"             # string offset=522
.Linfo_string35:
	.asciz	"delimiter"                     # string offset=540
.Linfo_string36:
	.asciz	"char"                          # string offset=550
.Linfo_string37:
	.asciz	"fd"                            # string offset=555
.Linfo_string38:
	.asciz	"int"                           # string offset=558
.Linfo_string39:
	.asciz	"buffer"                        # string offset=562
.Linfo_string40:
	.asciz	"minishell"                     # string offset=569
.Linfo_string41:
	.asciz	"dir"                           # string offset=579
.Linfo_string42:
	.asciz	"__dirstream"                   # string offset=583
.Linfo_string43:
	.asciz	"DIR"                           # string offset=595
.Linfo_string44:
	.asciz	"state"                         # string offset=599
.Linfo_string45:
	.asciz	"input"                         # string offset=605
.Linfo_string46:
	.asciz	"path"                          # string offset=611
.Linfo_string47:
	.asciz	"prompt"                        # string offset=616
.Linfo_string48:
	.asciz	"operator_nbr"                  # string offset=623
.Linfo_string49:
	.asciz	"env_array"                     # string offset=636
.Linfo_string50:
	.asciz	"env"                           # string offset=646
.Linfo_string51:
	.asciz	"value"                         # string offset=650
.Linfo_string52:
	.asciz	"next"                          # string offset=656
.Linfo_string53:
	.asciz	"s_env"                         # string offset=661
.Linfo_string54:
	.asciz	"t_env"                         # string offset=667
.Linfo_string55:
	.asciz	"local"                         # string offset=673
.Linfo_string56:
	.asciz	"s_var"                         # string offset=679
.Linfo_string57:
	.asciz	"t_var"                         # string offset=685
.Linfo_string58:
	.asciz	"syntax_tree"                   # string offset=691
.Linfo_string59:
	.asciz	"node"                          # string offset=703
.Linfo_string60:
	.asciz	"id"                            # string offset=708
.Linfo_string61:
	.asciz	"type"                          # string offset=711
.Linfo_string62:
	.asciz	"pipe_fd"                       # string offset=716
.Linfo_string63:
	.asciz	"left"                          # string offset=724
.Linfo_string64:
	.asciz	"pid"                           # string offset=729
.Linfo_string65:
	.asciz	"wstatus"                       # string offset=733
.Linfo_string66:
	.asciz	"arg"                           # string offset=741
.Linfo_string67:
	.asciz	"s_arg"                         # string offset=745
.Linfo_string68:
	.asciz	"t_arg"                         # string offset=751
.Linfo_string69:
	.asciz	"pipe"                          # string offset=757
.Linfo_string70:
	.asciz	"to_close"                      # string offset=762
.Linfo_string71:
	.asciz	"write"                         # string offset=771
.Linfo_string72:
	.asciz	"read"                          # string offset=777
.Linfo_string73:
	.asciz	"s_pipe"                        # string offset=782
.Linfo_string74:
	.asciz	"t_pipe"                        # string offset=789
.Linfo_string75:
	.asciz	"redir"                         # string offset=796
.Linfo_string76:
	.asciz	"in_fd"                         # string offset=802
.Linfo_string77:
	.asciz	"out_fd"                        # string offset=808
.Linfo_string78:
	.asciz	"s_infile"                      # string offset=815
.Linfo_string79:
	.asciz	"t_infile"                      # string offset=824
.Linfo_string80:
	.asciz	"s_outfile"                     # string offset=833
.Linfo_string81:
	.asciz	"t_outfile"                     # string offset=843
.Linfo_string82:
	.asciz	"s_redir"                       # string offset=853
.Linfo_string83:
	.asciz	"t_redir"                       # string offset=861
.Linfo_string84:
	.asciz	"assign"                        # string offset=869
.Linfo_string85:
	.asciz	"s_expan"                       # string offset=876
.Linfo_string86:
	.asciz	"t_expan"                       # string offset=884
.Linfo_string87:
	.asciz	"arg_array"                     # string offset=892
.Linfo_string88:
	.asciz	"prev"                          # string offset=902
.Linfo_string89:
	.asciz	"s_cmd"                         # string offset=907
.Linfo_string90:
	.asciz	"right"                         # string offset=913
.Linfo_string91:
	.asciz	"s_ast_node"                    # string offset=919
.Linfo_string92:
	.asciz	"t_ast_node"                    # string offset=930
.Linfo_string93:
	.asciz	"s_ast"                         # string offset=941
.Linfo_string94:
	.asciz	"t_ast"                         # string offset=947
.Linfo_string95:
	.asciz	"token_stream"                  # string offset=953
.Linfo_string96:
	.asciz	"quote_nbr"                     # string offset=966
.Linfo_string97:
	.asciz	"length"                        # string offset=976
.Linfo_string98:
	.asciz	"lexeme"                        # string offset=983
.Linfo_string99:
	.asciz	"s_token"                       # string offset=990
.Linfo_string100:
	.asciz	"t_token"                       # string offset=998
.Linfo_string101:
	.asciz	"sighandler"                    # string offset=1006
.Linfo_string102:
	.asciz	"__sigaction_handler"           # string offset=1017
.Linfo_string103:
	.asciz	"sa_handler"                    # string offset=1037
.Linfo_string104:
	.asciz	"__sighandler_t"                # string offset=1048
.Linfo_string105:
	.asciz	"sa_sigaction"                  # string offset=1063
.Linfo_string106:
	.asciz	"si_signo"                      # string offset=1076
.Linfo_string107:
	.asciz	"si_errno"                      # string offset=1085
.Linfo_string108:
	.asciz	"si_code"                       # string offset=1094
.Linfo_string109:
	.asciz	"__pad0"                        # string offset=1102
.Linfo_string110:
	.asciz	"_sifields"                     # string offset=1109
.Linfo_string111:
	.asciz	"_pad"                          # string offset=1119
.Linfo_string112:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1124
.Linfo_string113:
	.asciz	"_kill"                         # string offset=1144
.Linfo_string114:
	.asciz	"si_pid"                        # string offset=1150
.Linfo_string115:
	.asciz	"__pid_t"                       # string offset=1157
.Linfo_string116:
	.asciz	"si_uid"                        # string offset=1165
.Linfo_string117:
	.asciz	"__uid_t"                       # string offset=1172
.Linfo_string118:
	.asciz	"_timer"                        # string offset=1180
.Linfo_string119:
	.asciz	"si_tid"                        # string offset=1187
.Linfo_string120:
	.asciz	"si_overrun"                    # string offset=1194
.Linfo_string121:
	.asciz	"si_sigval"                     # string offset=1205
.Linfo_string122:
	.asciz	"sival_int"                     # string offset=1215
.Linfo_string123:
	.asciz	"sival_ptr"                     # string offset=1225
.Linfo_string124:
	.asciz	"sigval"                        # string offset=1235
.Linfo_string125:
	.asciz	"__sigval_t"                    # string offset=1242
.Linfo_string126:
	.asciz	"_rt"                           # string offset=1253
.Linfo_string127:
	.asciz	"_sigchld"                      # string offset=1257
.Linfo_string128:
	.asciz	"si_status"                     # string offset=1266
.Linfo_string129:
	.asciz	"si_utime"                      # string offset=1276
.Linfo_string130:
	.asciz	"long int"                      # string offset=1285
.Linfo_string131:
	.asciz	"__clock_t"                     # string offset=1294
.Linfo_string132:
	.asciz	"si_stime"                      # string offset=1304
.Linfo_string133:
	.asciz	"_sigfault"                     # string offset=1313
.Linfo_string134:
	.asciz	"si_addr"                       # string offset=1323
.Linfo_string135:
	.asciz	"si_addr_lsb"                   # string offset=1331
.Linfo_string136:
	.asciz	"short"                         # string offset=1343
.Linfo_string137:
	.asciz	"_bounds"                       # string offset=1349
.Linfo_string138:
	.asciz	"_addr_bnd"                     # string offset=1357
.Linfo_string139:
	.asciz	"_lower"                        # string offset=1367
.Linfo_string140:
	.asciz	"_upper"                        # string offset=1374
.Linfo_string141:
	.asciz	"_pkey"                         # string offset=1381
.Linfo_string142:
	.asciz	"__uint32_t"                    # string offset=1387
.Linfo_string143:
	.asciz	"_sigpoll"                      # string offset=1398
.Linfo_string144:
	.asciz	"si_band"                       # string offset=1407
.Linfo_string145:
	.asciz	"si_fd"                         # string offset=1415
.Linfo_string146:
	.asciz	"_sigsys"                       # string offset=1421
.Linfo_string147:
	.asciz	"_call_addr"                    # string offset=1429
.Linfo_string148:
	.asciz	"_syscall"                      # string offset=1440
.Linfo_string149:
	.asciz	"_arch"                         # string offset=1449
.Linfo_string150:
	.asciz	"siginfo_t"                     # string offset=1455
.Linfo_string151:
	.asciz	"sa_mask"                       # string offset=1465
.Linfo_string152:
	.asciz	"__val"                         # string offset=1473
.Linfo_string153:
	.asciz	"long unsigned int"             # string offset=1479
.Linfo_string154:
	.asciz	"__sigset_t"                    # string offset=1497
.Linfo_string155:
	.asciz	"sa_flags"                      # string offset=1508
.Linfo_string156:
	.asciz	"sa_restorer"                   # string offset=1517
.Linfo_string157:
	.asciz	"sigaction"                     # string offset=1529
.Linfo_string158:
	.asciz	"statbuf"                       # string offset=1539
.Linfo_string159:
	.asciz	"st_dev"                        # string offset=1547
.Linfo_string160:
	.asciz	"__dev_t"                       # string offset=1554
.Linfo_string161:
	.asciz	"st_ino"                        # string offset=1562
.Linfo_string162:
	.asciz	"__ino_t"                       # string offset=1569
.Linfo_string163:
	.asciz	"st_nlink"                      # string offset=1577
.Linfo_string164:
	.asciz	"__nlink_t"                     # string offset=1586
.Linfo_string165:
	.asciz	"st_mode"                       # string offset=1596
.Linfo_string166:
	.asciz	"__mode_t"                      # string offset=1604
.Linfo_string167:
	.asciz	"st_uid"                        # string offset=1613
.Linfo_string168:
	.asciz	"st_gid"                        # string offset=1620
.Linfo_string169:
	.asciz	"__gid_t"                       # string offset=1627
.Linfo_string170:
	.asciz	"st_rdev"                       # string offset=1635
.Linfo_string171:
	.asciz	"st_size"                       # string offset=1643
.Linfo_string172:
	.asciz	"__off_t"                       # string offset=1651
.Linfo_string173:
	.asciz	"st_blksize"                    # string offset=1659
.Linfo_string174:
	.asciz	"__blksize_t"                   # string offset=1670
.Linfo_string175:
	.asciz	"st_blocks"                     # string offset=1682
.Linfo_string176:
	.asciz	"__blkcnt_t"                    # string offset=1692
.Linfo_string177:
	.asciz	"st_atim"                       # string offset=1703
.Linfo_string178:
	.asciz	"tv_sec"                        # string offset=1711
.Linfo_string179:
	.asciz	"__time_t"                      # string offset=1718
.Linfo_string180:
	.asciz	"tv_nsec"                       # string offset=1727
.Linfo_string181:
	.asciz	"__syscall_slong_t"             # string offset=1735
.Linfo_string182:
	.asciz	"timespec"                      # string offset=1753
.Linfo_string183:
	.asciz	"st_mtim"                       # string offset=1762
.Linfo_string184:
	.asciz	"st_ctim"                       # string offset=1770
.Linfo_string185:
	.asciz	"__glibc_reserved"              # string offset=1778
.Linfo_string186:
	.asciz	"stat"                          # string offset=1795
.Linfo_string187:
	.asciz	"term"                          # string offset=1800
.Linfo_string188:
	.asciz	"c_iflag"                       # string offset=1805
.Linfo_string189:
	.asciz	"tcflag_t"                      # string offset=1813
.Linfo_string190:
	.asciz	"c_oflag"                       # string offset=1822
.Linfo_string191:
	.asciz	"c_cflag"                       # string offset=1830
.Linfo_string192:
	.asciz	"c_lflag"                       # string offset=1838
.Linfo_string193:
	.asciz	"c_line"                        # string offset=1846
.Linfo_string194:
	.asciz	"unsigned char"                 # string offset=1853
.Linfo_string195:
	.asciz	"cc_t"                          # string offset=1867
.Linfo_string196:
	.asciz	"c_cc"                          # string offset=1872
.Linfo_string197:
	.asciz	"c_ispeed"                      # string offset=1877
.Linfo_string198:
	.asciz	"speed_t"                       # string offset=1886
.Linfo_string199:
	.asciz	"c_ospeed"                      # string offset=1894
.Linfo_string200:
	.asciz	"termios"                       # string offset=1903
.Linfo_string201:
	.asciz	"s_minishell"                   # string offset=1911
.Linfo_string202:
	.asciz	"t_minishell"                   # string offset=1923
.Linfo_string203:
	.asciz	"filename"                      # string offset=1935
.Linfo_string204:
	.asciz	"new"                           # string offset=1944
.Linfo_string205:
	.asciz	"index"                         # string offset=1948
.Linfo_string206:
	.asciz	"token"                         # string offset=1954
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_redir_heredoc
	.addrsig_sym open
	.addrsig_sym write
	.addrsig_sym get_next_line
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strlen
	.addrsig_sym free
	.addrsig_sym close
	.addrsig_sym is_file_accessible
	.addrsig_sym access
	.addrsig_sym ft_printf
	.addrsig_sym strerror
	.addrsig_sym __errno_location
	.addrsig_sym add_infile_to_list
	.addrsig_sym handle_infile_token
	.addrsig_sym extract_command_infile
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym get_redir_filename
	.addrsig_sym manage_outfile_list
	.addrsig_sym extract_command_outfile
	.section	.debug_line,"",@progbits
.Lline_table_start0:

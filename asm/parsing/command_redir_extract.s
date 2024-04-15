	.text
	.file	"command_redir_extract.c"
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/parsing/../../include/minishell.h"
	.globl	get_redir_heredoc               # -- Begin function get_redir_heredoc
	.p2align	4, 0x90
	.type	get_redir_heredoc,@function
get_redir_heredoc:                      # @get_redir_heredoc
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/minishell" "src/parsing/command_redir_extract.c"
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
	.globl	extract_command_infile          # -- Begin function extract_command_infile
	.p2align	4, 0x90
	.type	extract_command_infile,@function
extract_command_infile:                 # @extract_command_infile
.Lfunc_begin4:
	.loc	2 109 0                         # src/parsing/command_redir_extract.c:109:0
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
	.loc	2 112 8 prologue_end            # src/parsing/command_redir_extract.c:112:8
	movl	$24, %edi
	callq	malloc
	.loc	2 112 6 is_stmt 0               # src/parsing/command_redir_extract.c:112:6
	movq	%rax, -32(%rbp)
.Ltmp29:
	.loc	2 113 7 is_stmt 1               # src/parsing/command_redir_extract.c:113:7
	cmpq	$0, -32(%rbp)
.Ltmp30:
	.loc	2 113 6 is_stmt 0               # src/parsing/command_redir_extract.c:113:6
	jne	.LBB4_2
# %bb.1:
.Ltmp31:
	.loc	2 115 3 is_stmt 1               # src/parsing/command_redir_extract.c:115:3
	movabsq	$.L.str.3, %rdi
	callq	perror
	.loc	2 116 3                         # src/parsing/command_redir_extract.c:116:3
	jmp	.LBB4_6
.Ltmp32:
.LBB4_2:
	.loc	2 118 2                         # src/parsing/command_redir_extract.c:118:2
	movq	-32(%rbp), %rax
	.loc	2 118 12 is_stmt 0              # src/parsing/command_redir_extract.c:118:12
	movq	$0, 16(%rax)
	.loc	2 119 14 is_stmt 1              # src/parsing/command_redir_extract.c:119:14
	movq	-16(%rbp), %rax
	.loc	2 119 21 is_stmt 0              # src/parsing/command_redir_extract.c:119:21
	movl	(%rax), %ecx
	.loc	2 119 2                         # src/parsing/command_redir_extract.c:119:2
	movq	-32(%rbp), %rax
	.loc	2 119 12                        # src/parsing/command_redir_extract.c:119:12
	movl	%ecx, 4(%rax)
	.loc	2 120 33 is_stmt 1              # src/parsing/command_redir_extract.c:120:33
	movq	-16(%rbp), %rax
	.loc	2 120 40 is_stmt 0              # src/parsing/command_redir_extract.c:120:40
	movq	16(%rax), %rdi
	.loc	2 120 48                        # src/parsing/command_redir_extract.c:120:48
	movq	-32(%rbp), %rax
	.loc	2 120 53                        # src/parsing/command_redir_extract.c:120:53
	movl	4(%rax), %esi
	.loc	2 120 14                        # src/parsing/command_redir_extract.c:120:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 120 2                         # src/parsing/command_redir_extract.c:120:2
	movq	-32(%rbp), %rax
	.loc	2 120 12                        # src/parsing/command_redir_extract.c:120:12
	movq	%rcx, 8(%rax)
	.loc	2 121 22 is_stmt 1              # src/parsing/command_redir_extract.c:121:22
	movq	-32(%rbp), %rdi
	.loc	2 121 2 is_stmt 0               # src/parsing/command_redir_extract.c:121:2
	callq	process_redirection
.Ltmp33:
	.loc	2 122 6 is_stmt 1               # src/parsing/command_redir_extract.c:122:6
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	.loc	2 122 16 is_stmt 0              # src/parsing/command_redir_extract.c:122:16
	je	.LBB4_5
# %bb.3:
	.loc	2 122 38                        # src/parsing/command_redir_extract.c:122:38
	movq	-8(%rbp), %rdi
	.loc	2 122 49                        # src/parsing/command_redir_extract.c:122:49
	movq	-32(%rbp), %rax
	.loc	2 122 54                        # src/parsing/command_redir_extract.c:122:54
	movq	8(%rax), %rsi
	.loc	2 122 19                        # src/parsing/command_redir_extract.c:122:19
	callq	is_file_accessible
.Ltmp34:
	.loc	2 122 6                         # src/parsing/command_redir_extract.c:122:6
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_5
.LBB4_4:
.Ltmp35:
	.loc	2 123 22 is_stmt 1              # src/parsing/command_redir_extract.c:123:22
	movq	-24(%rbp), %rdi
	.loc	2 123 30 is_stmt 0              # src/parsing/command_redir_extract.c:123:30
	movq	-32(%rbp), %rsi
	.loc	2 123 3                         # src/parsing/command_redir_extract.c:123:3
	callq	manage_infile_list
	jmp	.LBB4_6
.LBB4_5:
.Ltmp36:
	.loc	2 126 8 is_stmt 1               # src/parsing/command_redir_extract.c:126:8
	movq	-32(%rbp), %rax
	.loc	2 126 13 is_stmt 0              # src/parsing/command_redir_extract.c:126:13
	movq	8(%rax), %rdi
	.loc	2 126 3                         # src/parsing/command_redir_extract.c:126:3
	callq	free
	.loc	2 127 8 is_stmt 1               # src/parsing/command_redir_extract.c:127:8
	movq	-32(%rbp), %rdi
	.loc	2 127 3 is_stmt 0               # src/parsing/command_redir_extract.c:127:3
	callq	free
.Ltmp37:
.LBB4_6:
	.loc	2 129 1 is_stmt 1               # src/parsing/command_redir_extract.c:129:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp38:
.Lfunc_end4:
	.size	extract_command_infile, .Lfunc_end4-extract_command_infile
	.cfi_endproc
                                        # -- End function
	.globl	manage_outfile_list             # -- Begin function manage_outfile_list
	.p2align	4, 0x90
	.type	manage_outfile_list,@function
manage_outfile_list:                    # @manage_outfile_list
.Lfunc_begin5:
	.loc	2 162 0                         # src/parsing/command_redir_extract.c:162:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp39:
	.loc	2 165 11 prologue_end           # src/parsing/command_redir_extract.c:165:11
	movq	-8(%rbp), %rax
	.loc	2 165 10 is_stmt 0              # src/parsing/command_redir_extract.c:165:10
	movq	(%rax), %rax
	.loc	2 165 8                         # src/parsing/command_redir_extract.c:165:8
	movq	%rax, -24(%rbp)
.Ltmp40:
	.loc	2 166 6 is_stmt 1               # src/parsing/command_redir_extract.c:166:6
	cmpq	$0, -24(%rbp)
.Ltmp41:
	.loc	2 166 6 is_stmt 0               # src/parsing/command_redir_extract.c:166:6
	je	.LBB5_5
# %bb.1:
.Ltmp42:
	.loc	2 168 3 is_stmt 1               # src/parsing/command_redir_extract.c:168:3
	jmp	.LBB5_2
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	.loc	2 168 10 is_stmt 0              # src/parsing/command_redir_extract.c:168:10
	movq	-24(%rbp), %rax
	.loc	2 168 3                         # src/parsing/command_redir_extract.c:168:3
	cmpq	$0, 16(%rax)
	je	.LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	.loc	2 169 12 is_stmt 1              # src/parsing/command_redir_extract.c:169:12
	movq	-24(%rbp), %rax
	.loc	2 169 19 is_stmt 0              # src/parsing/command_redir_extract.c:169:19
	movq	16(%rax), %rax
	.loc	2 169 10                        # src/parsing/command_redir_extract.c:169:10
	movq	%rax, -24(%rbp)
	.loc	2 168 3 is_stmt 1               # src/parsing/command_redir_extract.c:168:3
	jmp	.LBB5_2
.LBB5_4:
	.loc	2 170 17                        # src/parsing/command_redir_extract.c:170:17
	movq	-16(%rbp), %rcx
	.loc	2 170 3 is_stmt 0               # src/parsing/command_redir_extract.c:170:3
	movq	-24(%rbp), %rax
	.loc	2 170 15                        # src/parsing/command_redir_extract.c:170:15
	movq	%rcx, 16(%rax)
	.loc	2 171 2 is_stmt 1               # src/parsing/command_redir_extract.c:171:2
	jmp	.LBB5_6
.Ltmp43:
.LBB5_5:
	.loc	2 173 14                        # src/parsing/command_redir_extract.c:173:14
	movq	-16(%rbp), %rcx
	.loc	2 173 4 is_stmt 0               # src/parsing/command_redir_extract.c:173:4
	movq	-8(%rbp), %rax
	.loc	2 173 12                        # src/parsing/command_redir_extract.c:173:12
	movq	%rcx, (%rax)
.Ltmp44:
.LBB5_6:
	.loc	2 174 1 is_stmt 1               # src/parsing/command_redir_extract.c:174:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp45:
.Lfunc_end5:
	.size	manage_outfile_list, .Lfunc_end5-manage_outfile_list
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_outfile         # -- Begin function extract_command_outfile
	.p2align	4, 0x90
	.type	extract_command_outfile,@function
extract_command_outfile:                # @extract_command_outfile
.Lfunc_begin6:
	.loc	2 177 0                         # src/parsing/command_redir_extract.c:177:0
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
.Ltmp46:
	.loc	2 180 8 prologue_end            # src/parsing/command_redir_extract.c:180:8
	movl	$24, %edi
	callq	malloc
	.loc	2 180 6 is_stmt 0               # src/parsing/command_redir_extract.c:180:6
	movq	%rax, -24(%rbp)
.Ltmp47:
	.loc	2 181 7 is_stmt 1               # src/parsing/command_redir_extract.c:181:7
	cmpq	$0, -24(%rbp)
.Ltmp48:
	.loc	2 181 6 is_stmt 0               # src/parsing/command_redir_extract.c:181:6
	jne	.LBB6_2
# %bb.1:
.Ltmp49:
	.loc	2 183 3 is_stmt 1               # src/parsing/command_redir_extract.c:183:3
	movabsq	$.L.str.3, %rdi
	callq	perror
	.loc	2 184 3                         # src/parsing/command_redir_extract.c:184:3
	jmp	.LBB6_3
.Ltmp50:
.LBB6_2:
	.loc	2 186 2                         # src/parsing/command_redir_extract.c:186:2
	movq	-24(%rbp), %rax
	.loc	2 186 12 is_stmt 0              # src/parsing/command_redir_extract.c:186:12
	movq	$0, 16(%rax)
	.loc	2 187 14 is_stmt 1              # src/parsing/command_redir_extract.c:187:14
	movq	-8(%rbp), %rax
	.loc	2 187 21 is_stmt 0              # src/parsing/command_redir_extract.c:187:21
	movl	(%rax), %ecx
	.loc	2 187 2                         # src/parsing/command_redir_extract.c:187:2
	movq	-24(%rbp), %rax
	.loc	2 187 12                        # src/parsing/command_redir_extract.c:187:12
	movl	%ecx, 4(%rax)
	.loc	2 188 33 is_stmt 1              # src/parsing/command_redir_extract.c:188:33
	movq	-8(%rbp), %rax
	.loc	2 188 40 is_stmt 0              # src/parsing/command_redir_extract.c:188:40
	movq	16(%rax), %rdi
	.loc	2 188 48                        # src/parsing/command_redir_extract.c:188:48
	movq	-24(%rbp), %rax
	.loc	2 188 53                        # src/parsing/command_redir_extract.c:188:53
	movl	4(%rax), %esi
	.loc	2 188 14                        # src/parsing/command_redir_extract.c:188:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 188 2                         # src/parsing/command_redir_extract.c:188:2
	movq	-24(%rbp), %rax
	.loc	2 188 12                        # src/parsing/command_redir_extract.c:188:12
	movq	%rcx, 8(%rax)
	.loc	2 189 22 is_stmt 1              # src/parsing/command_redir_extract.c:189:22
	movq	-16(%rbp), %rdi
	.loc	2 189 31 is_stmt 0              # src/parsing/command_redir_extract.c:189:31
	movq	-24(%rbp), %rsi
	.loc	2 189 2                         # src/parsing/command_redir_extract.c:189:2
	callq	manage_outfile_list
.LBB6_3:
	.loc	2 190 1 is_stmt 1               # src/parsing/command_redir_extract.c:190:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp51:
.Lfunc_end6:
	.size	extract_command_outfile, .Lfunc_end6-extract_command_outfile
	.cfi_endproc
                                        # -- End function
	.globl	get_command_redir               # -- Begin function get_command_redir
	.p2align	4, 0x90
	.type	get_command_redir,@function
get_command_redir:                      # @get_command_redir
.Lfunc_begin7:
	.loc	2 194 0                         # src/parsing/command_redir_extract.c:194:0
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
.Ltmp52:
	.loc	2 195 8 prologue_end            # src/parsing/command_redir_extract.c:195:8
	movq	-24(%rbp), %rax
	.loc	2 195 15 is_stmt 0              # src/parsing/command_redir_extract.c:195:15
	cmpq	$0, (%rax)
.Ltmp53:
	.loc	2 195 6                         # src/parsing/command_redir_extract.c:195:6
	jne	.LBB7_4
# %bb.1:
.Ltmp54:
	.loc	2 197 14 is_stmt 1              # src/parsing/command_redir_extract.c:197:14
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 197 5 is_stmt 0               # src/parsing/command_redir_extract.c:197:5
	movq	-24(%rbp), %rax
	.loc	2 197 12                        # src/parsing/command_redir_extract.c:197:12
	movq	%rcx, (%rax)
.Ltmp55:
	.loc	2 198 10 is_stmt 1              # src/parsing/command_redir_extract.c:198:10
	movq	-24(%rbp), %rax
	.loc	2 198 8 is_stmt 0               # src/parsing/command_redir_extract.c:198:8
	cmpq	$0, (%rax)
.Ltmp56:
	.loc	2 198 7                         # src/parsing/command_redir_extract.c:198:7
	jne	.LBB7_3
# %bb.2:
.Ltmp57:
	.loc	2 199 4 is_stmt 1               # src/parsing/command_redir_extract.c:199:4
	movabsq	$.L.str.4, %rdi
	callq	perror
.Ltmp58:
.LBB7_3:
	.loc	2 200 5                         # src/parsing/command_redir_extract.c:200:5
	movq	-24(%rbp), %rax
	.loc	2 200 4 is_stmt 0               # src/parsing/command_redir_extract.c:200:4
	movq	(%rax), %rax
	.loc	2 200 20                        # src/parsing/command_redir_extract.c:200:20
	movq	$0, 8(%rax)
	.loc	2 201 5 is_stmt 1               # src/parsing/command_redir_extract.c:201:5
	movq	-24(%rbp), %rax
	.loc	2 201 4 is_stmt 0               # src/parsing/command_redir_extract.c:201:4
	movq	(%rax), %rax
	.loc	2 201 21                        # src/parsing/command_redir_extract.c:201:21
	movq	$0, 16(%rax)
.Ltmp59:
.LBB7_4:
	.loc	2 203 6 is_stmt 1               # src/parsing/command_redir_extract.c:203:6
	movq	-16(%rbp), %rax
	.loc	2 203 18 is_stmt 0              # src/parsing/command_redir_extract.c:203:18
	cmpl	$12, (%rax)
	.loc	2 203 28                        # src/parsing/command_redir_extract.c:203:28
	je	.LBB7_6
# %bb.5:
	.loc	2 203 31                        # src/parsing/command_redir_extract.c:203:31
	movq	-16(%rbp), %rax
	.loc	2 203 43                        # src/parsing/command_redir_extract.c:203:43
	cmpl	$9, (%rax)
.Ltmp60:
	.loc	2 203 6                         # src/parsing/command_redir_extract.c:203:6
	jne	.LBB7_7
.LBB7_6:
.Ltmp61:
	.loc	2 204 26 is_stmt 1              # src/parsing/command_redir_extract.c:204:26
	movq	-8(%rbp), %rdi
	.loc	2 204 37 is_stmt 0              # src/parsing/command_redir_extract.c:204:37
	movq	-16(%rbp), %rsi
	.loc	2 204 47                        # src/parsing/command_redir_extract.c:204:47
	movq	-24(%rbp), %rax
	.loc	2 204 46                        # src/parsing/command_redir_extract.c:204:46
	movq	(%rax), %rdx
	.loc	2 204 55                        # src/parsing/command_redir_extract.c:204:55
	addq	$8, %rdx
	.loc	2 204 3                         # src/parsing/command_redir_extract.c:204:3
	callq	extract_command_infile
	jmp	.LBB7_11
.LBB7_7:
.Ltmp62:
	.loc	2 205 11 is_stmt 1              # src/parsing/command_redir_extract.c:205:11
	movq	-16(%rbp), %rax
	.loc	2 205 23 is_stmt 0              # src/parsing/command_redir_extract.c:205:23
	cmpl	$10, (%rax)
	.loc	2 205 34                        # src/parsing/command_redir_extract.c:205:34
	je	.LBB7_9
# %bb.8:
	.loc	2 205 37                        # src/parsing/command_redir_extract.c:205:37
	movq	-16(%rbp), %rax
	.loc	2 205 49                        # src/parsing/command_redir_extract.c:205:49
	cmpl	$11, (%rax)
.Ltmp63:
	.loc	2 205 11                        # src/parsing/command_redir_extract.c:205:11
	jne	.LBB7_10
.LBB7_9:
.Ltmp64:
	.loc	2 206 27 is_stmt 1              # src/parsing/command_redir_extract.c:206:27
	movq	-16(%rbp), %rdi
	.loc	2 206 37 is_stmt 0              # src/parsing/command_redir_extract.c:206:37
	movq	-24(%rbp), %rax
	.loc	2 206 36                        # src/parsing/command_redir_extract.c:206:36
	movq	(%rax), %rsi
	.loc	2 206 45                        # src/parsing/command_redir_extract.c:206:45
	addq	$16, %rsi
	.loc	2 206 3                         # src/parsing/command_redir_extract.c:206:3
	callq	extract_command_outfile
.Ltmp65:
.LBB7_10:
	.loc	2 0 3                           # src/parsing/command_redir_extract.c:0:3
	jmp	.LBB7_11
.LBB7_11:
	.loc	2 207 1 is_stmt 1               # src/parsing/command_redir_extract.c:207:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp66:
.Lfunc_end7:
	.size	get_command_redir, .Lfunc_end7-get_command_redir
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
	.byte	1                               # Abbrev [1] 0xb:0xcd9 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	672                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	684                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	672                             # DW_AT_type
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
	.long	665                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x10a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	691                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x118:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string201                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	672                             # DW_AT_type
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
	.long	.Linfo_string202                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	1612                            # DW_AT_type
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
	.long	3284                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x16e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string202                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	1612                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x17c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string203                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	1612                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x18b:0x4e DW_TAG_subprogram
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
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	691                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1ae:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	1827                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1bc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	3284                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1ca:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string202                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	1612                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1d9:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1ee:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.long	3289                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1fc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string202                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x20a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string203                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x219:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x22e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.long	1827                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x23c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.long	3289                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x24a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string202                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x259:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin7                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x26e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.long	691                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x27c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string204                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	1827                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x28a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string73                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	3294                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x299:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x2a0:0x5 DW_TAG_pointer_type
	.long	677                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2a5:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x2ac:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x2b3:0x5 DW_TAG_pointer_type
	.long	696                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b8:0xb DW_TAG_typedef
	.long	707                             # DW_AT_type
	.long	.Linfo_string200                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2c3:0xbe DW_TAG_structure_type
	.long	.Linfo_string199                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2cc:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	897                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2d8:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2e4:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2f0:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	918                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2fc:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x308:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x314:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x320:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	918                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x32c:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	923                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x338:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	989                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x344:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1055                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x350:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1827                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x35c:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1941                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x368:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2773                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x374:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	3122                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x381:0x5 DW_TAG_pointer_type
	.long	902                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x386:0xb DW_TAG_typedef
	.long	913                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x391:0x5 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x396:0x5 DW_TAG_pointer_type
	.long	672                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x39b:0x5 DW_TAG_pointer_type
	.long	928                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3a0:0xb DW_TAG_typedef
	.long	939                             # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3ab:0x2d DW_TAG_structure_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3b3:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3bf:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3cb:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	984                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3d8:0x5 DW_TAG_pointer_type
	.long	939                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3dd:0x5 DW_TAG_pointer_type
	.long	994                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3e2:0xb DW_TAG_typedef
	.long	1005                            # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3ed:0x2d DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3f5:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x401:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x40d:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1050                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x41a:0x5 DW_TAG_pointer_type
	.long	1005                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x41f:0x5 DW_TAG_pointer_type
	.long	1060                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x424:0xb DW_TAG_typedef
	.long	1071                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x42f:0x2d DW_TAG_structure_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x437:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1116                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x443:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1822                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x44f:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1822                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x45c:0x5 DW_TAG_pointer_type
	.long	1121                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x461:0xb DW_TAG_typedef
	.long	1132                            # DW_AT_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x46c:0x51 DW_TAG_structure_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x474:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x480:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x48c:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x498:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4a4:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1218                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4b0:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1218                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4bd:0x5 DW_TAG_pointer_type
	.long	684                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4c2:0x5 DW_TAG_pointer_type
	.long	1223                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4c7:0xc9 DW_TAG_structure_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4cf:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4db:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4e7:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4f3:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ff:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x50b:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x517:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1424                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x523:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1478                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x52f:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1539                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x53b:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1612                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x547:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	989                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x553:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1690                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x55f:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1768                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x56b:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	918                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x577:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1218                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x583:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1218                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x590:0x5 DW_TAG_pointer_type
	.long	1429                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x595:0xb DW_TAG_typedef
	.long	1440                            # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x5a0:0x21 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5a8:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5b4:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1473                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5c1:0x5 DW_TAG_pointer_type
	.long	1440                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5c6:0x5 DW_TAG_pointer_type
	.long	1483                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5cb:0xb DW_TAG_typedef
	.long	1494                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x5d6:0x2d DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5de:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5ea:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5f6:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1213                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x603:0x5 DW_TAG_pointer_type
	.long	1544                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x608:0xb DW_TAG_typedef
	.long	1555                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x613:0x39 DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x61b:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x627:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x633:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1612                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x63f:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1690                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x64c:0x5 DW_TAG_pointer_type
	.long	1617                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x651:0xb DW_TAG_typedef
	.long	1628                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x65c:0x39 DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x664:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x670:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x67c:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x688:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1685                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x695:0x5 DW_TAG_pointer_type
	.long	1628                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x69a:0x5 DW_TAG_pointer_type
	.long	1695                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x69f:0xb DW_TAG_typedef
	.long	1706                            # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x6aa:0x39 DW_TAG_structure_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6b2:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6be:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6ca:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6d6:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1763                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6e3:0x5 DW_TAG_pointer_type
	.long	1706                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6e8:0x5 DW_TAG_pointer_type
	.long	1773                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6ed:0xb DW_TAG_typedef
	.long	1784                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x6f8:0x21 DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x700:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x70c:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1817                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x719:0x5 DW_TAG_pointer_type
	.long	1784                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x71e:0x5 DW_TAG_pointer_type
	.long	1071                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x723:0x5 DW_TAG_pointer_type
	.long	1832                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x728:0xb DW_TAG_typedef
	.long	1843                            # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x733:0x5d DW_TAG_structure_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x73b:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x747:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x753:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x75f:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x76b:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1768                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x777:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1936                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x783:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1936                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x790:0x5 DW_TAG_pointer_type
	.long	1843                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x795:0x56 DW_TAG_structure_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x79d:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1961                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7a9:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7ad:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2027                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7b9:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2050                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x7c6:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2720                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7d2:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7de:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2767                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7eb:0xb DW_TAG_typedef
	.long	2038                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7f6:0x5 DW_TAG_pointer_type
	.long	2043                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x7fb:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x7fc:0x5 DW_TAG_formal_parameter
	.long	684                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x802:0x5 DW_TAG_pointer_type
	.long	2055                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x807:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x808:0x5 DW_TAG_formal_parameter
	.long	684                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x80d:0x5 DW_TAG_formal_parameter
	.long	2072                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x812:0x5 DW_TAG_formal_parameter
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x818:0x5 DW_TAG_pointer_type
	.long	2077                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x81d:0xb DW_TAG_typedef
	.long	2088                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x828:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x82c:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x838:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x844:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x850:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x85c:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2152                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x868:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x86c:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2599                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x878:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2180                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x884:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x888:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2618                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x894:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2629                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8a1:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2221                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x8ad:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8b1:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8bd:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8c9:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2640                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8d6:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2274                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x8e2:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8e6:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2618                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8f2:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2629                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8fe:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2640                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x90b:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2327                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x917:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x91b:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2618                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x927:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2629                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x933:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x93f:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2684                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x94b:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2684                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x958:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2404                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x964:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x968:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x974:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2702                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x980:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2444                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x98c:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x990:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2460                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x99c:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9a0:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9ac:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x9b9:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2709                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x9c7:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2515                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x9d3:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9d7:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2695                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9e3:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x9f0:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2556                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x9fc:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa00:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa0c:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa18:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	169                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xa27:0xc DW_TAG_array_type
	.long	684                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0xa2c:0x6 DW_TAG_subrange_type
	.long	2611                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0xa33:0x7 DW_TAG_base_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0xa3a:0xb DW_TAG_typedef
	.long	684                             # DW_AT_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa45:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa50:0xb DW_TAG_typedef
	.long	2651                            # DW_AT_type
	.long	.Linfo_string123                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0xa5b:0x21 DW_TAG_union_type
	.long	.Linfo_string122                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa63:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa6f:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xa7c:0xb DW_TAG_typedef
	.long	2695                            # DW_AT_type
	.long	.Linfo_string129                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xa87:0x7 DW_TAG_base_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xa8e:0x7 DW_TAG_base_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xa95:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xaa0:0xb DW_TAG_typedef
	.long	2731                            # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xaab:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xaaf:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2748                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xabc:0xc DW_TAG_array_type
	.long	2760                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xac1:0x6 DW_TAG_subrange_type
	.long	2611                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xac8:0x7 DW_TAG_base_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xacf:0x5 DW_TAG_pointer_type
	.long	2772                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xad4:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0xad5:0x5 DW_TAG_pointer_type
	.long	2778                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xada:0xbd DW_TAG_structure_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xae2:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2967                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaee:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2978                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xafa:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2989                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb06:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	3000                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb12:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2629                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb1e:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	3011                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb2a:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	684                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb36:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2967                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb42:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	3022                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb4e:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	3033                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb5a:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	3044                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb66:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3055                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb72:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	3055                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb7e:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	3055                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb8a:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3110                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb97:0xb DW_TAG_typedef
	.long	2760                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xba2:0xb DW_TAG_typedef
	.long	2760                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbad:0xb DW_TAG_typedef
	.long	2760                            # DW_AT_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbb8:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbc3:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbce:0xb DW_TAG_typedef
	.long	2695                            # DW_AT_type
	.long	.Linfo_string170                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbd9:0xb DW_TAG_typedef
	.long	2695                            # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbe4:0xb DW_TAG_typedef
	.long	2695                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xbef:0x21 DW_TAG_structure_type
	.long	.Linfo_string180                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xbf7:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3088                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc03:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	3099                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc10:0xb DW_TAG_typedef
	.long	2695                            # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc1b:0xb DW_TAG_typedef
	.long	2695                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xc26:0xc DW_TAG_array_type
	.long	3099                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xc2b:0x6 DW_TAG_subrange_type
	.long	2611                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc32:0x5 DW_TAG_pointer_type
	.long	3127                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xc37:0x69 DW_TAG_structure_type
	.long	.Linfo_string198                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xc3f:0xc DW_TAG_member
	.long	.Linfo_string186                # DW_AT_name
	.long	3232                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc4b:0xc DW_TAG_member
	.long	.Linfo_string188                # DW_AT_name
	.long	3232                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc57:0xc DW_TAG_member
	.long	.Linfo_string189                # DW_AT_name
	.long	3232                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc63:0xc DW_TAG_member
	.long	.Linfo_string190                # DW_AT_name
	.long	3232                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc6f:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	3243                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc7b:0xc DW_TAG_member
	.long	.Linfo_string194                # DW_AT_name
	.long	3261                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc87:0xc DW_TAG_member
	.long	.Linfo_string195                # DW_AT_name
	.long	3273                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc93:0xc DW_TAG_member
	.long	.Linfo_string197                # DW_AT_name
	.long	3273                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xca0:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string187                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xcab:0xb DW_TAG_typedef
	.long	3254                            # DW_AT_type
	.long	.Linfo_string193                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xcb6:0x7 DW_TAG_base_type
	.long	.Linfo_string192                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0xcbd:0xc DW_TAG_array_type
	.long	3243                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xcc2:0x6 DW_TAG_subrange_type
	.long	2611                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xcc9:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string196                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xcd4:0x5 DW_TAG_pointer_type
	.long	1612                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xcd9:0x5 DW_TAG_pointer_type
	.long	1690                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xcde:0x5 DW_TAG_pointer_type
	.long	1539                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_redir_extract.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=74
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=108
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=121
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=135
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=149
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=162
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=175
.Linfo_string9:
	.asciz	"expansion"                     # string offset=187
.Linfo_string10:
	.asciz	"operator"                      # string offset=197
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=206
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=215
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=223
.Linfo_string14:
	.asciz	"outfile"                       # string offset=231
.Linfo_string15:
	.asciz	"append"                        # string offset=239
.Linfo_string16:
	.asciz	"infile"                        # string offset=246
.Linfo_string17:
	.asciz	"and_if"                        # string offset=253
.Linfo_string18:
	.asciz	"or_if"                         # string offset=260
.Linfo_string19:
	.asciz	"word"                          # string offset=266
.Linfo_string20:
	.asciz	"name"                          # string offset=271
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=276
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=292
.Linfo_string23:
	.asciz	"e_token"                       # string offset=302
.Linfo_string24:
	.asciz	"get_redir_heredoc"             # string offset=310
.Linfo_string25:
	.asciz	"is_file_accessible"            # string offset=328
.Linfo_string26:
	.asciz	"_Bool"                         # string offset=347
.Linfo_string27:
	.asciz	"process_redirection"           # string offset=353
.Linfo_string28:
	.asciz	"manage_infile_list"            # string offset=373
.Linfo_string29:
	.asciz	"extract_command_infile"        # string offset=392
.Linfo_string30:
	.asciz	"manage_outfile_list"           # string offset=415
.Linfo_string31:
	.asciz	"extract_command_outfile"       # string offset=435
.Linfo_string32:
	.asciz	"get_command_redir"             # string offset=459
.Linfo_string33:
	.asciz	"delimiter"                     # string offset=477
.Linfo_string34:
	.asciz	"char"                          # string offset=487
.Linfo_string35:
	.asciz	"fd"                            # string offset=492
.Linfo_string36:
	.asciz	"int"                           # string offset=495
.Linfo_string37:
	.asciz	"buffer"                        # string offset=499
.Linfo_string38:
	.asciz	"minishell"                     # string offset=506
.Linfo_string39:
	.asciz	"dir"                           # string offset=516
.Linfo_string40:
	.asciz	"__dirstream"                   # string offset=520
.Linfo_string41:
	.asciz	"DIR"                           # string offset=532
.Linfo_string42:
	.asciz	"state"                         # string offset=536
.Linfo_string43:
	.asciz	"input"                         # string offset=542
.Linfo_string44:
	.asciz	"path"                          # string offset=548
.Linfo_string45:
	.asciz	"prompt"                        # string offset=553
.Linfo_string46:
	.asciz	"operator_nbr"                  # string offset=560
.Linfo_string47:
	.asciz	"env_array"                     # string offset=573
.Linfo_string48:
	.asciz	"env"                           # string offset=583
.Linfo_string49:
	.asciz	"value"                         # string offset=587
.Linfo_string50:
	.asciz	"next"                          # string offset=593
.Linfo_string51:
	.asciz	"s_env"                         # string offset=598
.Linfo_string52:
	.asciz	"t_env"                         # string offset=604
.Linfo_string53:
	.asciz	"local"                         # string offset=610
.Linfo_string54:
	.asciz	"s_var"                         # string offset=616
.Linfo_string55:
	.asciz	"t_var"                         # string offset=622
.Linfo_string56:
	.asciz	"syntax_tree"                   # string offset=628
.Linfo_string57:
	.asciz	"node"                          # string offset=640
.Linfo_string58:
	.asciz	"id"                            # string offset=645
.Linfo_string59:
	.asciz	"type"                          # string offset=648
.Linfo_string60:
	.asciz	"pipe_fd"                       # string offset=653
.Linfo_string61:
	.asciz	"left"                          # string offset=661
.Linfo_string62:
	.asciz	"pid"                           # string offset=666
.Linfo_string63:
	.asciz	"wstatus"                       # string offset=670
.Linfo_string64:
	.asciz	"arg"                           # string offset=678
.Linfo_string65:
	.asciz	"s_arg"                         # string offset=682
.Linfo_string66:
	.asciz	"t_arg"                         # string offset=688
.Linfo_string67:
	.asciz	"pipe"                          # string offset=694
.Linfo_string68:
	.asciz	"to_close"                      # string offset=699
.Linfo_string69:
	.asciz	"write"                         # string offset=708
.Linfo_string70:
	.asciz	"read"                          # string offset=714
.Linfo_string71:
	.asciz	"s_pipe"                        # string offset=719
.Linfo_string72:
	.asciz	"t_pipe"                        # string offset=726
.Linfo_string73:
	.asciz	"redir"                         # string offset=733
.Linfo_string74:
	.asciz	"in_fd"                         # string offset=739
.Linfo_string75:
	.asciz	"out_fd"                        # string offset=745
.Linfo_string76:
	.asciz	"s_infile"                      # string offset=752
.Linfo_string77:
	.asciz	"t_infile"                      # string offset=761
.Linfo_string78:
	.asciz	"s_outfile"                     # string offset=770
.Linfo_string79:
	.asciz	"t_outfile"                     # string offset=780
.Linfo_string80:
	.asciz	"s_redir"                       # string offset=790
.Linfo_string81:
	.asciz	"t_redir"                       # string offset=798
.Linfo_string82:
	.asciz	"assign"                        # string offset=806
.Linfo_string83:
	.asciz	"s_expan"                       # string offset=813
.Linfo_string84:
	.asciz	"t_expan"                       # string offset=821
.Linfo_string85:
	.asciz	"arg_array"                     # string offset=829
.Linfo_string86:
	.asciz	"prev"                          # string offset=839
.Linfo_string87:
	.asciz	"s_cmd"                         # string offset=844
.Linfo_string88:
	.asciz	"right"                         # string offset=850
.Linfo_string89:
	.asciz	"s_ast_node"                    # string offset=856
.Linfo_string90:
	.asciz	"t_ast_node"                    # string offset=867
.Linfo_string91:
	.asciz	"s_ast"                         # string offset=878
.Linfo_string92:
	.asciz	"t_ast"                         # string offset=884
.Linfo_string93:
	.asciz	"token_stream"                  # string offset=890
.Linfo_string94:
	.asciz	"quote_nbr"                     # string offset=903
.Linfo_string95:
	.asciz	"length"                        # string offset=913
.Linfo_string96:
	.asciz	"lexeme"                        # string offset=920
.Linfo_string97:
	.asciz	"s_token"                       # string offset=927
.Linfo_string98:
	.asciz	"t_token"                       # string offset=935
.Linfo_string99:
	.asciz	"sighandler"                    # string offset=943
.Linfo_string100:
	.asciz	"__sigaction_handler"           # string offset=954
.Linfo_string101:
	.asciz	"sa_handler"                    # string offset=974
.Linfo_string102:
	.asciz	"__sighandler_t"                # string offset=985
.Linfo_string103:
	.asciz	"sa_sigaction"                  # string offset=1000
.Linfo_string104:
	.asciz	"si_signo"                      # string offset=1013
.Linfo_string105:
	.asciz	"si_errno"                      # string offset=1022
.Linfo_string106:
	.asciz	"si_code"                       # string offset=1031
.Linfo_string107:
	.asciz	"__pad0"                        # string offset=1039
.Linfo_string108:
	.asciz	"_sifields"                     # string offset=1046
.Linfo_string109:
	.asciz	"_pad"                          # string offset=1056
.Linfo_string110:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1061
.Linfo_string111:
	.asciz	"_kill"                         # string offset=1081
.Linfo_string112:
	.asciz	"si_pid"                        # string offset=1087
.Linfo_string113:
	.asciz	"__pid_t"                       # string offset=1094
.Linfo_string114:
	.asciz	"si_uid"                        # string offset=1102
.Linfo_string115:
	.asciz	"__uid_t"                       # string offset=1109
.Linfo_string116:
	.asciz	"_timer"                        # string offset=1117
.Linfo_string117:
	.asciz	"si_tid"                        # string offset=1124
.Linfo_string118:
	.asciz	"si_overrun"                    # string offset=1131
.Linfo_string119:
	.asciz	"si_sigval"                     # string offset=1142
.Linfo_string120:
	.asciz	"sival_int"                     # string offset=1152
.Linfo_string121:
	.asciz	"sival_ptr"                     # string offset=1162
.Linfo_string122:
	.asciz	"sigval"                        # string offset=1172
.Linfo_string123:
	.asciz	"__sigval_t"                    # string offset=1179
.Linfo_string124:
	.asciz	"_rt"                           # string offset=1190
.Linfo_string125:
	.asciz	"_sigchld"                      # string offset=1194
.Linfo_string126:
	.asciz	"si_status"                     # string offset=1203
.Linfo_string127:
	.asciz	"si_utime"                      # string offset=1213
.Linfo_string128:
	.asciz	"long int"                      # string offset=1222
.Linfo_string129:
	.asciz	"__clock_t"                     # string offset=1231
.Linfo_string130:
	.asciz	"si_stime"                      # string offset=1241
.Linfo_string131:
	.asciz	"_sigfault"                     # string offset=1250
.Linfo_string132:
	.asciz	"si_addr"                       # string offset=1260
.Linfo_string133:
	.asciz	"si_addr_lsb"                   # string offset=1268
.Linfo_string134:
	.asciz	"short"                         # string offset=1280
.Linfo_string135:
	.asciz	"_bounds"                       # string offset=1286
.Linfo_string136:
	.asciz	"_addr_bnd"                     # string offset=1294
.Linfo_string137:
	.asciz	"_lower"                        # string offset=1304
.Linfo_string138:
	.asciz	"_upper"                        # string offset=1311
.Linfo_string139:
	.asciz	"_pkey"                         # string offset=1318
.Linfo_string140:
	.asciz	"__uint32_t"                    # string offset=1324
.Linfo_string141:
	.asciz	"_sigpoll"                      # string offset=1335
.Linfo_string142:
	.asciz	"si_band"                       # string offset=1344
.Linfo_string143:
	.asciz	"si_fd"                         # string offset=1352
.Linfo_string144:
	.asciz	"_sigsys"                       # string offset=1358
.Linfo_string145:
	.asciz	"_call_addr"                    # string offset=1366
.Linfo_string146:
	.asciz	"_syscall"                      # string offset=1377
.Linfo_string147:
	.asciz	"_arch"                         # string offset=1386
.Linfo_string148:
	.asciz	"siginfo_t"                     # string offset=1392
.Linfo_string149:
	.asciz	"sa_mask"                       # string offset=1402
.Linfo_string150:
	.asciz	"__val"                         # string offset=1410
.Linfo_string151:
	.asciz	"long unsigned int"             # string offset=1416
.Linfo_string152:
	.asciz	"__sigset_t"                    # string offset=1434
.Linfo_string153:
	.asciz	"sa_flags"                      # string offset=1445
.Linfo_string154:
	.asciz	"sa_restorer"                   # string offset=1454
.Linfo_string155:
	.asciz	"sigaction"                     # string offset=1466
.Linfo_string156:
	.asciz	"statbuf"                       # string offset=1476
.Linfo_string157:
	.asciz	"st_dev"                        # string offset=1484
.Linfo_string158:
	.asciz	"__dev_t"                       # string offset=1491
.Linfo_string159:
	.asciz	"st_ino"                        # string offset=1499
.Linfo_string160:
	.asciz	"__ino_t"                       # string offset=1506
.Linfo_string161:
	.asciz	"st_nlink"                      # string offset=1514
.Linfo_string162:
	.asciz	"__nlink_t"                     # string offset=1523
.Linfo_string163:
	.asciz	"st_mode"                       # string offset=1533
.Linfo_string164:
	.asciz	"__mode_t"                      # string offset=1541
.Linfo_string165:
	.asciz	"st_uid"                        # string offset=1550
.Linfo_string166:
	.asciz	"st_gid"                        # string offset=1557
.Linfo_string167:
	.asciz	"__gid_t"                       # string offset=1564
.Linfo_string168:
	.asciz	"st_rdev"                       # string offset=1572
.Linfo_string169:
	.asciz	"st_size"                       # string offset=1580
.Linfo_string170:
	.asciz	"__off_t"                       # string offset=1588
.Linfo_string171:
	.asciz	"st_blksize"                    # string offset=1596
.Linfo_string172:
	.asciz	"__blksize_t"                   # string offset=1607
.Linfo_string173:
	.asciz	"st_blocks"                     # string offset=1619
.Linfo_string174:
	.asciz	"__blkcnt_t"                    # string offset=1629
.Linfo_string175:
	.asciz	"st_atim"                       # string offset=1640
.Linfo_string176:
	.asciz	"tv_sec"                        # string offset=1648
.Linfo_string177:
	.asciz	"__time_t"                      # string offset=1655
.Linfo_string178:
	.asciz	"tv_nsec"                       # string offset=1664
.Linfo_string179:
	.asciz	"__syscall_slong_t"             # string offset=1672
.Linfo_string180:
	.asciz	"timespec"                      # string offset=1690
.Linfo_string181:
	.asciz	"st_mtim"                       # string offset=1699
.Linfo_string182:
	.asciz	"st_ctim"                       # string offset=1707
.Linfo_string183:
	.asciz	"__glibc_reserved"              # string offset=1715
.Linfo_string184:
	.asciz	"stat"                          # string offset=1732
.Linfo_string185:
	.asciz	"term"                          # string offset=1737
.Linfo_string186:
	.asciz	"c_iflag"                       # string offset=1742
.Linfo_string187:
	.asciz	"tcflag_t"                      # string offset=1750
.Linfo_string188:
	.asciz	"c_oflag"                       # string offset=1759
.Linfo_string189:
	.asciz	"c_cflag"                       # string offset=1767
.Linfo_string190:
	.asciz	"c_lflag"                       # string offset=1775
.Linfo_string191:
	.asciz	"c_line"                        # string offset=1783
.Linfo_string192:
	.asciz	"unsigned char"                 # string offset=1790
.Linfo_string193:
	.asciz	"cc_t"                          # string offset=1804
.Linfo_string194:
	.asciz	"c_cc"                          # string offset=1809
.Linfo_string195:
	.asciz	"c_ispeed"                      # string offset=1814
.Linfo_string196:
	.asciz	"speed_t"                       # string offset=1823
.Linfo_string197:
	.asciz	"c_ospeed"                      # string offset=1831
.Linfo_string198:
	.asciz	"termios"                       # string offset=1840
.Linfo_string199:
	.asciz	"s_minishell"                   # string offset=1848
.Linfo_string200:
	.asciz	"t_minishell"                   # string offset=1860
.Linfo_string201:
	.asciz	"filename"                      # string offset=1872
.Linfo_string202:
	.asciz	"new"                           # string offset=1881
.Linfo_string203:
	.asciz	"index"                         # string offset=1885
.Linfo_string204:
	.asciz	"token"                         # string offset=1891
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
	.addrsig_sym process_redirection
	.addrsig_sym manage_infile_list
	.addrsig_sym extract_command_infile
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym get_redir_filename
	.addrsig_sym manage_outfile_list
	.addrsig_sym extract_command_outfile
	.section	.debug_line,"",@progbits
.Lline_table_start0:

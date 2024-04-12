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
	.globl	extract_command_infile          # -- Begin function extract_command_infile
	.p2align	4, 0x90
	.type	extract_command_infile,@function
extract_command_infile:                 # @extract_command_infile
.Lfunc_begin2:
	.loc	2 50 0                          # src/parsing/command_redir_extract.c:50:0
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
.Ltmp16:
	.loc	2 54 8 prologue_end             # src/parsing/command_redir_extract.c:54:8
	movl	$24, %edi
	callq	malloc
	.loc	2 54 6 is_stmt 0                # src/parsing/command_redir_extract.c:54:6
	movq	%rax, -40(%rbp)
.Ltmp17:
	.loc	2 55 7 is_stmt 1                # src/parsing/command_redir_extract.c:55:7
	cmpq	$0, -40(%rbp)
.Ltmp18:
	.loc	2 55 6 is_stmt 0                # src/parsing/command_redir_extract.c:55:6
	jne	.LBB2_2
# %bb.1:
.Ltmp19:
	.loc	2 57 3 is_stmt 1                # src/parsing/command_redir_extract.c:57:3
	movabsq	$.L.str.3, %rdi
	callq	perror
	.loc	2 58 3                          # src/parsing/command_redir_extract.c:58:3
	jmp	.LBB2_18
.Ltmp20:
.LBB2_2:
	.loc	2 60 2                          # src/parsing/command_redir_extract.c:60:2
	movq	-40(%rbp), %rax
	.loc	2 60 12 is_stmt 0               # src/parsing/command_redir_extract.c:60:12
	movq	$0, 16(%rax)
	.loc	2 61 14 is_stmt 1               # src/parsing/command_redir_extract.c:61:14
	movq	-16(%rbp), %rax
	.loc	2 61 21 is_stmt 0               # src/parsing/command_redir_extract.c:61:21
	movl	(%rax), %ecx
	.loc	2 61 2                          # src/parsing/command_redir_extract.c:61:2
	movq	-40(%rbp), %rax
	.loc	2 61 12                         # src/parsing/command_redir_extract.c:61:12
	movl	%ecx, 4(%rax)
	.loc	2 62 33 is_stmt 1               # src/parsing/command_redir_extract.c:62:33
	movq	-16(%rbp), %rax
	.loc	2 62 40 is_stmt 0               # src/parsing/command_redir_extract.c:62:40
	movq	16(%rax), %rdi
	.loc	2 62 48                         # src/parsing/command_redir_extract.c:62:48
	movq	-40(%rbp), %rax
	.loc	2 62 53                         # src/parsing/command_redir_extract.c:62:53
	movl	4(%rax), %esi
	.loc	2 62 14                         # src/parsing/command_redir_extract.c:62:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 62 2                          # src/parsing/command_redir_extract.c:62:2
	movq	-40(%rbp), %rax
	.loc	2 62 12                         # src/parsing/command_redir_extract.c:62:12
	movq	%rcx, 8(%rax)
.Ltmp21:
	.loc	2 63 6 is_stmt 1                # src/parsing/command_redir_extract.c:63:6
	movq	-40(%rbp), %rax
	.loc	2 63 16 is_stmt 0               # src/parsing/command_redir_extract.c:63:16
	cmpl	$9, 4(%rax)
	.loc	2 63 27                         # src/parsing/command_redir_extract.c:63:27
	jne	.LBB2_5
# %bb.3:
	.loc	2 63 40                         # src/parsing/command_redir_extract.c:63:40
	movq	-40(%rbp), %rax
	.loc	2 63 45                         # src/parsing/command_redir_extract.c:63:45
	movq	8(%rax), %rdi
	.loc	2 63 30                         # src/parsing/command_redir_extract.c:63:30
	callq	ft_strlen
	.loc	2 63 51                         # src/parsing/command_redir_extract.c:63:51
	cmpq	$0, %rax
.Ltmp22:
	.loc	2 63 6                          # src/parsing/command_redir_extract.c:63:6
	jbe	.LBB2_5
# %bb.4:
.Ltmp23:
	.loc	2 64 21 is_stmt 1               # src/parsing/command_redir_extract.c:64:21
	movq	-40(%rbp), %rax
	.loc	2 64 26 is_stmt 0               # src/parsing/command_redir_extract.c:64:26
	movq	8(%rax), %rdi
	.loc	2 64 3                          # src/parsing/command_redir_extract.c:64:3
	callq	get_redir_heredoc
	jmp	.LBB2_17
.LBB2_5:
.Ltmp24:
	.loc	2 65 11 is_stmt 1               # src/parsing/command_redir_extract.c:65:11
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	.loc	2 65 21 is_stmt 0               # src/parsing/command_redir_extract.c:65:21
	je	.LBB2_16
# %bb.6:
	.loc	2 65 43                         # src/parsing/command_redir_extract.c:65:43
	movq	-8(%rbp), %rdi
	.loc	2 65 54                         # src/parsing/command_redir_extract.c:65:54
	movq	-40(%rbp), %rax
	.loc	2 65 59                         # src/parsing/command_redir_extract.c:65:59
	movq	8(%rax), %rsi
	.loc	2 65 24                         # src/parsing/command_redir_extract.c:65:24
	callq	is_file_accessible
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 65 65                         # src/parsing/command_redir_extract.c:65:65
	cmpl	$1, %eax
.Ltmp25:
	.loc	2 65 11                         # src/parsing/command_redir_extract.c:65:11
	jne	.LBB2_16
# %bb.7:
.Ltmp26:
	.loc	2 67 9 is_stmt 1                # src/parsing/command_redir_extract.c:67:9
	movq	-24(%rbp), %rax
	.loc	2 67 7 is_stmt 0                # src/parsing/command_redir_extract.c:67:7
	cmpq	$0, (%rax)
.Ltmp27:
	.loc	2 67 7                          # src/parsing/command_redir_extract.c:67:7
	je	.LBB2_14
# %bb.8:
.Ltmp28:
	.loc	2 69 14 is_stmt 1               # src/parsing/command_redir_extract.c:69:14
	movq	-24(%rbp), %rax
	.loc	2 69 13 is_stmt 0               # src/parsing/command_redir_extract.c:69:13
	movq	(%rax), %rax
	.loc	2 69 10                         # src/parsing/command_redir_extract.c:69:10
	movq	%rax, -32(%rbp)
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	.loc	2 70 4 is_stmt 1                # src/parsing/command_redir_extract.c:70:4
	cmpq	$0, -32(%rbp)
	je	.LBB2_13
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
.Ltmp29:
	.loc	2 72 9                          # src/parsing/command_redir_extract.c:72:9
	movq	-32(%rbp), %rax
	.loc	2 72 21 is_stmt 0               # src/parsing/command_redir_extract.c:72:21
	cmpq	$0, 16(%rax)
.Ltmp30:
	.loc	2 72 9                          # src/parsing/command_redir_extract.c:72:9
	jne	.LBB2_12
# %bb.11:
.Ltmp31:
	.loc	2 73 6 is_stmt 1                # src/parsing/command_redir_extract.c:73:6
	jmp	.LBB2_13
.Ltmp32:
.LBB2_12:                               #   in Loop: Header=BB2_9 Depth=1
	.loc	2 74 13                         # src/parsing/command_redir_extract.c:74:13
	movq	-32(%rbp), %rax
	.loc	2 74 20 is_stmt 0               # src/parsing/command_redir_extract.c:74:20
	movq	16(%rax), %rax
	.loc	2 74 11                         # src/parsing/command_redir_extract.c:74:11
	movq	%rax, -32(%rbp)
.Ltmp33:
	.loc	2 70 4 is_stmt 1                # src/parsing/command_redir_extract.c:70:4
	jmp	.LBB2_9
.LBB2_13:
	.loc	2 76 18                         # src/parsing/command_redir_extract.c:76:18
	movq	-40(%rbp), %rcx
	.loc	2 76 4 is_stmt 0                # src/parsing/command_redir_extract.c:76:4
	movq	-32(%rbp), %rax
	.loc	2 76 16                         # src/parsing/command_redir_extract.c:76:16
	movq	%rcx, 16(%rax)
	.loc	2 77 4 is_stmt 1                # src/parsing/command_redir_extract.c:77:4
	jmp	.LBB2_18
.Ltmp34:
.LBB2_14:
	.loc	2 80 16                         # src/parsing/command_redir_extract.c:80:16
	movq	-40(%rbp), %rcx
	.loc	2 80 6 is_stmt 0                # src/parsing/command_redir_extract.c:80:6
	movq	-24(%rbp), %rax
	.loc	2 80 14                         # src/parsing/command_redir_extract.c:80:14
	movq	%rcx, (%rax)
.Ltmp35:
# %bb.15:
	.loc	2 81 3 is_stmt 1                # src/parsing/command_redir_extract.c:81:3
	jmp	.LBB2_18
.Ltmp36:
.LBB2_16:
	.loc	2 0 3 is_stmt 0                 # src/parsing/command_redir_extract.c:0:3
	jmp	.LBB2_17
.LBB2_17:
	.loc	2 83 7 is_stmt 1                # src/parsing/command_redir_extract.c:83:7
	movq	-40(%rbp), %rax
	.loc	2 83 12 is_stmt 0               # src/parsing/command_redir_extract.c:83:12
	movq	8(%rax), %rdi
	.loc	2 83 2                          # src/parsing/command_redir_extract.c:83:2
	callq	free
	.loc	2 84 7 is_stmt 1                # src/parsing/command_redir_extract.c:84:7
	movq	-40(%rbp), %rdi
	.loc	2 84 2 is_stmt 0                # src/parsing/command_redir_extract.c:84:2
	callq	free
.LBB2_18:
	.loc	2 85 1 is_stmt 1                # src/parsing/command_redir_extract.c:85:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.Lfunc_end2:
	.size	extract_command_infile, .Lfunc_end2-extract_command_infile
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_outfile         # -- Begin function extract_command_outfile
	.p2align	4, 0x90
	.type	extract_command_outfile,@function
extract_command_outfile:                # @extract_command_outfile
.Lfunc_begin3:
	.loc	2 88 0                          # src/parsing/command_redir_extract.c:88:0
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
.Ltmp38:
	.loc	2 92 8 prologue_end             # src/parsing/command_redir_extract.c:92:8
	movl	$24, %edi
	callq	malloc
	.loc	2 92 6 is_stmt 0                # src/parsing/command_redir_extract.c:92:6
	movq	%rax, -32(%rbp)
.Ltmp39:
	.loc	2 93 7 is_stmt 1                # src/parsing/command_redir_extract.c:93:7
	cmpq	$0, -32(%rbp)
.Ltmp40:
	.loc	2 93 6 is_stmt 0                # src/parsing/command_redir_extract.c:93:6
	jne	.LBB3_2
# %bb.1:
.Ltmp41:
	.loc	2 95 3 is_stmt 1                # src/parsing/command_redir_extract.c:95:3
	movabsq	$.L.str.3, %rdi
	callq	perror
	.loc	2 96 3                          # src/parsing/command_redir_extract.c:96:3
	jmp	.LBB3_10
.Ltmp42:
.LBB3_2:
	.loc	2 98 2                          # src/parsing/command_redir_extract.c:98:2
	movq	-32(%rbp), %rax
	.loc	2 98 12 is_stmt 0               # src/parsing/command_redir_extract.c:98:12
	movq	$0, 16(%rax)
	.loc	2 99 14 is_stmt 1               # src/parsing/command_redir_extract.c:99:14
	movq	-8(%rbp), %rax
	.loc	2 99 21 is_stmt 0               # src/parsing/command_redir_extract.c:99:21
	movl	(%rax), %ecx
	.loc	2 99 2                          # src/parsing/command_redir_extract.c:99:2
	movq	-32(%rbp), %rax
	.loc	2 99 12                         # src/parsing/command_redir_extract.c:99:12
	movl	%ecx, 4(%rax)
	.loc	2 100 33 is_stmt 1              # src/parsing/command_redir_extract.c:100:33
	movq	-8(%rbp), %rax
	.loc	2 100 40 is_stmt 0              # src/parsing/command_redir_extract.c:100:40
	movq	16(%rax), %rdi
	.loc	2 100 48                        # src/parsing/command_redir_extract.c:100:48
	movq	-32(%rbp), %rax
	.loc	2 100 53                        # src/parsing/command_redir_extract.c:100:53
	movl	4(%rax), %esi
	.loc	2 100 14                        # src/parsing/command_redir_extract.c:100:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	2 100 2                         # src/parsing/command_redir_extract.c:100:2
	movq	-32(%rbp), %rax
	.loc	2 100 12                        # src/parsing/command_redir_extract.c:100:12
	movq	%rcx, 8(%rax)
.Ltmp43:
	.loc	2 101 8 is_stmt 1               # src/parsing/command_redir_extract.c:101:8
	movq	-16(%rbp), %rax
	.loc	2 101 6 is_stmt 0               # src/parsing/command_redir_extract.c:101:6
	cmpq	$0, (%rax)
.Ltmp44:
	.loc	2 101 6                         # src/parsing/command_redir_extract.c:101:6
	je	.LBB3_9
# %bb.3:
.Ltmp45:
	.loc	2 103 13 is_stmt 1              # src/parsing/command_redir_extract.c:103:13
	movq	-16(%rbp), %rax
	.loc	2 103 12 is_stmt 0              # src/parsing/command_redir_extract.c:103:12
	movq	(%rax), %rax
	.loc	2 103 9                         # src/parsing/command_redir_extract.c:103:9
	movq	%rax, -24(%rbp)
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	.loc	2 104 3 is_stmt 1               # src/parsing/command_redir_extract.c:104:3
	cmpq	$0, -24(%rbp)
	je	.LBB3_8
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
.Ltmp46:
	.loc	2 106 8                         # src/parsing/command_redir_extract.c:106:8
	movq	-24(%rbp), %rax
	.loc	2 106 20 is_stmt 0              # src/parsing/command_redir_extract.c:106:20
	cmpq	$0, 16(%rax)
.Ltmp47:
	.loc	2 106 8                         # src/parsing/command_redir_extract.c:106:8
	jne	.LBB3_7
# %bb.6:
.Ltmp48:
	.loc	2 107 5 is_stmt 1               # src/parsing/command_redir_extract.c:107:5
	jmp	.LBB3_8
.Ltmp49:
.LBB3_7:                                #   in Loop: Header=BB3_4 Depth=1
	.loc	2 108 12                        # src/parsing/command_redir_extract.c:108:12
	movq	-24(%rbp), %rax
	.loc	2 108 19 is_stmt 0              # src/parsing/command_redir_extract.c:108:19
	movq	16(%rax), %rax
	.loc	2 108 10                        # src/parsing/command_redir_extract.c:108:10
	movq	%rax, -24(%rbp)
.Ltmp50:
	.loc	2 104 3 is_stmt 1               # src/parsing/command_redir_extract.c:104:3
	jmp	.LBB3_4
.LBB3_8:
	.loc	2 110 17                        # src/parsing/command_redir_extract.c:110:17
	movq	-32(%rbp), %rcx
	.loc	2 110 3 is_stmt 0               # src/parsing/command_redir_extract.c:110:3
	movq	-24(%rbp), %rax
	.loc	2 110 15                        # src/parsing/command_redir_extract.c:110:15
	movq	%rcx, 16(%rax)
	.loc	2 111 3 is_stmt 1               # src/parsing/command_redir_extract.c:111:3
	jmp	.LBB3_10
.Ltmp51:
.LBB3_9:
	.loc	2 114 16                        # src/parsing/command_redir_extract.c:114:16
	movq	-32(%rbp), %rcx
	.loc	2 114 5 is_stmt 0               # src/parsing/command_redir_extract.c:114:5
	movq	-16(%rbp), %rax
	.loc	2 114 14                        # src/parsing/command_redir_extract.c:114:14
	movq	%rcx, (%rax)
.Ltmp52:
.LBB3_10:
	.loc	2 115 1 is_stmt 1               # src/parsing/command_redir_extract.c:115:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp53:
.Lfunc_end3:
	.size	extract_command_outfile, .Lfunc_end3-extract_command_outfile
	.cfi_endproc
                                        # -- End function
	.globl	get_command_redir               # -- Begin function get_command_redir
	.p2align	4, 0x90
	.type	get_command_redir,@function
get_command_redir:                      # @get_command_redir
.Lfunc_begin4:
	.loc	2 119 0                         # src/parsing/command_redir_extract.c:119:0
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
.Ltmp54:
	.loc	2 120 8 prologue_end            # src/parsing/command_redir_extract.c:120:8
	movq	-24(%rbp), %rax
	.loc	2 120 15 is_stmt 0              # src/parsing/command_redir_extract.c:120:15
	cmpq	$0, (%rax)
.Ltmp55:
	.loc	2 120 6                         # src/parsing/command_redir_extract.c:120:6
	jne	.LBB4_4
# %bb.1:
.Ltmp56:
	.loc	2 122 14 is_stmt 1              # src/parsing/command_redir_extract.c:122:14
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	2 122 5 is_stmt 0               # src/parsing/command_redir_extract.c:122:5
	movq	-24(%rbp), %rax
	.loc	2 122 12                        # src/parsing/command_redir_extract.c:122:12
	movq	%rcx, (%rax)
.Ltmp57:
	.loc	2 123 10 is_stmt 1              # src/parsing/command_redir_extract.c:123:10
	movq	-24(%rbp), %rax
	.loc	2 123 8 is_stmt 0               # src/parsing/command_redir_extract.c:123:8
	cmpq	$0, (%rax)
.Ltmp58:
	.loc	2 123 7                         # src/parsing/command_redir_extract.c:123:7
	jne	.LBB4_3
# %bb.2:
.Ltmp59:
	.loc	2 124 4 is_stmt 1               # src/parsing/command_redir_extract.c:124:4
	movabsq	$.L.str.4, %rdi
	callq	perror
.Ltmp60:
.LBB4_3:
	.loc	2 125 5                         # src/parsing/command_redir_extract.c:125:5
	movq	-24(%rbp), %rax
	.loc	2 125 4 is_stmt 0               # src/parsing/command_redir_extract.c:125:4
	movq	(%rax), %rax
	.loc	2 125 20                        # src/parsing/command_redir_extract.c:125:20
	movq	$0, 8(%rax)
	.loc	2 126 5 is_stmt 1               # src/parsing/command_redir_extract.c:126:5
	movq	-24(%rbp), %rax
	.loc	2 126 4 is_stmt 0               # src/parsing/command_redir_extract.c:126:4
	movq	(%rax), %rax
	.loc	2 126 21                        # src/parsing/command_redir_extract.c:126:21
	movq	$0, 16(%rax)
.Ltmp61:
.LBB4_4:
	.loc	2 128 6 is_stmt 1               # src/parsing/command_redir_extract.c:128:6
	movq	-16(%rbp), %rax
	.loc	2 128 18 is_stmt 0              # src/parsing/command_redir_extract.c:128:18
	cmpl	$12, (%rax)
	.loc	2 128 28                        # src/parsing/command_redir_extract.c:128:28
	je	.LBB4_6
# %bb.5:
	.loc	2 128 31                        # src/parsing/command_redir_extract.c:128:31
	movq	-16(%rbp), %rax
	.loc	2 128 43                        # src/parsing/command_redir_extract.c:128:43
	cmpl	$9, (%rax)
.Ltmp62:
	.loc	2 128 6                         # src/parsing/command_redir_extract.c:128:6
	jne	.LBB4_7
.LBB4_6:
.Ltmp63:
	.loc	2 129 26 is_stmt 1              # src/parsing/command_redir_extract.c:129:26
	movq	-8(%rbp), %rdi
	.loc	2 129 37 is_stmt 0              # src/parsing/command_redir_extract.c:129:37
	movq	-16(%rbp), %rsi
	.loc	2 129 47                        # src/parsing/command_redir_extract.c:129:47
	movq	-24(%rbp), %rax
	.loc	2 129 46                        # src/parsing/command_redir_extract.c:129:46
	movq	(%rax), %rdx
	.loc	2 129 55                        # src/parsing/command_redir_extract.c:129:55
	addq	$8, %rdx
	.loc	2 129 3                         # src/parsing/command_redir_extract.c:129:3
	callq	extract_command_infile
	jmp	.LBB4_11
.LBB4_7:
.Ltmp64:
	.loc	2 130 11 is_stmt 1              # src/parsing/command_redir_extract.c:130:11
	movq	-16(%rbp), %rax
	.loc	2 130 23 is_stmt 0              # src/parsing/command_redir_extract.c:130:23
	cmpl	$10, (%rax)
	.loc	2 130 34                        # src/parsing/command_redir_extract.c:130:34
	je	.LBB4_9
# %bb.8:
	.loc	2 130 37                        # src/parsing/command_redir_extract.c:130:37
	movq	-16(%rbp), %rax
	.loc	2 130 49                        # src/parsing/command_redir_extract.c:130:49
	cmpl	$11, (%rax)
.Ltmp65:
	.loc	2 130 11                        # src/parsing/command_redir_extract.c:130:11
	jne	.LBB4_10
.LBB4_9:
.Ltmp66:
	.loc	2 131 27 is_stmt 1              # src/parsing/command_redir_extract.c:131:27
	movq	-16(%rbp), %rdi
	.loc	2 131 37 is_stmt 0              # src/parsing/command_redir_extract.c:131:37
	movq	-24(%rbp), %rax
	.loc	2 131 36                        # src/parsing/command_redir_extract.c:131:36
	movq	(%rax), %rsi
	.loc	2 131 45                        # src/parsing/command_redir_extract.c:131:45
	addq	$16, %rsi
	.loc	2 131 3                         # src/parsing/command_redir_extract.c:131:3
	callq	extract_command_outfile
.Ltmp67:
.LBB4_10:
	.loc	2 0 3                           # src/parsing/command_redir_extract.c:0:3
	jmp	.LBB4_11
.LBB4_11:
	.loc	2 132 1 is_stmt 1               # src/parsing/command_redir_extract.c:132:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp68:
.Lfunc_end4:
	.size	get_command_redir, .Lfunc_end4-get_command_redir
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
	.byte	1                               # Abbrev [1] 0xb:0xc51 DW_TAG_compile_unit
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
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	548                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
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
	.long	529                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x10a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	555                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x118:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string198                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x127:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x13c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	555                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x14a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string199                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	1691                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x158:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	3148                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x166:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string200                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	1476                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x174:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string201                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	1476                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x183:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x198:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string199                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	1691                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	3153                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1b4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string200                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	1554                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1c2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string201                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	1554                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1d1:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1e6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	555                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1f4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string199                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	1691                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x202:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string70                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	3158                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x211:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x218:0x5 DW_TAG_pointer_type
	.long	541                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x21d:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x224:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x22b:0x5 DW_TAG_pointer_type
	.long	560                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x230:0xb DW_TAG_typedef
	.long	571                             # DW_AT_type
	.long	.Linfo_string197                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x23b:0xbe DW_TAG_structure_type
	.long	.Linfo_string196                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x244:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	761                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x250:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x25c:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x268:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x274:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x280:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x28c:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x298:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2a4:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	787                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2b0:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	853                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2bc:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	919                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2c8:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1691                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2d4:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1805                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2e0:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2637                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2ec:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	2986                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2f9:0x5 DW_TAG_pointer_type
	.long	766                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2fe:0xb DW_TAG_typedef
	.long	777                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x309:0x5 DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x30e:0x5 DW_TAG_pointer_type
	.long	536                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x313:0x5 DW_TAG_pointer_type
	.long	792                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x318:0xb DW_TAG_typedef
	.long	803                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x323:0x2d DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x32b:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x337:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x343:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	848                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x350:0x5 DW_TAG_pointer_type
	.long	803                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x355:0x5 DW_TAG_pointer_type
	.long	858                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x35a:0xb DW_TAG_typedef
	.long	869                             # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x365:0x2d DW_TAG_structure_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x36d:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x379:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x385:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	914                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x392:0x5 DW_TAG_pointer_type
	.long	869                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x397:0x5 DW_TAG_pointer_type
	.long	924                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x39c:0xb DW_TAG_typedef
	.long	935                             # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3a7:0x2d DW_TAG_structure_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3af:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	980                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3bb:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1686                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3c7:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1686                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3d4:0x5 DW_TAG_pointer_type
	.long	985                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3d9:0xb DW_TAG_typedef
	.long	996                             # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3e4:0x51 DW_TAG_structure_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3ec:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3f8:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x404:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1077                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x410:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x41c:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x428:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x435:0x5 DW_TAG_pointer_type
	.long	548                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x43a:0x5 DW_TAG_pointer_type
	.long	1087                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x43f:0xc9 DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x447:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x453:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x45f:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x46b:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x477:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x483:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x48f:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1288                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x49b:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1342                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4a7:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1403                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4b3:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1476                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4bf:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	853                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4cb:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1554                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4d7:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1632                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4e3:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ef:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4fb:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x508:0x5 DW_TAG_pointer_type
	.long	1293                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x50d:0xb DW_TAG_typedef
	.long	1304                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x518:0x21 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x520:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x52c:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1337                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x539:0x5 DW_TAG_pointer_type
	.long	1304                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x53e:0x5 DW_TAG_pointer_type
	.long	1347                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x543:0xb DW_TAG_typedef
	.long	1358                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x54e:0x2d DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x556:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1077                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x562:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1077                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x56e:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1077                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x57b:0x5 DW_TAG_pointer_type
	.long	1408                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x580:0xb DW_TAG_typedef
	.long	1419                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x58b:0x39 DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x593:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5ab:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1476                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5b7:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1554                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5c4:0x5 DW_TAG_pointer_type
	.long	1481                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5c9:0xb DW_TAG_typedef
	.long	1492                            # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x5d4:0x39 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5dc:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5e8:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5f4:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x600:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1549                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x60d:0x5 DW_TAG_pointer_type
	.long	1492                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x612:0x5 DW_TAG_pointer_type
	.long	1559                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x617:0xb DW_TAG_typedef
	.long	1570                            # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x622:0x39 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x62a:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x636:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x642:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x64e:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1627                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x65b:0x5 DW_TAG_pointer_type
	.long	1570                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x660:0x5 DW_TAG_pointer_type
	.long	1637                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x665:0xb DW_TAG_typedef
	.long	1648                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x670:0x21 DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x678:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x684:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1681                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x691:0x5 DW_TAG_pointer_type
	.long	1648                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x696:0x5 DW_TAG_pointer_type
	.long	935                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x69b:0x5 DW_TAG_pointer_type
	.long	1696                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6a0:0xb DW_TAG_typedef
	.long	1707                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x6ab:0x5d DW_TAG_structure_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6b3:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6bf:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6cb:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6d7:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6e3:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1632                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6ef:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1800                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6fb:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1800                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x708:0x5 DW_TAG_pointer_type
	.long	1707                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x70d:0x56 DW_TAG_structure_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x715:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1825                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x721:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x725:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1891                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x731:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1914                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x73e:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2584                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x74a:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x756:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2631                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x763:0xb DW_TAG_typedef
	.long	1902                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x76e:0x5 DW_TAG_pointer_type
	.long	1907                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x773:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x774:0x5 DW_TAG_formal_parameter
	.long	548                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x77a:0x5 DW_TAG_pointer_type
	.long	1919                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x77f:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x780:0x5 DW_TAG_formal_parameter
	.long	548                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x785:0x5 DW_TAG_formal_parameter
	.long	1936                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x78a:0x5 DW_TAG_formal_parameter
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x790:0x5 DW_TAG_pointer_type
	.long	1941                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x795:0xb DW_TAG_typedef
	.long	1952                            # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x7a0:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7a4:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7b0:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7bc:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7c8:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7d4:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2016                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7e0:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7e4:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2463                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7f0:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2044                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x7fc:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x800:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2482                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x80c:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2493                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x819:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2085                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x825:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x829:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x835:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x841:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2504                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x84e:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2138                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x85a:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x85e:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2482                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x86a:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2493                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x876:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2504                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x883:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x88f:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x893:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2482                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x89f:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2493                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8ab:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8b7:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8c3:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8d0:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2268                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x8dc:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8e0:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8ec:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2566                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8f8:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2308                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x904:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x908:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2324                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x914:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x918:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x924:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x931:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2573                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x93f:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2379                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x94b:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x94f:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2559                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x95b:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x968:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2420                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x974:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x978:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x984:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x990:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	169                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x99f:0xc DW_TAG_array_type
	.long	548                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x9a4:0x6 DW_TAG_subrange_type
	.long	2475                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x9ab:0x7 DW_TAG_base_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0x9b2:0xb DW_TAG_typedef
	.long	548                             # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9bd:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9c8:0xb DW_TAG_typedef
	.long	2515                            # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x9d3:0x21 DW_TAG_union_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9db:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9e7:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	176                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9f4:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string126                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9ff:0x7 DW_TAG_base_type
	.long	.Linfo_string125                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xa06:0x7 DW_TAG_base_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xa0d:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa18:0xb DW_TAG_typedef
	.long	2595                            # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xa23:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa27:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2612                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xa34:0xc DW_TAG_array_type
	.long	2624                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xa39:0x6 DW_TAG_subrange_type
	.long	2475                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa40:0x7 DW_TAG_base_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xa47:0x5 DW_TAG_pointer_type
	.long	2636                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xa4c:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0xa4d:0x5 DW_TAG_pointer_type
	.long	2642                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xa52:0xbd DW_TAG_structure_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa5a:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2831                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa66:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa72:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2853                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa7e:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2864                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa8a:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2493                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa96:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2875                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaa2:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaae:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2831                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaba:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2886                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xac6:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2897                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xad2:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2908                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xade:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2919                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaea:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2919                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaf6:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	2919                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb02:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2974                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb0f:0xb DW_TAG_typedef
	.long	2624                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb1a:0xb DW_TAG_typedef
	.long	2624                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb25:0xb DW_TAG_typedef
	.long	2624                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb30:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb3b:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb46:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb51:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb5c:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xb67:0x21 DW_TAG_structure_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb6f:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2952                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb7b:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2963                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb88:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb93:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xb9e:0xc DW_TAG_array_type
	.long	2963                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xba3:0x6 DW_TAG_subrange_type
	.long	2475                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xbaa:0x5 DW_TAG_pointer_type
	.long	2991                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xbaf:0x69 DW_TAG_structure_type
	.long	.Linfo_string195                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xbb7:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbc3:0xc DW_TAG_member
	.long	.Linfo_string185                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbcf:0xc DW_TAG_member
	.long	.Linfo_string186                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbdb:0xc DW_TAG_member
	.long	.Linfo_string187                # DW_AT_name
	.long	3096                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbe7:0xc DW_TAG_member
	.long	.Linfo_string188                # DW_AT_name
	.long	3107                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbf3:0xc DW_TAG_member
	.long	.Linfo_string191                # DW_AT_name
	.long	3125                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbff:0xc DW_TAG_member
	.long	.Linfo_string192                # DW_AT_name
	.long	3137                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc0b:0xc DW_TAG_member
	.long	.Linfo_string194                # DW_AT_name
	.long	3137                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc18:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc23:0xb DW_TAG_typedef
	.long	3118                            # DW_AT_type
	.long	.Linfo_string190                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc2e:0x7 DW_TAG_base_type
	.long	.Linfo_string189                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0xc35:0xc DW_TAG_array_type
	.long	3107                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xc3a:0x6 DW_TAG_subrange_type
	.long	2475                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc41:0xb DW_TAG_typedef
	.long	169                             # DW_AT_type
	.long	.Linfo_string193                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc4c:0x5 DW_TAG_pointer_type
	.long	1476                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xc51:0x5 DW_TAG_pointer_type
	.long	1554                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xc56:0x5 DW_TAG_pointer_type
	.long	1403                            # DW_AT_type
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
	.asciz	"extract_command_infile"        # string offset=353
.Linfo_string28:
	.asciz	"extract_command_outfile"       # string offset=376
.Linfo_string29:
	.asciz	"get_command_redir"             # string offset=400
.Linfo_string30:
	.asciz	"delimiter"                     # string offset=418
.Linfo_string31:
	.asciz	"char"                          # string offset=428
.Linfo_string32:
	.asciz	"fd"                            # string offset=433
.Linfo_string33:
	.asciz	"int"                           # string offset=436
.Linfo_string34:
	.asciz	"buffer"                        # string offset=440
.Linfo_string35:
	.asciz	"minishell"                     # string offset=447
.Linfo_string36:
	.asciz	"dir"                           # string offset=457
.Linfo_string37:
	.asciz	"__dirstream"                   # string offset=461
.Linfo_string38:
	.asciz	"DIR"                           # string offset=473
.Linfo_string39:
	.asciz	"state"                         # string offset=477
.Linfo_string40:
	.asciz	"input"                         # string offset=483
.Linfo_string41:
	.asciz	"path"                          # string offset=489
.Linfo_string42:
	.asciz	"prompt"                        # string offset=494
.Linfo_string43:
	.asciz	"operator_nbr"                  # string offset=501
.Linfo_string44:
	.asciz	"env_array"                     # string offset=514
.Linfo_string45:
	.asciz	"env"                           # string offset=524
.Linfo_string46:
	.asciz	"value"                         # string offset=528
.Linfo_string47:
	.asciz	"next"                          # string offset=534
.Linfo_string48:
	.asciz	"s_env"                         # string offset=539
.Linfo_string49:
	.asciz	"t_env"                         # string offset=545
.Linfo_string50:
	.asciz	"local"                         # string offset=551
.Linfo_string51:
	.asciz	"s_var"                         # string offset=557
.Linfo_string52:
	.asciz	"t_var"                         # string offset=563
.Linfo_string53:
	.asciz	"syntax_tree"                   # string offset=569
.Linfo_string54:
	.asciz	"node"                          # string offset=581
.Linfo_string55:
	.asciz	"id"                            # string offset=586
.Linfo_string56:
	.asciz	"type"                          # string offset=589
.Linfo_string57:
	.asciz	"pipe_fd"                       # string offset=594
.Linfo_string58:
	.asciz	"left"                          # string offset=602
.Linfo_string59:
	.asciz	"pid"                           # string offset=607
.Linfo_string60:
	.asciz	"wstatus"                       # string offset=611
.Linfo_string61:
	.asciz	"arg"                           # string offset=619
.Linfo_string62:
	.asciz	"s_arg"                         # string offset=623
.Linfo_string63:
	.asciz	"t_arg"                         # string offset=629
.Linfo_string64:
	.asciz	"pipe"                          # string offset=635
.Linfo_string65:
	.asciz	"to_close"                      # string offset=640
.Linfo_string66:
	.asciz	"write"                         # string offset=649
.Linfo_string67:
	.asciz	"read"                          # string offset=655
.Linfo_string68:
	.asciz	"s_pipe"                        # string offset=660
.Linfo_string69:
	.asciz	"t_pipe"                        # string offset=667
.Linfo_string70:
	.asciz	"redir"                         # string offset=674
.Linfo_string71:
	.asciz	"in_fd"                         # string offset=680
.Linfo_string72:
	.asciz	"out_fd"                        # string offset=686
.Linfo_string73:
	.asciz	"s_infile"                      # string offset=693
.Linfo_string74:
	.asciz	"t_infile"                      # string offset=702
.Linfo_string75:
	.asciz	"s_outfile"                     # string offset=711
.Linfo_string76:
	.asciz	"t_outfile"                     # string offset=721
.Linfo_string77:
	.asciz	"s_redir"                       # string offset=731
.Linfo_string78:
	.asciz	"t_redir"                       # string offset=739
.Linfo_string79:
	.asciz	"assign"                        # string offset=747
.Linfo_string80:
	.asciz	"s_expan"                       # string offset=754
.Linfo_string81:
	.asciz	"t_expan"                       # string offset=762
.Linfo_string82:
	.asciz	"arg_array"                     # string offset=770
.Linfo_string83:
	.asciz	"prev"                          # string offset=780
.Linfo_string84:
	.asciz	"s_cmd"                         # string offset=785
.Linfo_string85:
	.asciz	"right"                         # string offset=791
.Linfo_string86:
	.asciz	"s_ast_node"                    # string offset=797
.Linfo_string87:
	.asciz	"t_ast_node"                    # string offset=808
.Linfo_string88:
	.asciz	"s_ast"                         # string offset=819
.Linfo_string89:
	.asciz	"t_ast"                         # string offset=825
.Linfo_string90:
	.asciz	"token_stream"                  # string offset=831
.Linfo_string91:
	.asciz	"quote_nbr"                     # string offset=844
.Linfo_string92:
	.asciz	"length"                        # string offset=854
.Linfo_string93:
	.asciz	"lexeme"                        # string offset=861
.Linfo_string94:
	.asciz	"s_token"                       # string offset=868
.Linfo_string95:
	.asciz	"t_token"                       # string offset=876
.Linfo_string96:
	.asciz	"sighandler"                    # string offset=884
.Linfo_string97:
	.asciz	"__sigaction_handler"           # string offset=895
.Linfo_string98:
	.asciz	"sa_handler"                    # string offset=915
.Linfo_string99:
	.asciz	"__sighandler_t"                # string offset=926
.Linfo_string100:
	.asciz	"sa_sigaction"                  # string offset=941
.Linfo_string101:
	.asciz	"si_signo"                      # string offset=954
.Linfo_string102:
	.asciz	"si_errno"                      # string offset=963
.Linfo_string103:
	.asciz	"si_code"                       # string offset=972
.Linfo_string104:
	.asciz	"__pad0"                        # string offset=980
.Linfo_string105:
	.asciz	"_sifields"                     # string offset=987
.Linfo_string106:
	.asciz	"_pad"                          # string offset=997
.Linfo_string107:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1002
.Linfo_string108:
	.asciz	"_kill"                         # string offset=1022
.Linfo_string109:
	.asciz	"si_pid"                        # string offset=1028
.Linfo_string110:
	.asciz	"__pid_t"                       # string offset=1035
.Linfo_string111:
	.asciz	"si_uid"                        # string offset=1043
.Linfo_string112:
	.asciz	"__uid_t"                       # string offset=1050
.Linfo_string113:
	.asciz	"_timer"                        # string offset=1058
.Linfo_string114:
	.asciz	"si_tid"                        # string offset=1065
.Linfo_string115:
	.asciz	"si_overrun"                    # string offset=1072
.Linfo_string116:
	.asciz	"si_sigval"                     # string offset=1083
.Linfo_string117:
	.asciz	"sival_int"                     # string offset=1093
.Linfo_string118:
	.asciz	"sival_ptr"                     # string offset=1103
.Linfo_string119:
	.asciz	"sigval"                        # string offset=1113
.Linfo_string120:
	.asciz	"__sigval_t"                    # string offset=1120
.Linfo_string121:
	.asciz	"_rt"                           # string offset=1131
.Linfo_string122:
	.asciz	"_sigchld"                      # string offset=1135
.Linfo_string123:
	.asciz	"si_status"                     # string offset=1144
.Linfo_string124:
	.asciz	"si_utime"                      # string offset=1154
.Linfo_string125:
	.asciz	"long int"                      # string offset=1163
.Linfo_string126:
	.asciz	"__clock_t"                     # string offset=1172
.Linfo_string127:
	.asciz	"si_stime"                      # string offset=1182
.Linfo_string128:
	.asciz	"_sigfault"                     # string offset=1191
.Linfo_string129:
	.asciz	"si_addr"                       # string offset=1201
.Linfo_string130:
	.asciz	"si_addr_lsb"                   # string offset=1209
.Linfo_string131:
	.asciz	"short"                         # string offset=1221
.Linfo_string132:
	.asciz	"_bounds"                       # string offset=1227
.Linfo_string133:
	.asciz	"_addr_bnd"                     # string offset=1235
.Linfo_string134:
	.asciz	"_lower"                        # string offset=1245
.Linfo_string135:
	.asciz	"_upper"                        # string offset=1252
.Linfo_string136:
	.asciz	"_pkey"                         # string offset=1259
.Linfo_string137:
	.asciz	"__uint32_t"                    # string offset=1265
.Linfo_string138:
	.asciz	"_sigpoll"                      # string offset=1276
.Linfo_string139:
	.asciz	"si_band"                       # string offset=1285
.Linfo_string140:
	.asciz	"si_fd"                         # string offset=1293
.Linfo_string141:
	.asciz	"_sigsys"                       # string offset=1299
.Linfo_string142:
	.asciz	"_call_addr"                    # string offset=1307
.Linfo_string143:
	.asciz	"_syscall"                      # string offset=1318
.Linfo_string144:
	.asciz	"_arch"                         # string offset=1327
.Linfo_string145:
	.asciz	"siginfo_t"                     # string offset=1333
.Linfo_string146:
	.asciz	"sa_mask"                       # string offset=1343
.Linfo_string147:
	.asciz	"__val"                         # string offset=1351
.Linfo_string148:
	.asciz	"long unsigned int"             # string offset=1357
.Linfo_string149:
	.asciz	"__sigset_t"                    # string offset=1375
.Linfo_string150:
	.asciz	"sa_flags"                      # string offset=1386
.Linfo_string151:
	.asciz	"sa_restorer"                   # string offset=1395
.Linfo_string152:
	.asciz	"sigaction"                     # string offset=1407
.Linfo_string153:
	.asciz	"statbuf"                       # string offset=1417
.Linfo_string154:
	.asciz	"st_dev"                        # string offset=1425
.Linfo_string155:
	.asciz	"__dev_t"                       # string offset=1432
.Linfo_string156:
	.asciz	"st_ino"                        # string offset=1440
.Linfo_string157:
	.asciz	"__ino_t"                       # string offset=1447
.Linfo_string158:
	.asciz	"st_nlink"                      # string offset=1455
.Linfo_string159:
	.asciz	"__nlink_t"                     # string offset=1464
.Linfo_string160:
	.asciz	"st_mode"                       # string offset=1474
.Linfo_string161:
	.asciz	"__mode_t"                      # string offset=1482
.Linfo_string162:
	.asciz	"st_uid"                        # string offset=1491
.Linfo_string163:
	.asciz	"st_gid"                        # string offset=1498
.Linfo_string164:
	.asciz	"__gid_t"                       # string offset=1505
.Linfo_string165:
	.asciz	"st_rdev"                       # string offset=1513
.Linfo_string166:
	.asciz	"st_size"                       # string offset=1521
.Linfo_string167:
	.asciz	"__off_t"                       # string offset=1529
.Linfo_string168:
	.asciz	"st_blksize"                    # string offset=1537
.Linfo_string169:
	.asciz	"__blksize_t"                   # string offset=1548
.Linfo_string170:
	.asciz	"st_blocks"                     # string offset=1560
.Linfo_string171:
	.asciz	"__blkcnt_t"                    # string offset=1570
.Linfo_string172:
	.asciz	"st_atim"                       # string offset=1581
.Linfo_string173:
	.asciz	"tv_sec"                        # string offset=1589
.Linfo_string174:
	.asciz	"__time_t"                      # string offset=1596
.Linfo_string175:
	.asciz	"tv_nsec"                       # string offset=1605
.Linfo_string176:
	.asciz	"__syscall_slong_t"             # string offset=1613
.Linfo_string177:
	.asciz	"timespec"                      # string offset=1631
.Linfo_string178:
	.asciz	"st_mtim"                       # string offset=1640
.Linfo_string179:
	.asciz	"st_ctim"                       # string offset=1648
.Linfo_string180:
	.asciz	"__glibc_reserved"              # string offset=1656
.Linfo_string181:
	.asciz	"stat"                          # string offset=1673
.Linfo_string182:
	.asciz	"term"                          # string offset=1678
.Linfo_string183:
	.asciz	"c_iflag"                       # string offset=1683
.Linfo_string184:
	.asciz	"tcflag_t"                      # string offset=1691
.Linfo_string185:
	.asciz	"c_oflag"                       # string offset=1700
.Linfo_string186:
	.asciz	"c_cflag"                       # string offset=1708
.Linfo_string187:
	.asciz	"c_lflag"                       # string offset=1716
.Linfo_string188:
	.asciz	"c_line"                        # string offset=1724
.Linfo_string189:
	.asciz	"unsigned char"                 # string offset=1731
.Linfo_string190:
	.asciz	"cc_t"                          # string offset=1745
.Linfo_string191:
	.asciz	"c_cc"                          # string offset=1750
.Linfo_string192:
	.asciz	"c_ispeed"                      # string offset=1755
.Linfo_string193:
	.asciz	"speed_t"                       # string offset=1764
.Linfo_string194:
	.asciz	"c_ospeed"                      # string offset=1772
.Linfo_string195:
	.asciz	"termios"                       # string offset=1781
.Linfo_string196:
	.asciz	"s_minishell"                   # string offset=1789
.Linfo_string197:
	.asciz	"t_minishell"                   # string offset=1801
.Linfo_string198:
	.asciz	"filename"                      # string offset=1813
.Linfo_string199:
	.asciz	"token"                         # string offset=1822
.Linfo_string200:
	.asciz	"index"                         # string offset=1828
.Linfo_string201:
	.asciz	"new"                           # string offset=1834
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
	.addrsig_sym extract_command_infile
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym get_redir_filename
	.addrsig_sym extract_command_outfile
	.section	.debug_line,"",@progbits
.Lline_table_start0:

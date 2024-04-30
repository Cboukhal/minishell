	.text
	.file	"redir_extract.c"
	.globl	get_redir_heredoc               # -- Begin function get_redir_heredoc
	.p2align	4, 0x90
	.type	get_redir_heredoc,@function
get_redir_heredoc:                      # @get_redir_heredoc
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/redir_extract.c"
	.loc	1 16 0                          # src/parsing/redir_extract.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 21 11 prologue_end            # src/parsing/redir_extract.c:21:11
	movl	$1, g_signal
	.loc	1 22 33                         # src/parsing/redir_extract.c:22:33
	movq	-8(%rbp), %rdi
	.loc	1 22 22 is_stmt 0               # src/parsing/redir_extract.c:22:22
	movabsq	$.L.str, %rsi
	callq	ft_strjoin
	.loc	1 22 20                         # src/parsing/redir_extract.c:22:20
	movq	%rax, -32(%rbp)
	.loc	1 23 7 is_stmt 1                # src/parsing/redir_extract.c:23:7
	movabsq	$.L.str.1, %rdi
	movl	$577, %esi                      # imm = 0x241
	movl	$384, %edx                      # imm = 0x180
	movb	$0, %al
	callq	open
	.loc	1 23 5 is_stmt 0                # src/parsing/redir_extract.c:23:5
	movl	%eax, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp1:
	.loc	1 26 3 is_stmt 1                # src/parsing/redir_extract.c:26:3
	movl	$1, %edi
	movabsq	$.L.str.2, %rsi
	movl	$2, %edx
	callq	write
	.loc	1 27 12                         # src/parsing/redir_extract.c:27:12
	movl	$1, %edi
	callq	get_next_line
	.loc	1 27 10 is_stmt 0               # src/parsing/redir_extract.c:27:10
	movq	%rax, -24(%rbp)
.Ltmp2:
	.loc	1 28 8 is_stmt 1                # src/parsing/redir_extract.c:28:8
	cmpq	$0, -24(%rbp)
	.loc	1 28 15 is_stmt 0               # src/parsing/redir_extract.c:28:15
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 28 28                         # src/parsing/redir_extract.c:28:28
	movq	-24(%rbp), %rdi
	.loc	1 28 36                         # src/parsing/redir_extract.c:28:36
	movq	-32(%rbp), %rsi
	.loc	1 28 18                         # src/parsing/redir_extract.c:28:18
	callq	ft_strcmp
	.loc	1 28 55                         # src/parsing/redir_extract.c:28:55
	cmpl	$0, %eax
.Ltmp3:
	.loc	1 28 7                          # src/parsing/redir_extract.c:28:7
	jne	.LBB0_4
.LBB0_3:
.Ltmp4:
	.loc	1 29 4 is_stmt 1                # src/parsing/redir_extract.c:29:4
	jmp	.LBB0_5
.Ltmp5:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 30 9                          # src/parsing/redir_extract.c:30:9
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	.loc	1 30 13 is_stmt 0               # src/parsing/redir_extract.c:30:13
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 30 31                         # src/parsing/redir_extract.c:30:31
	movq	-24(%rbp), %rdi
	.loc	1 30 21                         # src/parsing/redir_extract.c:30:21
	callq	ft_strlen
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 30 3                          # src/parsing/redir_extract.c:30:3
	callq	write
	.loc	1 31 8 is_stmt 1                # src/parsing/redir_extract.c:31:8
	movq	-24(%rbp), %rdi
	.loc	1 31 3 is_stmt 0                # src/parsing/redir_extract.c:31:3
	callq	free
.Ltmp6:
	.loc	1 24 2 is_stmt 1                # src/parsing/redir_extract.c:24:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 33 7                          # src/parsing/redir_extract.c:33:7
	movq	-24(%rbp), %rdi
	.loc	1 33 2 is_stmt 0                # src/parsing/redir_extract.c:33:2
	callq	free
	.loc	1 34 7 is_stmt 1                # src/parsing/redir_extract.c:34:7
	movq	-32(%rbp), %rdi
	.loc	1 34 2 is_stmt 0                # src/parsing/redir_extract.c:34:2
	callq	free
	.loc	1 35 8 is_stmt 1                # src/parsing/redir_extract.c:35:8
	movl	-12(%rbp), %edi
	.loc	1 35 2 is_stmt 0                # src/parsing/redir_extract.c:35:2
	callq	close
	.loc	1 36 1 is_stmt 1                # src/parsing/redir_extract.c:36:1
	addq	$48, %rsp
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
	.loc	1 39 0                          # src/parsing/redir_extract.c:39:0
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
	.loc	1 40 6 prologue_end             # src/parsing/redir_extract.c:40:6
	cmpq	$0, -24(%rbp)
	.loc	1 40 15 is_stmt 0               # src/parsing/redir_extract.c:40:15
	je	.LBB1_5
# %bb.1:
	.loc	1 40 28                         # src/parsing/redir_extract.c:40:28
	movq	-24(%rbp), %rdi
	.loc	1 40 18                         # src/parsing/redir_extract.c:40:18
	callq	ft_strlen
	.loc	1 40 38                         # src/parsing/redir_extract.c:40:38
	cmpq	$0, %rax
.Ltmp9:
	.loc	1 40 6                          # src/parsing/redir_extract.c:40:6
	jbe	.LBB1_5
# %bb.2:
.Ltmp10:
	.loc	1 42 14 is_stmt 1               # src/parsing/redir_extract.c:42:14
	movq	-24(%rbp), %rdi
	.loc	1 42 7 is_stmt 0                # src/parsing/redir_extract.c:42:7
	xorl	%esi, %esi
	callq	access
	.loc	1 42 30                         # src/parsing/redir_extract.c:42:30
	cmpl	$0, %eax
.Ltmp11:
	.loc	1 42 7                          # src/parsing/redir_extract.c:42:7
	jne	.LBB1_4
# %bb.3:
.Ltmp12:
	.loc	1 43 4 is_stmt 1                # src/parsing/redir_extract.c:43:4
	movb	$1, -1(%rbp)
	jmp	.LBB1_6
.Ltmp13:
.LBB1_4:
	.loc	1 44 31                         # src/parsing/redir_extract.c:44:31
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	1 44 50 is_stmt 0               # src/parsing/redir_extract.c:44:50
	callq	__errno_location
	movl	(%rax), %edi
	.loc	1 44 41                         # src/parsing/redir_extract.c:44:41
	callq	strerror
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 44 3                          # src/parsing/redir_extract.c:44:3
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 45 3 is_stmt 1                # src/parsing/redir_extract.c:45:3
	movq	-16(%rbp), %rax
	.loc	1 45 26 is_stmt 0               # src/parsing/redir_extract.c:45:26
	movl	$1, 44(%rax)
.Ltmp14:
.LBB1_5:
	.loc	1 47 2 is_stmt 1                # src/parsing/redir_extract.c:47:2
	movb	$0, -1(%rbp)
.LBB1_6:
	.loc	1 48 1                          # src/parsing/redir_extract.c:48:1
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
	.globl	add_infile_to_list              # -- Begin function add_infile_to_list
	.p2align	4, 0x90
	.type	add_infile_to_list,@function
add_infile_to_list:                     # @add_infile_to_list
.Lfunc_begin2:
	.loc	1 72 0                          # src/parsing/redir_extract.c:72:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp16:
	.loc	1 75 8 prologue_end             # src/parsing/redir_extract.c:75:8
	movq	-8(%rbp), %rax
	.loc	1 75 6 is_stmt 0                # src/parsing/redir_extract.c:75:6
	cmpq	$0, (%rax)
.Ltmp17:
	.loc	1 75 6                          # src/parsing/redir_extract.c:75:6
	je	.LBB2_7
# %bb.1:
.Ltmp18:
	.loc	1 77 13 is_stmt 1               # src/parsing/redir_extract.c:77:13
	movq	-8(%rbp), %rax
	.loc	1 77 12 is_stmt 0               # src/parsing/redir_extract.c:77:12
	movq	(%rax), %rax
	.loc	1 77 9                          # src/parsing/redir_extract.c:77:9
	movq	%rax, -24(%rbp)
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	.loc	1 78 3 is_stmt 1                # src/parsing/redir_extract.c:78:3
	cmpq	$0, -24(%rbp)
	je	.LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
.Ltmp19:
	.loc	1 80 8                          # src/parsing/redir_extract.c:80:8
	movq	-24(%rbp), %rax
	.loc	1 80 20 is_stmt 0               # src/parsing/redir_extract.c:80:20
	cmpq	$0, 16(%rax)
.Ltmp20:
	.loc	1 80 8                          # src/parsing/redir_extract.c:80:8
	jne	.LBB2_5
# %bb.4:
.Ltmp21:
	.loc	1 81 5 is_stmt 1                # src/parsing/redir_extract.c:81:5
	jmp	.LBB2_6
.Ltmp22:
.LBB2_5:                                #   in Loop: Header=BB2_2 Depth=1
	.loc	1 82 12                         # src/parsing/redir_extract.c:82:12
	movq	-24(%rbp), %rax
	.loc	1 82 19 is_stmt 0               # src/parsing/redir_extract.c:82:19
	movq	16(%rax), %rax
	.loc	1 82 10                         # src/parsing/redir_extract.c:82:10
	movq	%rax, -24(%rbp)
.Ltmp23:
	.loc	1 78 3 is_stmt 1                # src/parsing/redir_extract.c:78:3
	jmp	.LBB2_2
.LBB2_6:
	.loc	1 84 19                         # src/parsing/redir_extract.c:84:19
	movq	-16(%rbp), %rax
	.loc	1 84 18 is_stmt 0               # src/parsing/redir_extract.c:84:18
	movq	(%rax), %rcx
	.loc	1 84 3                          # src/parsing/redir_extract.c:84:3
	movq	-24(%rbp), %rax
	.loc	1 84 15                         # src/parsing/redir_extract.c:84:15
	movq	%rcx, 16(%rax)
	.loc	1 85 2 is_stmt 1                # src/parsing/redir_extract.c:85:2
	jmp	.LBB2_8
.Ltmp24:
.LBB2_7:
	.loc	1 87 17                         # src/parsing/redir_extract.c:87:17
	movq	-16(%rbp), %rax
	.loc	1 87 16 is_stmt 0               # src/parsing/redir_extract.c:87:16
	movq	(%rax), %rcx
	.loc	1 87 5                          # src/parsing/redir_extract.c:87:5
	movq	-8(%rbp), %rax
	.loc	1 87 13                         # src/parsing/redir_extract.c:87:13
	movq	%rcx, (%rax)
.Ltmp25:
.LBB2_8:
	.loc	1 88 1 is_stmt 1                # src/parsing/redir_extract.c:88:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end2:
	.size	add_infile_to_list, .Lfunc_end2-add_infile_to_list
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/tmp/heredoc"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"> "
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"bash: %s: %s\n"
	.size	.L.str.3, 14

	.file	2 "/usr/include" "dirent.h"
	.file	3 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/../../include/minishell.h"
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	1                               # Abbrev [1] 0xb:0xb2c DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x40:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	246                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	258                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	246                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	246                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x79:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	239                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x92:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	265                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string182                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	246                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xaf:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xc4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string184                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	1186                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xef:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xf6:0x5 DW_TAG_pointer_type
	.long	251                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xfb:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x102:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x109:0x5 DW_TAG_pointer_type
	.long	270                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x10e:0xb DW_TAG_typedef
	.long	281                             # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x119:0xbe DW_TAG_structure_type
	.long	.Linfo_string180                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x122:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	471                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12e:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13a:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x146:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x152:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x15e:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x16a:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x176:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x182:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x18e:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	563                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x19a:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	629                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1a6:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1401                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1b2:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1be:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2354                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1ca:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2703                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1d7:0x5 DW_TAG_pointer_type
	.long	476                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1dc:0xb DW_TAG_typedef
	.long	487                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1e7:0x5 DW_TAG_structure_type
	.long	.Linfo_string15                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x1ec:0x5 DW_TAG_pointer_type
	.long	246                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1f1:0x5 DW_TAG_pointer_type
	.long	502                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1f6:0xb DW_TAG_typedef
	.long	513                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x201:0x2d DW_TAG_structure_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x209:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x215:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x221:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	558                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x22e:0x5 DW_TAG_pointer_type
	.long	513                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x233:0x5 DW_TAG_pointer_type
	.long	568                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x238:0xb DW_TAG_typedef
	.long	579                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x243:0x2d DW_TAG_structure_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x24b:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x257:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x263:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	624                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x270:0x5 DW_TAG_pointer_type
	.long	579                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x275:0x5 DW_TAG_pointer_type
	.long	634                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x27a:0xb DW_TAG_typedef
	.long	645                             # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x285:0x2d DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x28d:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	690                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x299:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1396                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2a5:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1396                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2b2:0x5 DW_TAG_pointer_type
	.long	695                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2b7:0xb DW_TAG_typedef
	.long	706                             # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2c2:0x51 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2ca:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2d6:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2e2:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	787                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2ee:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2fa:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	792                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x306:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	792                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x313:0x5 DW_TAG_pointer_type
	.long	258                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x318:0x5 DW_TAG_pointer_type
	.long	797                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x31d:0xc9 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x325:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x331:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x33d:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x349:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x355:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x361:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x36d:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	998                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x379:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	1052                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x385:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1113                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x391:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1186                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x39d:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	563                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3a9:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1264                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3b5:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1342                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3c1:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3cd:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	792                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3d9:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	792                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3e6:0x5 DW_TAG_pointer_type
	.long	1003                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3eb:0xb DW_TAG_typedef
	.long	1014                            # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3f6:0x21 DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3fe:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x40a:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1047                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x417:0x5 DW_TAG_pointer_type
	.long	1014                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x41c:0x5 DW_TAG_pointer_type
	.long	1057                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x421:0xb DW_TAG_typedef
	.long	1068                            # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x42c:0x2d DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x434:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	787                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x440:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	787                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x44c:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	787                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x459:0x5 DW_TAG_pointer_type
	.long	1118                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x45e:0xb DW_TAG_typedef
	.long	1129                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x469:0x39 DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x471:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x47d:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x489:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1186                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x495:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1264                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4a2:0x5 DW_TAG_pointer_type
	.long	1191                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4a7:0xb DW_TAG_typedef
	.long	1202                            # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4b2:0x39 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4ba:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4c6:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4d2:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4de:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1259                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4eb:0x5 DW_TAG_pointer_type
	.long	1202                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4f0:0x5 DW_TAG_pointer_type
	.long	1269                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4f5:0xb DW_TAG_typedef
	.long	1280                            # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x500:0x39 DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x508:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x514:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x520:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x52c:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1337                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x539:0x5 DW_TAG_pointer_type
	.long	1280                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x53e:0x5 DW_TAG_pointer_type
	.long	1347                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x543:0xb DW_TAG_typedef
	.long	1358                            # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x54e:0x21 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x556:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x562:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1391                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x56f:0x5 DW_TAG_pointer_type
	.long	1358                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x574:0x5 DW_TAG_pointer_type
	.long	645                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x579:0x5 DW_TAG_pointer_type
	.long	1406                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x57e:0xb DW_TAG_typedef
	.long	1417                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x589:0x5d DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x591:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x59d:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5a9:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5b5:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5c1:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1342                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5cd:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1510                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5d9:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1510                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5e6:0x5 DW_TAG_pointer_type
	.long	1417                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x5eb:0x56 DW_TAG_structure_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5f3:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1535                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5ff:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x603:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1601                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x60f:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1624                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x61c:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2301                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x628:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x634:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2348                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x641:0xb DW_TAG_typedef
	.long	1612                            # DW_AT_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x64c:0x5 DW_TAG_pointer_type
	.long	1617                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x651:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x652:0x5 DW_TAG_formal_parameter
	.long	258                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x658:0x5 DW_TAG_pointer_type
	.long	1629                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x65d:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x65e:0x5 DW_TAG_formal_parameter
	.long	258                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x663:0x5 DW_TAG_formal_parameter
	.long	1646                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x668:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x66e:0x5 DW_TAG_pointer_type
	.long	1651                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x673:0xb DW_TAG_typedef
	.long	1662                            # DW_AT_type
	.long	.Linfo_string129                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x67e:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x682:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x68e:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x69a:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6a6:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6b2:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1726                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6be:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6c2:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2173                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6ce:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1754                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6da:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6de:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6ea:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x6f7:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1795                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x703:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x707:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x713:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x71f:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2221                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x72c:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1848                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x738:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x73c:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x748:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x754:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2221                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x761:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1901                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x76d:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x771:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x77d:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x789:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x795:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2265                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7a1:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2265                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7ae:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	1978                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7ba:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7be:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7ca:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2283                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7d6:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2018                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7e2:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7e6:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2034                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7f2:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7f6:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x802:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x80f:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2290                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x81d:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2089                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x829:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x82d:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2276                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x839:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x846:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2130                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x852:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x856:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x862:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x86e:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2214                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x87d:0xc DW_TAG_array_type
	.long	258                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x882:0x6 DW_TAG_subrange_type
	.long	2185                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x889:0x7 DW_TAG_base_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x890:0xb DW_TAG_typedef
	.long	258                             # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x89b:0xb DW_TAG_typedef
	.long	2214                            # DW_AT_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x8a6:0x7 DW_TAG_base_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x8ad:0xb DW_TAG_typedef
	.long	2232                            # DW_AT_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x8b8:0x21 DW_TAG_union_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8c0:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8cc:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x8d9:0xb DW_TAG_typedef
	.long	2276                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x8e4:0x7 DW_TAG_base_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x8eb:0x7 DW_TAG_base_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x8f2:0xb DW_TAG_typedef
	.long	2214                            # DW_AT_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x8fd:0xb DW_TAG_typedef
	.long	2312                            # DW_AT_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x908:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x90c:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2329                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x919:0xc DW_TAG_array_type
	.long	2341                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x91e:0x6 DW_TAG_subrange_type
	.long	2185                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x925:0x7 DW_TAG_base_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x92c:0x5 DW_TAG_pointer_type
	.long	2353                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x931:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x932:0x5 DW_TAG_pointer_type
	.long	2359                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x937:0xbd DW_TAG_structure_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x93f:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x94b:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2559                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x957:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2570                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x963:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2581                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x96f:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x97b:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2592                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x987:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x993:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x99f:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2603                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9ab:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2614                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9b7:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2625                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9c3:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2636                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9cf:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2636                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9db:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2636                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9e7:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2691                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x9f4:0xb DW_TAG_typedef
	.long	2341                            # DW_AT_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9ff:0xb DW_TAG_typedef
	.long	2341                            # DW_AT_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa0a:0xb DW_TAG_typedef
	.long	2341                            # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa15:0xb DW_TAG_typedef
	.long	2214                            # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa20:0xb DW_TAG_typedef
	.long	2214                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa2b:0xb DW_TAG_typedef
	.long	2276                            # DW_AT_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa36:0xb DW_TAG_typedef
	.long	2276                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa41:0xb DW_TAG_typedef
	.long	2276                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa4c:0x21 DW_TAG_structure_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa54:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2669                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa60:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2680                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xa6d:0xb DW_TAG_typedef
	.long	2276                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa78:0xb DW_TAG_typedef
	.long	2276                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xa83:0xc DW_TAG_array_type
	.long	2680                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xa88:0x6 DW_TAG_subrange_type
	.long	2185                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa8f:0x5 DW_TAG_pointer_type
	.long	2708                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xa94:0x69 DW_TAG_structure_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa9c:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2813                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaa8:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2813                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xab4:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2813                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xac0:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2813                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xacc:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2824                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xad8:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xae4:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2854                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaf0:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2854                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xafd:0xb DW_TAG_typedef
	.long	2214                            # DW_AT_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb08:0xb DW_TAG_typedef
	.long	2835                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xb13:0x7 DW_TAG_base_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0xb1a:0xc DW_TAG_array_type
	.long	2824                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb1f:0x6 DW_TAG_subrange_type
	.long	2185                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb26:0xb DW_TAG_typedef
	.long	2214                            # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb31:0x5 DW_TAG_pointer_type
	.long	1186                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/redir_extract.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=66
.Linfo_string3:
	.asciz	"get_redir_heredoc"             # string offset=135
.Linfo_string4:
	.asciz	"is_file_accessible"            # string offset=153
.Linfo_string5:
	.asciz	"_Bool"                         # string offset=172
.Linfo_string6:
	.asciz	"add_infile_to_list"            # string offset=178
.Linfo_string7:
	.asciz	"delimiter"                     # string offset=197
.Linfo_string8:
	.asciz	"char"                          # string offset=207
.Linfo_string9:
	.asciz	"fd"                            # string offset=212
.Linfo_string10:
	.asciz	"int"                           # string offset=215
.Linfo_string11:
	.asciz	"buffer"                        # string offset=219
.Linfo_string12:
	.asciz	"newline_delimiter"             # string offset=226
.Linfo_string13:
	.asciz	"minishell"                     # string offset=244
.Linfo_string14:
	.asciz	"dir"                           # string offset=254
.Linfo_string15:
	.asciz	"__dirstream"                   # string offset=258
.Linfo_string16:
	.asciz	"DIR"                           # string offset=270
.Linfo_string17:
	.asciz	"state"                         # string offset=274
.Linfo_string18:
	.asciz	"input"                         # string offset=280
.Linfo_string19:
	.asciz	"path"                          # string offset=286
.Linfo_string20:
	.asciz	"prompt"                        # string offset=291
.Linfo_string21:
	.asciz	"operator_nbr"                  # string offset=298
.Linfo_string22:
	.asciz	"exit_status"                   # string offset=311
.Linfo_string23:
	.asciz	"env_array"                     # string offset=323
.Linfo_string24:
	.asciz	"env"                           # string offset=333
.Linfo_string25:
	.asciz	"name"                          # string offset=337
.Linfo_string26:
	.asciz	"value"                         # string offset=342
.Linfo_string27:
	.asciz	"next"                          # string offset=348
.Linfo_string28:
	.asciz	"s_env"                         # string offset=353
.Linfo_string29:
	.asciz	"t_env"                         # string offset=359
.Linfo_string30:
	.asciz	"local"                         # string offset=365
.Linfo_string31:
	.asciz	"s_var"                         # string offset=371
.Linfo_string32:
	.asciz	"t_var"                         # string offset=377
.Linfo_string33:
	.asciz	"syntax_tree"                   # string offset=383
.Linfo_string34:
	.asciz	"node"                          # string offset=395
.Linfo_string35:
	.asciz	"id"                            # string offset=400
.Linfo_string36:
	.asciz	"type"                          # string offset=403
.Linfo_string37:
	.asciz	"pipe_fd"                       # string offset=408
.Linfo_string38:
	.asciz	"left"                          # string offset=416
.Linfo_string39:
	.asciz	"pid"                           # string offset=421
.Linfo_string40:
	.asciz	"wstatus"                       # string offset=425
.Linfo_string41:
	.asciz	"arg"                           # string offset=433
.Linfo_string42:
	.asciz	"s_arg"                         # string offset=437
.Linfo_string43:
	.asciz	"t_arg"                         # string offset=443
.Linfo_string44:
	.asciz	"pipe"                          # string offset=449
.Linfo_string45:
	.asciz	"to_close"                      # string offset=454
.Linfo_string46:
	.asciz	"write"                         # string offset=463
.Linfo_string47:
	.asciz	"read"                          # string offset=469
.Linfo_string48:
	.asciz	"s_pipe"                        # string offset=474
.Linfo_string49:
	.asciz	"t_pipe"                        # string offset=481
.Linfo_string50:
	.asciz	"redir"                         # string offset=488
.Linfo_string51:
	.asciz	"in_fd"                         # string offset=494
.Linfo_string52:
	.asciz	"out_fd"                        # string offset=500
.Linfo_string53:
	.asciz	"infile"                        # string offset=507
.Linfo_string54:
	.asciz	"s_infile"                      # string offset=514
.Linfo_string55:
	.asciz	"t_infile"                      # string offset=523
.Linfo_string56:
	.asciz	"outfile"                       # string offset=532
.Linfo_string57:
	.asciz	"s_outfile"                     # string offset=540
.Linfo_string58:
	.asciz	"t_outfile"                     # string offset=550
.Linfo_string59:
	.asciz	"s_redir"                       # string offset=560
.Linfo_string60:
	.asciz	"t_redir"                       # string offset=568
.Linfo_string61:
	.asciz	"assign"                        # string offset=576
.Linfo_string62:
	.asciz	"expansion"                     # string offset=583
.Linfo_string63:
	.asciz	"s_expan"                       # string offset=593
.Linfo_string64:
	.asciz	"t_expan"                       # string offset=601
.Linfo_string65:
	.asciz	"arg_array"                     # string offset=609
.Linfo_string66:
	.asciz	"prev"                          # string offset=619
.Linfo_string67:
	.asciz	"s_cmd"                         # string offset=624
.Linfo_string68:
	.asciz	"right"                         # string offset=630
.Linfo_string69:
	.asciz	"s_ast_node"                    # string offset=636
.Linfo_string70:
	.asciz	"t_ast_node"                    # string offset=647
.Linfo_string71:
	.asciz	"s_ast"                         # string offset=658
.Linfo_string72:
	.asciz	"t_ast"                         # string offset=664
.Linfo_string73:
	.asciz	"token_stream"                  # string offset=670
.Linfo_string74:
	.asciz	"quote_nbr"                     # string offset=683
.Linfo_string75:
	.asciz	"length"                        # string offset=693
.Linfo_string76:
	.asciz	"lexeme"                        # string offset=700
.Linfo_string77:
	.asciz	"s_token"                       # string offset=707
.Linfo_string78:
	.asciz	"t_token"                       # string offset=715
.Linfo_string79:
	.asciz	"sighandler"                    # string offset=723
.Linfo_string80:
	.asciz	"__sigaction_handler"           # string offset=734
.Linfo_string81:
	.asciz	"sa_handler"                    # string offset=754
.Linfo_string82:
	.asciz	"__sighandler_t"                # string offset=765
.Linfo_string83:
	.asciz	"sa_sigaction"                  # string offset=780
.Linfo_string84:
	.asciz	"si_signo"                      # string offset=793
.Linfo_string85:
	.asciz	"si_errno"                      # string offset=802
.Linfo_string86:
	.asciz	"si_code"                       # string offset=811
.Linfo_string87:
	.asciz	"__pad0"                        # string offset=819
.Linfo_string88:
	.asciz	"_sifields"                     # string offset=826
.Linfo_string89:
	.asciz	"_pad"                          # string offset=836
.Linfo_string90:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=841
.Linfo_string91:
	.asciz	"_kill"                         # string offset=861
.Linfo_string92:
	.asciz	"si_pid"                        # string offset=867
.Linfo_string93:
	.asciz	"__pid_t"                       # string offset=874
.Linfo_string94:
	.asciz	"si_uid"                        # string offset=882
.Linfo_string95:
	.asciz	"unsigned int"                  # string offset=889
.Linfo_string96:
	.asciz	"__uid_t"                       # string offset=902
.Linfo_string97:
	.asciz	"_timer"                        # string offset=910
.Linfo_string98:
	.asciz	"si_tid"                        # string offset=917
.Linfo_string99:
	.asciz	"si_overrun"                    # string offset=924
.Linfo_string100:
	.asciz	"si_sigval"                     # string offset=935
.Linfo_string101:
	.asciz	"sival_int"                     # string offset=945
.Linfo_string102:
	.asciz	"sival_ptr"                     # string offset=955
.Linfo_string103:
	.asciz	"sigval"                        # string offset=965
.Linfo_string104:
	.asciz	"__sigval_t"                    # string offset=972
.Linfo_string105:
	.asciz	"_rt"                           # string offset=983
.Linfo_string106:
	.asciz	"_sigchld"                      # string offset=987
.Linfo_string107:
	.asciz	"si_status"                     # string offset=996
.Linfo_string108:
	.asciz	"si_utime"                      # string offset=1006
.Linfo_string109:
	.asciz	"long int"                      # string offset=1015
.Linfo_string110:
	.asciz	"__clock_t"                     # string offset=1024
.Linfo_string111:
	.asciz	"si_stime"                      # string offset=1034
.Linfo_string112:
	.asciz	"_sigfault"                     # string offset=1043
.Linfo_string113:
	.asciz	"si_addr"                       # string offset=1053
.Linfo_string114:
	.asciz	"si_addr_lsb"                   # string offset=1061
.Linfo_string115:
	.asciz	"short"                         # string offset=1073
.Linfo_string116:
	.asciz	"_bounds"                       # string offset=1079
.Linfo_string117:
	.asciz	"_addr_bnd"                     # string offset=1087
.Linfo_string118:
	.asciz	"_lower"                        # string offset=1097
.Linfo_string119:
	.asciz	"_upper"                        # string offset=1104
.Linfo_string120:
	.asciz	"_pkey"                         # string offset=1111
.Linfo_string121:
	.asciz	"__uint32_t"                    # string offset=1117
.Linfo_string122:
	.asciz	"_sigpoll"                      # string offset=1128
.Linfo_string123:
	.asciz	"si_band"                       # string offset=1137
.Linfo_string124:
	.asciz	"si_fd"                         # string offset=1145
.Linfo_string125:
	.asciz	"_sigsys"                       # string offset=1151
.Linfo_string126:
	.asciz	"_call_addr"                    # string offset=1159
.Linfo_string127:
	.asciz	"_syscall"                      # string offset=1170
.Linfo_string128:
	.asciz	"_arch"                         # string offset=1179
.Linfo_string129:
	.asciz	"siginfo_t"                     # string offset=1185
.Linfo_string130:
	.asciz	"sa_mask"                       # string offset=1195
.Linfo_string131:
	.asciz	"__val"                         # string offset=1203
.Linfo_string132:
	.asciz	"long unsigned int"             # string offset=1209
.Linfo_string133:
	.asciz	"__sigset_t"                    # string offset=1227
.Linfo_string134:
	.asciz	"sa_flags"                      # string offset=1238
.Linfo_string135:
	.asciz	"sa_restorer"                   # string offset=1247
.Linfo_string136:
	.asciz	"sigaction"                     # string offset=1259
.Linfo_string137:
	.asciz	"statbuf"                       # string offset=1269
.Linfo_string138:
	.asciz	"st_dev"                        # string offset=1277
.Linfo_string139:
	.asciz	"__dev_t"                       # string offset=1284
.Linfo_string140:
	.asciz	"st_ino"                        # string offset=1292
.Linfo_string141:
	.asciz	"__ino_t"                       # string offset=1299
.Linfo_string142:
	.asciz	"st_nlink"                      # string offset=1307
.Linfo_string143:
	.asciz	"__nlink_t"                     # string offset=1316
.Linfo_string144:
	.asciz	"st_mode"                       # string offset=1326
.Linfo_string145:
	.asciz	"__mode_t"                      # string offset=1334
.Linfo_string146:
	.asciz	"st_uid"                        # string offset=1343
.Linfo_string147:
	.asciz	"st_gid"                        # string offset=1350
.Linfo_string148:
	.asciz	"__gid_t"                       # string offset=1357
.Linfo_string149:
	.asciz	"st_rdev"                       # string offset=1365
.Linfo_string150:
	.asciz	"st_size"                       # string offset=1373
.Linfo_string151:
	.asciz	"__off_t"                       # string offset=1381
.Linfo_string152:
	.asciz	"st_blksize"                    # string offset=1389
.Linfo_string153:
	.asciz	"__blksize_t"                   # string offset=1400
.Linfo_string154:
	.asciz	"st_blocks"                     # string offset=1412
.Linfo_string155:
	.asciz	"__blkcnt_t"                    # string offset=1422
.Linfo_string156:
	.asciz	"st_atim"                       # string offset=1433
.Linfo_string157:
	.asciz	"tv_sec"                        # string offset=1441
.Linfo_string158:
	.asciz	"__time_t"                      # string offset=1448
.Linfo_string159:
	.asciz	"tv_nsec"                       # string offset=1457
.Linfo_string160:
	.asciz	"__syscall_slong_t"             # string offset=1465
.Linfo_string161:
	.asciz	"timespec"                      # string offset=1483
.Linfo_string162:
	.asciz	"st_mtim"                       # string offset=1492
.Linfo_string163:
	.asciz	"st_ctim"                       # string offset=1500
.Linfo_string164:
	.asciz	"__glibc_reserved"              # string offset=1508
.Linfo_string165:
	.asciz	"stat"                          # string offset=1525
.Linfo_string166:
	.asciz	"term"                          # string offset=1530
.Linfo_string167:
	.asciz	"c_iflag"                       # string offset=1535
.Linfo_string168:
	.asciz	"tcflag_t"                      # string offset=1543
.Linfo_string169:
	.asciz	"c_oflag"                       # string offset=1552
.Linfo_string170:
	.asciz	"c_cflag"                       # string offset=1560
.Linfo_string171:
	.asciz	"c_lflag"                       # string offset=1568
.Linfo_string172:
	.asciz	"c_line"                        # string offset=1576
.Linfo_string173:
	.asciz	"unsigned char"                 # string offset=1583
.Linfo_string174:
	.asciz	"cc_t"                          # string offset=1597
.Linfo_string175:
	.asciz	"c_cc"                          # string offset=1602
.Linfo_string176:
	.asciz	"c_ispeed"                      # string offset=1607
.Linfo_string177:
	.asciz	"speed_t"                       # string offset=1616
.Linfo_string178:
	.asciz	"c_ospeed"                      # string offset=1624
.Linfo_string179:
	.asciz	"termios"                       # string offset=1633
.Linfo_string180:
	.asciz	"s_minishell"                   # string offset=1641
.Linfo_string181:
	.asciz	"t_minishell"                   # string offset=1653
.Linfo_string182:
	.asciz	"filename"                      # string offset=1665
.Linfo_string183:
	.asciz	"new"                           # string offset=1674
.Linfo_string184:
	.asciz	"index"                         # string offset=1678
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_strjoin
	.addrsig_sym open
	.addrsig_sym write
	.addrsig_sym get_next_line
	.addrsig_sym ft_strcmp
	.addrsig_sym ft_strlen
	.addrsig_sym free
	.addrsig_sym close
	.addrsig_sym access
	.addrsig_sym ft_printf
	.addrsig_sym strerror
	.addrsig_sym __errno_location
	.addrsig_sym g_signal
	.section	.debug_line,"",@progbits
.Lline_table_start0:

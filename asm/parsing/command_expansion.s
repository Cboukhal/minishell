	.text
	.file	"command_expansion.c"
	.globl	get_expansion_value             # -- Begin function get_expansion_value
	.p2align	4, 0x90
	.type	get_expansion_value,@function
get_expansion_value:                    # @get_expansion_value
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/command_expansion.c"
	.loc	1 16 0                          # src/parsing/command_expansion.c:16:0
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
.Ltmp0:
	.loc	1 19 8 prologue_end             # src/parsing/command_expansion.c:19:8
	movq	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 2                          # src/parsing/command_expansion.c:20:2
	cmpq	$0, -8(%rbp)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 22 17                         # src/parsing/command_expansion.c:22:17
	movq	-16(%rbp), %rdi
	.loc	1 22 23 is_stmt 0               # src/parsing/command_expansion.c:22:23
	movq	-8(%rbp), %rax
	.loc	1 22 28                         # src/parsing/command_expansion.c:22:28
	movq	(%rax), %rsi
	.loc	1 22 7                          # src/parsing/command_expansion.c:22:7
	callq	ft_strcmp
	.loc	1 22 34                         # src/parsing/command_expansion.c:22:34
	cmpl	$0, %eax
.Ltmp2:
	.loc	1 22 7                          # src/parsing/command_expansion.c:22:7
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp3:
	.loc	1 23 22 is_stmt 1               # src/parsing/command_expansion.c:23:22
	movq	-8(%rbp), %rax
	.loc	1 23 27 is_stmt 0               # src/parsing/command_expansion.c:23:27
	movq	8(%rax), %rdi
	.loc	1 23 12                         # src/parsing/command_expansion.c:23:12
	callq	ft_strdup
	.loc	1 23 10                         # src/parsing/command_expansion.c:23:10
	movq	%rax, -24(%rbp)
.Ltmp4:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 24 9 is_stmt 1                # src/parsing/command_expansion.c:24:9
	movq	-8(%rbp), %rax
	.loc	1 24 14 is_stmt 0               # src/parsing/command_expansion.c:24:14
	movq	16(%rax), %rax
	.loc	1 24 7                          # src/parsing/command_expansion.c:24:7
	movq	%rax, -8(%rbp)
.Ltmp5:
	.loc	1 20 2 is_stmt 1                # src/parsing/command_expansion.c:20:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 26 10                         # src/parsing/command_expansion.c:26:10
	movq	-24(%rbp), %rax
	.loc	1 26 2 is_stmt 0                # src/parsing/command_expansion.c:26:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	get_expansion_value, .Lfunc_end0-get_expansion_value
	.cfi_endproc
                                        # -- End function
	.globl	manage_expansion                # -- Begin function manage_expansion
	.p2align	4, 0x90
	.type	manage_expansion,@function
manage_expansion:                       # @manage_expansion
.Lfunc_begin1:
	.loc	1 30 0 is_stmt 1                # src/parsing/command_expansion.c:30:0
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
.Ltmp7:
	.loc	1 35 8 prologue_end             # src/parsing/command_expansion.c:35:8
	movq	$0, -32(%rbp)
	.loc	1 36 16                         # src/parsing/command_expansion.c:36:16
	movq	-16(%rbp), %rax
	.loc	1 36 15 is_stmt 0               # src/parsing/command_expansion.c:36:15
	movq	(%rax), %rax
	.loc	1 36 24                         # src/parsing/command_expansion.c:36:24
	movq	24(%rax), %rax
	.loc	1 36 12                         # src/parsing/command_expansion.c:36:12
	movq	%rax, -48(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 37 2 is_stmt 1                # src/parsing/command_expansion.c:37:2
	cmpq	$0, -48(%rbp)
	je	.LBB1_9
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	1 39 31                         # src/parsing/command_expansion.c:39:31
	movq	-24(%rbp), %rdi
	.loc	1 39 36 is_stmt 0               # src/parsing/command_expansion.c:39:36
	movq	-48(%rbp), %rax
	.loc	1 39 47                         # src/parsing/command_expansion.c:39:47
	movq	(%rax), %rsi
	.loc	1 39 11                         # src/parsing/command_expansion.c:39:11
	callq	get_expansion_value
	.loc	1 39 9                          # src/parsing/command_expansion.c:39:9
	movq	%rax, -32(%rbp)
.Ltmp9:
	.loc	1 40 34 is_stmt 1               # src/parsing/command_expansion.c:40:34
	movq	-32(%rbp), %rdi
	.loc	1 40 7 is_stmt 0                # src/parsing/command_expansion.c:40:7
	callq	is_expansion_stored_in_env
.Ltmp10:
	.loc	1 40 7                          # src/parsing/command_expansion.c:40:7
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp11:
	.loc	1 41 48 is_stmt 1               # src/parsing/command_expansion.c:41:48
	movq	-16(%rbp), %rax
	.loc	1 41 47 is_stmt 0               # src/parsing/command_expansion.c:41:47
	movq	(%rax), %rax
	.loc	1 41 56                         # src/parsing/command_expansion.c:41:56
	movq	16(%rax), %rdi
	.loc	1 42 6 is_stmt 1                # src/parsing/command_expansion.c:42:6
	movq	-48(%rbp), %rax
	.loc	1 42 17 is_stmt 0               # src/parsing/command_expansion.c:42:17
	movq	(%rax), %rsi
	.loc	1 42 23                         # src/parsing/command_expansion.c:42:23
	movq	-32(%rbp), %rdx
	.loc	1 41 23 is_stmt 1               # src/parsing/command_expansion.c:41:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 41 6 is_stmt 0                # src/parsing/command_expansion.c:41:6
	movq	-16(%rbp), %rax
	.loc	1 41 5                          # src/parsing/command_expansion.c:41:5
	movq	(%rax), %rax
	.loc	1 41 21                         # src/parsing/command_expansion.c:41:21
	movq	%rcx, 16(%rax)
	.loc	1 41 4                          # src/parsing/command_expansion.c:41:4
	jmp	.LBB1_8
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp12:
	.loc	1 43 27 is_stmt 1               # src/parsing/command_expansion.c:43:27
	movq	-48(%rbp), %rax
	.loc	1 43 38 is_stmt 0               # src/parsing/command_expansion.c:43:38
	movq	(%rax), %rdi
	.loc	1 43 12                         # src/parsing/command_expansion.c:43:12
	callq	is_exit_status
.Ltmp13:
	.loc	1 43 12                         # src/parsing/command_expansion.c:43:12
	testb	$1, %al
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp14:
	.loc	1 45 31 is_stmt 1               # src/parsing/command_expansion.c:45:31
	movq	-8(%rbp), %rax
	.loc	1 45 42 is_stmt 0               # src/parsing/command_expansion.c:45:42
	movl	44(%rax), %edi
	.loc	1 45 23                         # src/parsing/command_expansion.c:45:23
	callq	ft_itoa
	.loc	1 45 21                         # src/parsing/command_expansion.c:45:21
	movq	%rax, -40(%rbp)
	.loc	1 46 48 is_stmt 1               # src/parsing/command_expansion.c:46:48
	movq	-16(%rbp), %rax
	.loc	1 46 47 is_stmt 0               # src/parsing/command_expansion.c:46:47
	movq	(%rax), %rax
	.loc	1 46 56                         # src/parsing/command_expansion.c:46:56
	movq	16(%rax), %rdi
	.loc	1 47 6 is_stmt 1                # src/parsing/command_expansion.c:47:6
	movq	-48(%rbp), %rax
	.loc	1 47 17 is_stmt 0               # src/parsing/command_expansion.c:47:17
	movq	(%rax), %rsi
	.loc	1 47 23                         # src/parsing/command_expansion.c:47:23
	movq	-40(%rbp), %rdx
	.loc	1 46 23 is_stmt 1               # src/parsing/command_expansion.c:46:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 46 6 is_stmt 0                # src/parsing/command_expansion.c:46:6
	movq	-16(%rbp), %rax
	.loc	1 46 5                          # src/parsing/command_expansion.c:46:5
	movq	(%rax), %rax
	.loc	1 46 21                         # src/parsing/command_expansion.c:46:21
	movq	%rcx, 16(%rax)
	.loc	1 48 9 is_stmt 1                # src/parsing/command_expansion.c:48:9
	movq	-40(%rbp), %rdi
	.loc	1 48 4 is_stmt 0                # src/parsing/command_expansion.c:48:4
	callq	free
	.loc	1 49 3 is_stmt 1                # src/parsing/command_expansion.c:49:3
	jmp	.LBB1_7
.Ltmp15:
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 51 48                         # src/parsing/command_expansion.c:51:48
	movq	-16(%rbp), %rax
	.loc	1 51 47 is_stmt 0               # src/parsing/command_expansion.c:51:47
	movq	(%rax), %rax
	.loc	1 51 56                         # src/parsing/command_expansion.c:51:56
	movq	16(%rax), %rdi
	.loc	1 52 6 is_stmt 1                # src/parsing/command_expansion.c:52:6
	movq	-48(%rbp), %rax
	.loc	1 52 17 is_stmt 0               # src/parsing/command_expansion.c:52:17
	movq	(%rax), %rsi
	.loc	1 51 23 is_stmt 1               # src/parsing/command_expansion.c:51:23
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 51 6 is_stmt 0                # src/parsing/command_expansion.c:51:6
	movq	-16(%rbp), %rax
	.loc	1 51 5                          # src/parsing/command_expansion.c:51:5
	movq	(%rax), %rax
	.loc	1 51 21                         # src/parsing/command_expansion.c:51:21
	movq	%rcx, 16(%rax)
.Ltmp16:
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 0 21                          # src/parsing/command_expansion.c:0:21
	jmp	.LBB1_8
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 53 15 is_stmt 1               # src/parsing/command_expansion.c:53:15
	movq	-48(%rbp), %rax
	.loc	1 53 26 is_stmt 0               # src/parsing/command_expansion.c:53:26
	movq	8(%rax), %rax
	.loc	1 53 13                         # src/parsing/command_expansion.c:53:13
	movq	%rax, -48(%rbp)
.Ltmp17:
	.loc	1 37 2 is_stmt 1                # src/parsing/command_expansion.c:37:2
	jmp	.LBB1_1
.LBB1_9:
	.loc	1 55 8                          # src/parsing/command_expansion.c:55:8
	movq	-32(%rbp), %rdi
	.loc	1 55 2 is_stmt 0                # src/parsing/command_expansion.c:55:2
	callq	free
	.loc	1 56 1 is_stmt 1                # src/parsing/command_expansion.c:56:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp18:
.Lfunc_end1:
	.size	manage_expansion, .Lfunc_end1-manage_expansion
	.cfi_endproc
                                        # -- End function
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/../../include/minishell.h"
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	1                               # Abbrev [1] 0xb:0xb0f DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	216                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	228                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x51:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	216                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	216                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x6e:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x83:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	294                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x91:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string177                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	2836                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x9f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	228                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xad:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	216                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xbb:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string178                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	216                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xc9:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	1312                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd8:0x5 DW_TAG_pointer_type
	.long	221                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xdd:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xe4:0x5 DW_TAG_pointer_type
	.long	233                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe9:0xb DW_TAG_typedef
	.long	244                             # DW_AT_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xf4:0x2d DW_TAG_structure_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xfc:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x108:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x114:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	289                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x121:0x5 DW_TAG_pointer_type
	.long	244                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x126:0x5 DW_TAG_pointer_type
	.long	299                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12b:0xb DW_TAG_typedef
	.long	310                             # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x136:0xbe DW_TAG_structure_type
	.long	.Linfo_string175                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x13f:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	500                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x14b:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x157:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x163:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x16f:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x17b:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x187:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x193:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x19f:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	228                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ab:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b7:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	599                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c3:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1371                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1cf:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1db:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2325                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1e7:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2674                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1f4:0x5 DW_TAG_pointer_type
	.long	505                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1f9:0xb DW_TAG_typedef
	.long	516                             # DW_AT_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x204:0x5 DW_TAG_structure_type
	.long	.Linfo_string14                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x209:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x210:0x5 DW_TAG_pointer_type
	.long	216                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x215:0x5 DW_TAG_pointer_type
	.long	538                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x21a:0xb DW_TAG_typedef
	.long	549                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x225:0x2d DW_TAG_structure_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x22d:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x239:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x245:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x252:0x5 DW_TAG_pointer_type
	.long	549                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x257:0x5 DW_TAG_pointer_type
	.long	604                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x25c:0xb DW_TAG_typedef
	.long	615                             # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x267:0x2d DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x26f:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	660                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x27b:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1366                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x287:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1366                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x294:0x5 DW_TAG_pointer_type
	.long	665                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x299:0xb DW_TAG_typedef
	.long	676                             # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2a4:0x51 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2ac:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b8:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c4:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2d0:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2dc:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2e8:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2f5:0x5 DW_TAG_pointer_type
	.long	521                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2fa:0x5 DW_TAG_pointer_type
	.long	767                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2ff:0xc9 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x307:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x313:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x31f:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x32b:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x337:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x343:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x34f:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	968                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x35b:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1022                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x367:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	1083                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x373:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1156                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x37f:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x38b:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1234                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x397:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1312                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3a3:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3af:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3bb:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3c8:0x5 DW_TAG_pointer_type
	.long	973                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3cd:0xb DW_TAG_typedef
	.long	984                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3d8:0x21 DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3e0:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3ec:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1017                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3f9:0x5 DW_TAG_pointer_type
	.long	984                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3fe:0x5 DW_TAG_pointer_type
	.long	1027                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x403:0xb DW_TAG_typedef
	.long	1038                            # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x40e:0x2d DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x416:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x422:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x42e:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x43b:0x5 DW_TAG_pointer_type
	.long	1088                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x440:0xb DW_TAG_typedef
	.long	1099                            # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x44b:0x39 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x453:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x45f:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x46b:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1156                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x477:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1234                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x484:0x5 DW_TAG_pointer_type
	.long	1161                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x489:0xb DW_TAG_typedef
	.long	1172                            # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x494:0x39 DW_TAG_structure_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x49c:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a8:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4b4:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4c0:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1229                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4cd:0x5 DW_TAG_pointer_type
	.long	1172                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4d2:0x5 DW_TAG_pointer_type
	.long	1239                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4d7:0xb DW_TAG_typedef
	.long	1250                            # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4e2:0x39 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4ea:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4f6:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x502:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x50e:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1307                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x51b:0x5 DW_TAG_pointer_type
	.long	1250                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x520:0x5 DW_TAG_pointer_type
	.long	1317                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x525:0xb DW_TAG_typedef
	.long	1328                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x530:0x21 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x538:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x544:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1361                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x551:0x5 DW_TAG_pointer_type
	.long	1328                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x556:0x5 DW_TAG_pointer_type
	.long	615                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x55b:0x5 DW_TAG_pointer_type
	.long	1376                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x560:0xb DW_TAG_typedef
	.long	1387                            # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x56b:0x5d DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x573:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x57f:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x58b:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x597:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	216                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5a3:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1312                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5af:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1480                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5bb:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1480                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5c8:0x5 DW_TAG_pointer_type
	.long	1387                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5cd:0x56 DW_TAG_structure_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5d5:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1505                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5e1:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5e5:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1571                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5f1:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1594                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5fe:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2272                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x60a:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x616:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2319                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x623:0xb DW_TAG_typedef
	.long	1582                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x62e:0x5 DW_TAG_pointer_type
	.long	1587                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x633:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x634:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x63a:0x5 DW_TAG_pointer_type
	.long	1599                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x63f:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x640:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x645:0x5 DW_TAG_formal_parameter
	.long	1616                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x64a:0x5 DW_TAG_formal_parameter
	.long	2235                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x650:0x5 DW_TAG_pointer_type
	.long	1621                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x655:0xb DW_TAG_typedef
	.long	1632                            # DW_AT_type
	.long	.Linfo_string124                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x660:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x664:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x670:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x67c:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x688:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x694:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1696                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6a0:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6a4:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	2143                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6b0:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1724                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6bc:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6c0:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	2162                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6cc:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2173                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6d9:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1765                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6e5:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6e9:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6f5:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x701:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x70e:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	1818                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x71a:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x71e:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	2162                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x72a:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2173                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x736:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x743:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	1871                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x74f:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x753:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	2162                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x75f:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2173                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x76b:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x777:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2236                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x783:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2236                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x790:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	1948                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x79c:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7a0:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2235                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7ac:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2254                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7b8:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	1988                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7c4:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7c8:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2004                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7d4:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7d8:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2235                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7e4:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2235                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7f1:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2261                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7ff:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2059                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x80b:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x80f:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2247                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x81b:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x828:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2100                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x834:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x838:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2235                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x844:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x850:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2184                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x85f:0xc DW_TAG_array_type
	.long	521                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x864:0x6 DW_TAG_subrange_type
	.long	2155                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x86b:0x7 DW_TAG_base_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x872:0xb DW_TAG_typedef
	.long	521                             # DW_AT_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x87d:0xb DW_TAG_typedef
	.long	2184                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x888:0x7 DW_TAG_base_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x88f:0xb DW_TAG_typedef
	.long	2202                            # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x89a:0x21 DW_TAG_union_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8a2:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8ae:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2235                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x8bb:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x8bc:0xb DW_TAG_typedef
	.long	2247                            # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x8c7:0x7 DW_TAG_base_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x8ce:0x7 DW_TAG_base_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x8d5:0xb DW_TAG_typedef
	.long	2184                            # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8e0:0xb DW_TAG_typedef
	.long	2283                            # DW_AT_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x8eb:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8ef:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2300                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x8fc:0xc DW_TAG_array_type
	.long	2312                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x901:0x6 DW_TAG_subrange_type
	.long	2155                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x908:0x7 DW_TAG_base_type
	.long	.Linfo_string127                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x90f:0x5 DW_TAG_pointer_type
	.long	2324                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x914:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	6                               # Abbrev [6] 0x915:0x5 DW_TAG_pointer_type
	.long	2330                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x91a:0xbd DW_TAG_structure_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x922:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2519                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x92e:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2530                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x93a:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2541                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x946:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2552                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x952:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2173                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x95e:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2563                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x96a:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x976:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2519                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x982:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2574                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x98e:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2585                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x99a:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2596                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9a6:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2607                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9b2:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2607                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9be:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2607                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9ca:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2662                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x9d7:0xb DW_TAG_typedef
	.long	2312                            # DW_AT_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9e2:0xb DW_TAG_typedef
	.long	2312                            # DW_AT_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9ed:0xb DW_TAG_typedef
	.long	2312                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9f8:0xb DW_TAG_typedef
	.long	2184                            # DW_AT_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa03:0xb DW_TAG_typedef
	.long	2184                            # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa0e:0xb DW_TAG_typedef
	.long	2247                            # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa19:0xb DW_TAG_typedef
	.long	2247                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa24:0xb DW_TAG_typedef
	.long	2247                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa2f:0x21 DW_TAG_structure_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa37:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2640                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa43:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2651                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa50:0xb DW_TAG_typedef
	.long	2247                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa5b:0xb DW_TAG_typedef
	.long	2247                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xa66:0xc DW_TAG_array_type
	.long	2651                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa6b:0x6 DW_TAG_subrange_type
	.long	2155                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xa72:0x5 DW_TAG_pointer_type
	.long	2679                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa77:0x69 DW_TAG_structure_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa7f:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2784                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa8b:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2784                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa97:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2784                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaa3:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2784                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaaf:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2795                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xabb:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2813                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xac7:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2825                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xad3:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2825                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xae0:0xb DW_TAG_typedef
	.long	2184                            # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaeb:0xb DW_TAG_typedef
	.long	2806                            # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xaf6:0x7 DW_TAG_base_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0xafd:0xc DW_TAG_array_type
	.long	2795                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb02:0x6 DW_TAG_subrange_type
	.long	2155                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb09:0xb DW_TAG_typedef
	.long	2184                            # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xb14:0x5 DW_TAG_pointer_type
	.long	1371                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_expansion.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=70
.Linfo_string3:
	.asciz	"get_expansion_value"           # string offset=139
.Linfo_string4:
	.asciz	"char"                          # string offset=159
.Linfo_string5:
	.asciz	"manage_expansion"              # string offset=164
.Linfo_string6:
	.asciz	"env"                           # string offset=181
.Linfo_string7:
	.asciz	"name"                          # string offset=185
.Linfo_string8:
	.asciz	"value"                         # string offset=190
.Linfo_string9:
	.asciz	"next"                          # string offset=196
.Linfo_string10:
	.asciz	"s_env"                         # string offset=201
.Linfo_string11:
	.asciz	"t_env"                         # string offset=207
.Linfo_string12:
	.asciz	"minishell"                     # string offset=213
.Linfo_string13:
	.asciz	"dir"                           # string offset=223
.Linfo_string14:
	.asciz	"__dirstream"                   # string offset=227
.Linfo_string15:
	.asciz	"DIR"                           # string offset=239
.Linfo_string16:
	.asciz	"state"                         # string offset=243
.Linfo_string17:
	.asciz	"int"                           # string offset=249
.Linfo_string18:
	.asciz	"input"                         # string offset=253
.Linfo_string19:
	.asciz	"path"                          # string offset=259
.Linfo_string20:
	.asciz	"prompt"                        # string offset=264
.Linfo_string21:
	.asciz	"operator_nbr"                  # string offset=271
.Linfo_string22:
	.asciz	"exit_status"                   # string offset=284
.Linfo_string23:
	.asciz	"env_array"                     # string offset=296
.Linfo_string24:
	.asciz	"local"                         # string offset=306
.Linfo_string25:
	.asciz	"s_var"                         # string offset=312
.Linfo_string26:
	.asciz	"t_var"                         # string offset=318
.Linfo_string27:
	.asciz	"syntax_tree"                   # string offset=324
.Linfo_string28:
	.asciz	"node"                          # string offset=336
.Linfo_string29:
	.asciz	"id"                            # string offset=341
.Linfo_string30:
	.asciz	"type"                          # string offset=344
.Linfo_string31:
	.asciz	"pipe_fd"                       # string offset=349
.Linfo_string32:
	.asciz	"left"                          # string offset=357
.Linfo_string33:
	.asciz	"pid"                           # string offset=362
.Linfo_string34:
	.asciz	"wstatus"                       # string offset=366
.Linfo_string35:
	.asciz	"arg"                           # string offset=374
.Linfo_string36:
	.asciz	"s_arg"                         # string offset=378
.Linfo_string37:
	.asciz	"t_arg"                         # string offset=384
.Linfo_string38:
	.asciz	"pipe"                          # string offset=390
.Linfo_string39:
	.asciz	"to_close"                      # string offset=395
.Linfo_string40:
	.asciz	"write"                         # string offset=404
.Linfo_string41:
	.asciz	"read"                          # string offset=410
.Linfo_string42:
	.asciz	"s_pipe"                        # string offset=415
.Linfo_string43:
	.asciz	"t_pipe"                        # string offset=422
.Linfo_string44:
	.asciz	"redir"                         # string offset=429
.Linfo_string45:
	.asciz	"in_fd"                         # string offset=435
.Linfo_string46:
	.asciz	"out_fd"                        # string offset=441
.Linfo_string47:
	.asciz	"infile"                        # string offset=448
.Linfo_string48:
	.asciz	"fd"                            # string offset=455
.Linfo_string49:
	.asciz	"s_infile"                      # string offset=458
.Linfo_string50:
	.asciz	"t_infile"                      # string offset=467
.Linfo_string51:
	.asciz	"outfile"                       # string offset=476
.Linfo_string52:
	.asciz	"s_outfile"                     # string offset=484
.Linfo_string53:
	.asciz	"t_outfile"                     # string offset=494
.Linfo_string54:
	.asciz	"s_redir"                       # string offset=504
.Linfo_string55:
	.asciz	"t_redir"                       # string offset=512
.Linfo_string56:
	.asciz	"assign"                        # string offset=520
.Linfo_string57:
	.asciz	"expansion"                     # string offset=527
.Linfo_string58:
	.asciz	"s_expan"                       # string offset=537
.Linfo_string59:
	.asciz	"t_expan"                       # string offset=545
.Linfo_string60:
	.asciz	"arg_array"                     # string offset=553
.Linfo_string61:
	.asciz	"prev"                          # string offset=563
.Linfo_string62:
	.asciz	"s_cmd"                         # string offset=568
.Linfo_string63:
	.asciz	"right"                         # string offset=574
.Linfo_string64:
	.asciz	"s_ast_node"                    # string offset=580
.Linfo_string65:
	.asciz	"t_ast_node"                    # string offset=591
.Linfo_string66:
	.asciz	"s_ast"                         # string offset=602
.Linfo_string67:
	.asciz	"t_ast"                         # string offset=608
.Linfo_string68:
	.asciz	"token_stream"                  # string offset=614
.Linfo_string69:
	.asciz	"quote_nbr"                     # string offset=627
.Linfo_string70:
	.asciz	"length"                        # string offset=637
.Linfo_string71:
	.asciz	"lexeme"                        # string offset=644
.Linfo_string72:
	.asciz	"s_token"                       # string offset=651
.Linfo_string73:
	.asciz	"t_token"                       # string offset=659
.Linfo_string74:
	.asciz	"sighandler"                    # string offset=667
.Linfo_string75:
	.asciz	"__sigaction_handler"           # string offset=678
.Linfo_string76:
	.asciz	"sa_handler"                    # string offset=698
.Linfo_string77:
	.asciz	"__sighandler_t"                # string offset=709
.Linfo_string78:
	.asciz	"sa_sigaction"                  # string offset=724
.Linfo_string79:
	.asciz	"si_signo"                      # string offset=737
.Linfo_string80:
	.asciz	"si_errno"                      # string offset=746
.Linfo_string81:
	.asciz	"si_code"                       # string offset=755
.Linfo_string82:
	.asciz	"__pad0"                        # string offset=763
.Linfo_string83:
	.asciz	"_sifields"                     # string offset=770
.Linfo_string84:
	.asciz	"_pad"                          # string offset=780
.Linfo_string85:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=785
.Linfo_string86:
	.asciz	"_kill"                         # string offset=805
.Linfo_string87:
	.asciz	"si_pid"                        # string offset=811
.Linfo_string88:
	.asciz	"__pid_t"                       # string offset=818
.Linfo_string89:
	.asciz	"si_uid"                        # string offset=826
.Linfo_string90:
	.asciz	"unsigned int"                  # string offset=833
.Linfo_string91:
	.asciz	"__uid_t"                       # string offset=846
.Linfo_string92:
	.asciz	"_timer"                        # string offset=854
.Linfo_string93:
	.asciz	"si_tid"                        # string offset=861
.Linfo_string94:
	.asciz	"si_overrun"                    # string offset=868
.Linfo_string95:
	.asciz	"si_sigval"                     # string offset=879
.Linfo_string96:
	.asciz	"sival_int"                     # string offset=889
.Linfo_string97:
	.asciz	"sival_ptr"                     # string offset=899
.Linfo_string98:
	.asciz	"sigval"                        # string offset=909
.Linfo_string99:
	.asciz	"__sigval_t"                    # string offset=916
.Linfo_string100:
	.asciz	"_rt"                           # string offset=927
.Linfo_string101:
	.asciz	"_sigchld"                      # string offset=931
.Linfo_string102:
	.asciz	"si_status"                     # string offset=940
.Linfo_string103:
	.asciz	"si_utime"                      # string offset=950
.Linfo_string104:
	.asciz	"long int"                      # string offset=959
.Linfo_string105:
	.asciz	"__clock_t"                     # string offset=968
.Linfo_string106:
	.asciz	"si_stime"                      # string offset=978
.Linfo_string107:
	.asciz	"_sigfault"                     # string offset=987
.Linfo_string108:
	.asciz	"si_addr"                       # string offset=997
.Linfo_string109:
	.asciz	"si_addr_lsb"                   # string offset=1005
.Linfo_string110:
	.asciz	"short"                         # string offset=1017
.Linfo_string111:
	.asciz	"_bounds"                       # string offset=1023
.Linfo_string112:
	.asciz	"_addr_bnd"                     # string offset=1031
.Linfo_string113:
	.asciz	"_lower"                        # string offset=1041
.Linfo_string114:
	.asciz	"_upper"                        # string offset=1048
.Linfo_string115:
	.asciz	"_pkey"                         # string offset=1055
.Linfo_string116:
	.asciz	"__uint32_t"                    # string offset=1061
.Linfo_string117:
	.asciz	"_sigpoll"                      # string offset=1072
.Linfo_string118:
	.asciz	"si_band"                       # string offset=1081
.Linfo_string119:
	.asciz	"si_fd"                         # string offset=1089
.Linfo_string120:
	.asciz	"_sigsys"                       # string offset=1095
.Linfo_string121:
	.asciz	"_call_addr"                    # string offset=1103
.Linfo_string122:
	.asciz	"_syscall"                      # string offset=1114
.Linfo_string123:
	.asciz	"_arch"                         # string offset=1123
.Linfo_string124:
	.asciz	"siginfo_t"                     # string offset=1129
.Linfo_string125:
	.asciz	"sa_mask"                       # string offset=1139
.Linfo_string126:
	.asciz	"__val"                         # string offset=1147
.Linfo_string127:
	.asciz	"long unsigned int"             # string offset=1153
.Linfo_string128:
	.asciz	"__sigset_t"                    # string offset=1171
.Linfo_string129:
	.asciz	"sa_flags"                      # string offset=1182
.Linfo_string130:
	.asciz	"sa_restorer"                   # string offset=1191
.Linfo_string131:
	.asciz	"sigaction"                     # string offset=1203
.Linfo_string132:
	.asciz	"statbuf"                       # string offset=1213
.Linfo_string133:
	.asciz	"st_dev"                        # string offset=1221
.Linfo_string134:
	.asciz	"__dev_t"                       # string offset=1228
.Linfo_string135:
	.asciz	"st_ino"                        # string offset=1236
.Linfo_string136:
	.asciz	"__ino_t"                       # string offset=1243
.Linfo_string137:
	.asciz	"st_nlink"                      # string offset=1251
.Linfo_string138:
	.asciz	"__nlink_t"                     # string offset=1260
.Linfo_string139:
	.asciz	"st_mode"                       # string offset=1270
.Linfo_string140:
	.asciz	"__mode_t"                      # string offset=1278
.Linfo_string141:
	.asciz	"st_uid"                        # string offset=1287
.Linfo_string142:
	.asciz	"st_gid"                        # string offset=1294
.Linfo_string143:
	.asciz	"__gid_t"                       # string offset=1301
.Linfo_string144:
	.asciz	"st_rdev"                       # string offset=1309
.Linfo_string145:
	.asciz	"st_size"                       # string offset=1317
.Linfo_string146:
	.asciz	"__off_t"                       # string offset=1325
.Linfo_string147:
	.asciz	"st_blksize"                    # string offset=1333
.Linfo_string148:
	.asciz	"__blksize_t"                   # string offset=1344
.Linfo_string149:
	.asciz	"st_blocks"                     # string offset=1356
.Linfo_string150:
	.asciz	"__blkcnt_t"                    # string offset=1366
.Linfo_string151:
	.asciz	"st_atim"                       # string offset=1377
.Linfo_string152:
	.asciz	"tv_sec"                        # string offset=1385
.Linfo_string153:
	.asciz	"__time_t"                      # string offset=1392
.Linfo_string154:
	.asciz	"tv_nsec"                       # string offset=1401
.Linfo_string155:
	.asciz	"__syscall_slong_t"             # string offset=1409
.Linfo_string156:
	.asciz	"timespec"                      # string offset=1427
.Linfo_string157:
	.asciz	"st_mtim"                       # string offset=1436
.Linfo_string158:
	.asciz	"st_ctim"                       # string offset=1444
.Linfo_string159:
	.asciz	"__glibc_reserved"              # string offset=1452
.Linfo_string160:
	.asciz	"stat"                          # string offset=1469
.Linfo_string161:
	.asciz	"term"                          # string offset=1474
.Linfo_string162:
	.asciz	"c_iflag"                       # string offset=1479
.Linfo_string163:
	.asciz	"tcflag_t"                      # string offset=1487
.Linfo_string164:
	.asciz	"c_oflag"                       # string offset=1496
.Linfo_string165:
	.asciz	"c_cflag"                       # string offset=1504
.Linfo_string166:
	.asciz	"c_lflag"                       # string offset=1512
.Linfo_string167:
	.asciz	"c_line"                        # string offset=1520
.Linfo_string168:
	.asciz	"unsigned char"                 # string offset=1527
.Linfo_string169:
	.asciz	"cc_t"                          # string offset=1541
.Linfo_string170:
	.asciz	"c_cc"                          # string offset=1546
.Linfo_string171:
	.asciz	"c_ispeed"                      # string offset=1551
.Linfo_string172:
	.asciz	"speed_t"                       # string offset=1560
.Linfo_string173:
	.asciz	"c_ospeed"                      # string offset=1568
.Linfo_string174:
	.asciz	"termios"                       # string offset=1577
.Linfo_string175:
	.asciz	"s_minishell"                   # string offset=1585
.Linfo_string176:
	.asciz	"t_minishell"                   # string offset=1597
.Linfo_string177:
	.asciz	"token"                         # string offset=1609
.Linfo_string178:
	.asciz	"last_exit_status"              # string offset=1615
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_expansion_value
	.addrsig_sym ft_strcmp
	.addrsig_sym ft_strdup
	.addrsig_sym is_expansion_stored_in_env
	.addrsig_sym expand_lexeme_variable
	.addrsig_sym is_exit_status
	.addrsig_sym ft_itoa
	.addrsig_sym free
	.section	.debug_line,"",@progbits
.Lline_table_start0:

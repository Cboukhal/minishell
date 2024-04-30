	.text
	.file	"lexer_error.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/../../include/minishell.h"
	.globl	when_only_one_token             # -- Begin function when_only_one_token
	.p2align	4, 0x90
	.type	when_only_one_token,@function
when_only_one_token:                    # @when_only_one_token
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/lexer_error.c"
	.loc	2 16 0                          # src/lexer/lexer_error.c:16:0
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
.Ltmp0:
	.loc	2 17 23 prologue_end            # src/lexer/lexer_error.c:17:23
	movq	-16(%rbp), %rax
	.loc	2 17 22 is_stmt 0               # src/lexer/lexer_error.c:17:22
	movq	(%rax), %rax
	.loc	2 17 31                         # src/lexer/lexer_error.c:17:31
	movl	(%rax), %edi
	.loc	2 17 6                          # src/lexer/lexer_error.c:17:6
	callq	is_redirection
.Ltmp1:
	.loc	2 17 6                          # src/lexer/lexer_error.c:17:6
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_4
.LBB0_1:
.Ltmp2:
	.loc	2 19 22 is_stmt 1               # src/lexer/lexer_error.c:19:22
	movq	-16(%rbp), %rax
	.loc	2 19 21 is_stmt 0               # src/lexer/lexer_error.c:19:21
	movq	(%rax), %rax
	.loc	2 19 30                         # src/lexer/lexer_error.c:19:30
	movq	16(%rax), %rdi
	.loc	2 19 40                         # src/lexer/lexer_error.c:19:40
	movq	-16(%rbp), %rax
	.loc	2 19 39                         # src/lexer/lexer_error.c:19:39
	movq	(%rax), %rax
	.loc	2 19 48                         # src/lexer/lexer_error.c:19:48
	movl	(%rax), %esi
	.loc	2 19 7                          # src/lexer/lexer_error.c:19:7
	callq	got_filename
.Ltmp3:
	.loc	2 19 7                          # src/lexer/lexer_error.c:19:7
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_3
.LBB0_2:
.Ltmp4:
	.loc	2 20 4 is_stmt 1                # src/lexer/lexer_error.c:20:4
	jmp	.LBB0_6
.Ltmp5:
.LBB0_3:
	.loc	2 21 3                          # src/lexer/lexer_error.c:21:3
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 22 3                          # src/lexer/lexer_error.c:22:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 23 2                          # src/lexer/lexer_error.c:23:2
	jmp	.LBB0_5
.Ltmp6:
.LBB0_4:
	.loc	2 26 6                          # src/lexer/lexer_error.c:26:6
	movq	-16(%rbp), %rax
	.loc	2 26 5 is_stmt 0                # src/lexer/lexer_error.c:26:5
	movq	(%rax), %rax
	.loc	2 26 14                         # src/lexer/lexer_error.c:26:14
	movq	16(%rax), %rsi
	.loc	2 25 3 is_stmt 1                # src/lexer/lexer_error.c:25:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
.Ltmp7:
.LBB0_5:
	.loc	2 27 2                          # src/lexer/lexer_error.c:27:2
	callq	__errno_location
	.loc	2 27 8 is_stmt 0                # src/lexer/lexer_error.c:27:8
	movl	$1, (%rax)
	.loc	2 28 2 is_stmt 1                # src/lexer/lexer_error.c:28:2
	movq	-8(%rbp), %rax
	.loc	2 28 25 is_stmt 0               # src/lexer/lexer_error.c:28:25
	movl	$2, 44(%rax)
.LBB0_6:
	.loc	2 29 1 is_stmt 1                # src/lexer/lexer_error.c:29:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp8:
.Lfunc_end0:
	.size	when_only_one_token, .Lfunc_end0-when_only_one_token
	.cfi_endproc
                                        # -- End function
	.globl	check_lexical_error             # -- Begin function check_lexical_error
	.p2align	4, 0x90
	.type	check_lexical_error,@function
check_lexical_error:                    # @check_lexical_error
.Lfunc_begin1:
	.loc	2 32 0                          # src/lexer/lexer_error.c:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
.Ltmp9:
	.loc	2 33 9 prologue_end             # src/lexer/lexer_error.c:33:9
	movq	-16(%rbp), %rax
	.loc	2 33 7 is_stmt 0                # src/lexer/lexer_error.c:33:7
	cmpq	$0, (%rax)
.Ltmp10:
	.loc	2 33 6                          # src/lexer/lexer_error.c:33:6
	jne	.LBB1_2
# %bb.1:
.Ltmp11:
	.loc	2 34 3 is_stmt 1                # src/lexer/lexer_error.c:34:3
	jmp	.LBB1_14
.Ltmp12:
.LBB1_2:
	.loc	2 36 25                         # src/lexer/lexer_error.c:36:25
	movq	-16(%rbp), %rax
	.loc	2 36 24 is_stmt 0               # src/lexer/lexer_error.c:36:24
	movq	(%rax), %rax
	.loc	2 36 33                         # src/lexer/lexer_error.c:36:33
	movl	(%rax), %edi
	.loc	2 36 6                          # src/lexer/lexer_error.c:36:6
	callq	type_is_operator
.Ltmp13:
	.loc	2 36 6                          # src/lexer/lexer_error.c:36:6
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_14
.LBB1_3:
.Ltmp14:
	.loc	2 38 8 is_stmt 1                # src/lexer/lexer_error.c:38:8
	cmpb	$0, -17(%rbp)
	.loc	2 38 14 is_stmt 0               # src/lexer/lexer_error.c:38:14
	jne	.LBB1_6
# %bb.4:
	.loc	2 38 19                         # src/lexer/lexer_error.c:38:19
	movq	-16(%rbp), %rax
	.loc	2 38 18                         # src/lexer/lexer_error.c:38:18
	movq	(%rax), %rax
	.loc	2 38 32                         # src/lexer/lexer_error.c:38:32
	cmpq	$0, 32(%rax)
.Ltmp15:
	.loc	2 38 7                          # src/lexer/lexer_error.c:38:7
	jne	.LBB1_6
# %bb.5:
.Ltmp16:
	.loc	2 40 24 is_stmt 1               # src/lexer/lexer_error.c:40:24
	movq	-8(%rbp), %rdi
	.loc	2 40 35 is_stmt 0               # src/lexer/lexer_error.c:40:35
	movq	-16(%rbp), %rsi
	.loc	2 40 4                          # src/lexer/lexer_error.c:40:4
	callq	when_only_one_token
	.loc	2 41 4 is_stmt 1                # src/lexer/lexer_error.c:41:4
	jmp	.LBB1_14
.Ltmp17:
.LBB1_6:
	.loc	2 43 14                         # src/lexer/lexer_error.c:43:14
	movq	-16(%rbp), %rax
	.loc	2 43 13 is_stmt 0               # src/lexer/lexer_error.c:43:13
	movq	(%rax), %rax
	.loc	2 43 12                         # src/lexer/lexer_error.c:43:12
	cmpq	$0, 32(%rax)
	.loc	2 43 27                         # src/lexer/lexer_error.c:43:27
	je	.LBB1_12
# %bb.7:
	.loc	2 43 49                         # src/lexer/lexer_error.c:43:49
	movq	-16(%rbp), %rax
	.loc	2 43 48                         # src/lexer/lexer_error.c:43:48
	movq	(%rax), %rax
	.loc	2 43 57                         # src/lexer/lexer_error.c:43:57
	movq	32(%rax), %rax
	.loc	2 43 63                         # src/lexer/lexer_error.c:43:63
	movl	(%rax), %edi
	.loc	2 43 30                         # src/lexer/lexer_error.c:43:30
	callq	type_is_operator
.Ltmp18:
	.loc	2 43 12                         # src/lexer/lexer_error.c:43:12
	testb	$1, %al
	jne	.LBB1_8
	jmp	.LBB1_12
.LBB1_8:
.Ltmp19:
	.loc	2 45 23 is_stmt 1               # src/lexer/lexer_error.c:45:23
	movq	-16(%rbp), %rax
	.loc	2 45 22 is_stmt 0               # src/lexer/lexer_error.c:45:22
	movq	(%rax), %rax
	.loc	2 45 31                         # src/lexer/lexer_error.c:45:31
	movq	16(%rax), %rdi
	.loc	2 45 41                         # src/lexer/lexer_error.c:45:41
	movq	-16(%rbp), %rax
	.loc	2 45 40                         # src/lexer/lexer_error.c:45:40
	movq	(%rax), %rax
	.loc	2 45 49                         # src/lexer/lexer_error.c:45:49
	movl	(%rax), %esi
	.loc	2 45 8                          # src/lexer/lexer_error.c:45:8
	callq	got_filename
	.loc	2 46 5 is_stmt 1                # src/lexer/lexer_error.c:46:5
	testb	$1, %al
	jne	.LBB1_10
# %bb.9:
	.loc	2 46 23 is_stmt 0               # src/lexer/lexer_error.c:46:23
	movq	-16(%rbp), %rax
	.loc	2 46 22                         # src/lexer/lexer_error.c:46:22
	movq	(%rax), %rax
	.loc	2 46 31                         # src/lexer/lexer_error.c:46:31
	movq	32(%rax), %rax
	.loc	2 46 37                         # src/lexer/lexer_error.c:46:37
	movq	16(%rax), %rdi
	.loc	2 46 47                         # src/lexer/lexer_error.c:46:47
	movq	-16(%rbp), %rax
	.loc	2 46 46                         # src/lexer/lexer_error.c:46:46
	movq	(%rax), %rax
	.loc	2 46 55                         # src/lexer/lexer_error.c:46:55
	movq	32(%rax), %rax
	.loc	2 46 61                         # src/lexer/lexer_error.c:46:61
	movl	(%rax), %esi
	.loc	2 46 8                          # src/lexer/lexer_error.c:46:8
	callq	got_filename
.Ltmp20:
	.loc	2 45 8 is_stmt 1                # src/lexer/lexer_error.c:45:8
	testb	$1, %al
	jne	.LBB1_10
	jmp	.LBB1_11
.LBB1_10:
.Ltmp21:
	.loc	2 47 5                          # src/lexer/lexer_error.c:47:5
	jmp	.LBB1_14
.Ltmp22:
.LBB1_11:
	.loc	2 49 7                          # src/lexer/lexer_error.c:49:7
	movq	-16(%rbp), %rax
	.loc	2 49 6 is_stmt 0                # src/lexer/lexer_error.c:49:6
	movq	(%rax), %rax
	.loc	2 49 15                         # src/lexer/lexer_error.c:49:15
	movq	16(%rax), %rsi
	.loc	2 48 4 is_stmt 1                # src/lexer/lexer_error.c:48:4
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 50 4                          # src/lexer/lexer_error.c:50:4
	callq	__errno_location
	.loc	2 50 10 is_stmt 0               # src/lexer/lexer_error.c:50:10
	movl	$1, (%rax)
	.loc	2 51 4 is_stmt 1                # src/lexer/lexer_error.c:51:4
	movq	-8(%rbp), %rax
	.loc	2 51 27 is_stmt 0               # src/lexer/lexer_error.c:51:27
	movl	$2, 44(%rax)
	.loc	2 52 4 is_stmt 1                # src/lexer/lexer_error.c:52:4
	jmp	.LBB1_14
.Ltmp23:
.LBB1_12:
	.loc	2 0 4 is_stmt 0                 # src/lexer/lexer_error.c:0:4
	jmp	.LBB1_13
.LBB1_13:
	.loc	2 54 2 is_stmt 1                # src/lexer/lexer_error.c:54:2
	jmp	.LBB1_14
.Ltmp24:
.LBB1_14:
	.loc	2 55 1                          # src/lexer/lexer_error.c:55:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end1:
	.size	check_lexical_error, .Lfunc_end1-check_lexical_error
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bash: syntax error near "
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"unexpected token `newline'\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bash: syntax error near unexpected token `%s'\n"
	.size	.L.str.2, 47

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
	.byte	1                               # Abbrev [1] 0xb:0xb06 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x33 DW_TAG_enumeration_type
	.long	93                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x32:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x38:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3e:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x44:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4a:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x50:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x5d:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x64:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x65:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x7a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	215                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x88:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string184                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	2827                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x97:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xac:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	215                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xba:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string184                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	2827                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0xc8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	454                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xd7:0x5 DW_TAG_pointer_type
	.long	220                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xdc:0xb DW_TAG_typedef
	.long	231                             # DW_AT_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xe7:0xbe DW_TAG_structure_type
	.long	.Linfo_string182                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xf0:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	421                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xfc:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x108:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x114:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x120:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12c:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x138:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x144:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x150:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	466                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x15c:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	532                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x168:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	598                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x174:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1370                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x180:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1484                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x18c:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2316                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x198:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2665                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1a5:0x5 DW_TAG_pointer_type
	.long	426                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1aa:0xb DW_TAG_typedef
	.long	437                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1b5:0x5 DW_TAG_structure_type
	.long	.Linfo_string15                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	4                               # Abbrev [4] 0x1ba:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1c1:0x5 DW_TAG_pointer_type
	.long	454                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1c6:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1cd:0x5 DW_TAG_pointer_type
	.long	449                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1d2:0x5 DW_TAG_pointer_type
	.long	471                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1d7:0xb DW_TAG_typedef
	.long	482                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1e2:0x2d DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1ea:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1f6:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x202:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x20f:0x5 DW_TAG_pointer_type
	.long	482                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x214:0x5 DW_TAG_pointer_type
	.long	537                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x219:0xb DW_TAG_typedef
	.long	548                             # DW_AT_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x224:0x2d DW_TAG_structure_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x22c:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x238:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x244:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	593                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x251:0x5 DW_TAG_pointer_type
	.long	548                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x256:0x5 DW_TAG_pointer_type
	.long	603                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x25b:0xb DW_TAG_typedef
	.long	614                             # DW_AT_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x266:0x2d DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x26e:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x27a:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1365                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x286:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1365                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x293:0x5 DW_TAG_pointer_type
	.long	664                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x298:0xb DW_TAG_typedef
	.long	675                             # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2a3:0x51 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2ab:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2b7:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2cf:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2db:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	761                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2e7:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	761                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2f4:0x5 DW_TAG_pointer_type
	.long	442                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2f9:0x5 DW_TAG_pointer_type
	.long	766                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2fe:0xc9 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x306:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x312:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x336:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x342:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x34e:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	967                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x35a:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	1021                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x366:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x372:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1155                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x37e:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	532                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x38a:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	1233                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x396:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1311                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3a2:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3ae:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	761                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3ba:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	761                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3c7:0x5 DW_TAG_pointer_type
	.long	972                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3cc:0xb DW_TAG_typedef
	.long	983                             # DW_AT_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3d7:0x21 DW_TAG_structure_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3df:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3eb:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1016                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3f8:0x5 DW_TAG_pointer_type
	.long	983                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3fd:0x5 DW_TAG_pointer_type
	.long	1026                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x402:0xb DW_TAG_typedef
	.long	1037                            # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x40d:0x2d DW_TAG_structure_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x415:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x421:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x42d:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	756                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x43a:0x5 DW_TAG_pointer_type
	.long	1087                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x43f:0xb DW_TAG_typedef
	.long	1098                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x44a:0x39 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x452:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x45e:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x46a:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1155                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x476:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	1233                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x483:0x5 DW_TAG_pointer_type
	.long	1160                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x488:0xb DW_TAG_typedef
	.long	1171                            # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x493:0x39 DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x49b:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a7:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4b3:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4bf:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4cc:0x5 DW_TAG_pointer_type
	.long	1171                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4d1:0x5 DW_TAG_pointer_type
	.long	1238                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4d6:0xb DW_TAG_typedef
	.long	1249                            # DW_AT_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4e1:0x39 DW_TAG_structure_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4f5:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x501:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x50d:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1306                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x51a:0x5 DW_TAG_pointer_type
	.long	1249                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x51f:0x5 DW_TAG_pointer_type
	.long	1316                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x524:0xb DW_TAG_typedef
	.long	1327                            # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x52f:0x21 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x537:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x543:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1360                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x550:0x5 DW_TAG_pointer_type
	.long	1327                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x555:0x5 DW_TAG_pointer_type
	.long	614                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x55a:0x5 DW_TAG_pointer_type
	.long	1375                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x55f:0xb DW_TAG_typedef
	.long	1386                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x56a:0x5d DW_TAG_structure_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x572:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x57e:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x58a:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x596:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	449                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5a2:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1311                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ae:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1479                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ba:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	1479                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5c7:0x5 DW_TAG_pointer_type
	.long	1386                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x5cc:0x56 DW_TAG_structure_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5d4:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1504                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5e0:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5e4:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1570                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5f0:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1593                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x5fd:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2263                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x609:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x615:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2310                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x622:0xb DW_TAG_typedef
	.long	1581                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x62d:0x5 DW_TAG_pointer_type
	.long	1586                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x632:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x633:0x5 DW_TAG_formal_parameter
	.long	442                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x639:0x5 DW_TAG_pointer_type
	.long	1598                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x63e:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x63f:0x5 DW_TAG_formal_parameter
	.long	442                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x644:0x5 DW_TAG_formal_parameter
	.long	1615                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x649:0x5 DW_TAG_formal_parameter
	.long	100                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x64f:0x5 DW_TAG_pointer_type
	.long	1620                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x654:0xb DW_TAG_typedef
	.long	1631                            # DW_AT_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x65f:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x663:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x66f:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x67b:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x687:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x693:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1695                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x69f:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6a3:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2142                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6af:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1723                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6bb:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6bf:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2161                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6cb:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2172                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x6d8:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	1764                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x6e4:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6e8:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6f4:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x700:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2183                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x70d:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	1817                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x719:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x71d:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2161                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x729:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2172                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x735:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2183                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x742:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	1870                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x74e:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x752:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2161                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x75e:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2172                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x76a:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x776:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2227                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x782:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2227                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x78f:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	1947                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x79b:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x79f:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	100                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7ab:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2245                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7b7:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	1987                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7c3:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7c7:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2003                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7d3:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7d7:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	100                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7e3:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	100                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7f0:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2252                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7fe:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2058                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x80a:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x80e:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2238                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x81a:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x827:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2099                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x833:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x837:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	100                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x843:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x84f:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	93                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x85e:0xc DW_TAG_array_type
	.long	442                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x863:0x6 DW_TAG_subrange_type
	.long	2154                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x86a:0x7 DW_TAG_base_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x871:0xb DW_TAG_typedef
	.long	442                             # DW_AT_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x87c:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x887:0xb DW_TAG_typedef
	.long	2194                            # DW_AT_type
	.long	.Linfo_string106                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x892:0x21 DW_TAG_union_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x89a:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8a6:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	100                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x8b3:0xb DW_TAG_typedef
	.long	2238                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x8be:0x7 DW_TAG_base_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x8c5:0x7 DW_TAG_base_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x8cc:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string123                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x8d7:0xb DW_TAG_typedef
	.long	2274                            # DW_AT_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x8e2:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8e6:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2291                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x8f3:0xc DW_TAG_array_type
	.long	2303                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x8f8:0x6 DW_TAG_subrange_type
	.long	2154                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x8ff:0x7 DW_TAG_base_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x906:0x5 DW_TAG_pointer_type
	.long	2315                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x90b:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x90c:0x5 DW_TAG_pointer_type
	.long	2321                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x911:0xbd DW_TAG_structure_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x919:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2510                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x925:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2521                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x931:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2532                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x93d:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2543                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x949:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2172                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x955:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2554                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x961:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	442                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x96d:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2510                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x979:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2565                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x985:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2576                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x991:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2587                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x99d:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2598                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9a9:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2598                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9b5:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2598                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9c1:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2653                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x9ce:0xb DW_TAG_typedef
	.long	2303                            # DW_AT_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9d9:0xb DW_TAG_typedef
	.long	2303                            # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9e4:0xb DW_TAG_typedef
	.long	2303                            # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9ef:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string147                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9fa:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa05:0xb DW_TAG_typedef
	.long	2238                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa10:0xb DW_TAG_typedef
	.long	2238                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa1b:0xb DW_TAG_typedef
	.long	2238                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa26:0x21 DW_TAG_structure_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa2e:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2631                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa3a:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2642                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xa47:0xb DW_TAG_typedef
	.long	2238                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa52:0xb DW_TAG_typedef
	.long	2238                            # DW_AT_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xa5d:0xc DW_TAG_array_type
	.long	2642                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xa62:0x6 DW_TAG_subrange_type
	.long	2154                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa69:0x5 DW_TAG_pointer_type
	.long	2670                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0xa6e:0x69 DW_TAG_structure_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa76:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2775                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa82:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2775                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa8e:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2775                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa9a:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2775                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaa6:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2786                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xab2:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2804                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xabe:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2816                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaca:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2816                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xad7:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string170                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xae2:0xb DW_TAG_typedef
	.long	2797                            # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xaed:0x7 DW_TAG_base_type
	.long	.Linfo_string175                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0xaf4:0xc DW_TAG_array_type
	.long	2786                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xaf9:0x6 DW_TAG_subrange_type
	.long	2154                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb00:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb0b:0x5 DW_TAG_pointer_type
	.long	1370                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/lexer_error.c"       # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=62
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=131
.Linfo_string4:
	.asciz	"error_syntax"                  # string offset=144
.Linfo_string5:
	.asciz	"error_token"                   # string offset=157
.Linfo_string6:
	.asciz	"error_and"                     # string offset=169
.Linfo_string7:
	.asciz	"error_file"                    # string offset=179
.Linfo_string8:
	.asciz	"error_builtin"                 # string offset=190
.Linfo_string9:
	.asciz	"error_malloc"                  # string offset=204
.Linfo_string10:
	.asciz	"error_command"                 # string offset=217
.Linfo_string11:
	.asciz	"when_only_one_token"           # string offset=231
.Linfo_string12:
	.asciz	"check_lexical_error"           # string offset=251
.Linfo_string13:
	.asciz	"minishell"                     # string offset=271
.Linfo_string14:
	.asciz	"dir"                           # string offset=281
.Linfo_string15:
	.asciz	"__dirstream"                   # string offset=285
.Linfo_string16:
	.asciz	"DIR"                           # string offset=297
.Linfo_string17:
	.asciz	"state"                         # string offset=301
.Linfo_string18:
	.asciz	"int"                           # string offset=307
.Linfo_string19:
	.asciz	"input"                         # string offset=311
.Linfo_string20:
	.asciz	"char"                          # string offset=317
.Linfo_string21:
	.asciz	"path"                          # string offset=322
.Linfo_string22:
	.asciz	"prompt"                        # string offset=327
.Linfo_string23:
	.asciz	"operator_nbr"                  # string offset=334
.Linfo_string24:
	.asciz	"exit_status"                   # string offset=347
.Linfo_string25:
	.asciz	"env_array"                     # string offset=359
.Linfo_string26:
	.asciz	"env"                           # string offset=369
.Linfo_string27:
	.asciz	"name"                          # string offset=373
.Linfo_string28:
	.asciz	"value"                         # string offset=378
.Linfo_string29:
	.asciz	"next"                          # string offset=384
.Linfo_string30:
	.asciz	"s_env"                         # string offset=389
.Linfo_string31:
	.asciz	"t_env"                         # string offset=395
.Linfo_string32:
	.asciz	"local"                         # string offset=401
.Linfo_string33:
	.asciz	"s_var"                         # string offset=407
.Linfo_string34:
	.asciz	"t_var"                         # string offset=413
.Linfo_string35:
	.asciz	"syntax_tree"                   # string offset=419
.Linfo_string36:
	.asciz	"node"                          # string offset=431
.Linfo_string37:
	.asciz	"id"                            # string offset=436
.Linfo_string38:
	.asciz	"type"                          # string offset=439
.Linfo_string39:
	.asciz	"pipe_fd"                       # string offset=444
.Linfo_string40:
	.asciz	"left"                          # string offset=452
.Linfo_string41:
	.asciz	"pid"                           # string offset=457
.Linfo_string42:
	.asciz	"wstatus"                       # string offset=461
.Linfo_string43:
	.asciz	"arg"                           # string offset=469
.Linfo_string44:
	.asciz	"s_arg"                         # string offset=473
.Linfo_string45:
	.asciz	"t_arg"                         # string offset=479
.Linfo_string46:
	.asciz	"pipe"                          # string offset=485
.Linfo_string47:
	.asciz	"to_close"                      # string offset=490
.Linfo_string48:
	.asciz	"write"                         # string offset=499
.Linfo_string49:
	.asciz	"read"                          # string offset=505
.Linfo_string50:
	.asciz	"s_pipe"                        # string offset=510
.Linfo_string51:
	.asciz	"t_pipe"                        # string offset=517
.Linfo_string52:
	.asciz	"redir"                         # string offset=524
.Linfo_string53:
	.asciz	"in_fd"                         # string offset=530
.Linfo_string54:
	.asciz	"out_fd"                        # string offset=536
.Linfo_string55:
	.asciz	"infile"                        # string offset=543
.Linfo_string56:
	.asciz	"fd"                            # string offset=550
.Linfo_string57:
	.asciz	"s_infile"                      # string offset=553
.Linfo_string58:
	.asciz	"t_infile"                      # string offset=562
.Linfo_string59:
	.asciz	"outfile"                       # string offset=571
.Linfo_string60:
	.asciz	"s_outfile"                     # string offset=579
.Linfo_string61:
	.asciz	"t_outfile"                     # string offset=589
.Linfo_string62:
	.asciz	"s_redir"                       # string offset=599
.Linfo_string63:
	.asciz	"t_redir"                       # string offset=607
.Linfo_string64:
	.asciz	"assign"                        # string offset=615
.Linfo_string65:
	.asciz	"expansion"                     # string offset=622
.Linfo_string66:
	.asciz	"s_expan"                       # string offset=632
.Linfo_string67:
	.asciz	"t_expan"                       # string offset=640
.Linfo_string68:
	.asciz	"arg_array"                     # string offset=648
.Linfo_string69:
	.asciz	"prev"                          # string offset=658
.Linfo_string70:
	.asciz	"s_cmd"                         # string offset=663
.Linfo_string71:
	.asciz	"right"                         # string offset=669
.Linfo_string72:
	.asciz	"s_ast_node"                    # string offset=675
.Linfo_string73:
	.asciz	"t_ast_node"                    # string offset=686
.Linfo_string74:
	.asciz	"s_ast"                         # string offset=697
.Linfo_string75:
	.asciz	"t_ast"                         # string offset=703
.Linfo_string76:
	.asciz	"token_stream"                  # string offset=709
.Linfo_string77:
	.asciz	"quote_nbr"                     # string offset=722
.Linfo_string78:
	.asciz	"length"                        # string offset=732
.Linfo_string79:
	.asciz	"lexeme"                        # string offset=739
.Linfo_string80:
	.asciz	"s_token"                       # string offset=746
.Linfo_string81:
	.asciz	"t_token"                       # string offset=754
.Linfo_string82:
	.asciz	"sighandler"                    # string offset=762
.Linfo_string83:
	.asciz	"__sigaction_handler"           # string offset=773
.Linfo_string84:
	.asciz	"sa_handler"                    # string offset=793
.Linfo_string85:
	.asciz	"__sighandler_t"                # string offset=804
.Linfo_string86:
	.asciz	"sa_sigaction"                  # string offset=819
.Linfo_string87:
	.asciz	"si_signo"                      # string offset=832
.Linfo_string88:
	.asciz	"si_errno"                      # string offset=841
.Linfo_string89:
	.asciz	"si_code"                       # string offset=850
.Linfo_string90:
	.asciz	"__pad0"                        # string offset=858
.Linfo_string91:
	.asciz	"_sifields"                     # string offset=865
.Linfo_string92:
	.asciz	"_pad"                          # string offset=875
.Linfo_string93:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=880
.Linfo_string94:
	.asciz	"_kill"                         # string offset=900
.Linfo_string95:
	.asciz	"si_pid"                        # string offset=906
.Linfo_string96:
	.asciz	"__pid_t"                       # string offset=913
.Linfo_string97:
	.asciz	"si_uid"                        # string offset=921
.Linfo_string98:
	.asciz	"__uid_t"                       # string offset=928
.Linfo_string99:
	.asciz	"_timer"                        # string offset=936
.Linfo_string100:
	.asciz	"si_tid"                        # string offset=943
.Linfo_string101:
	.asciz	"si_overrun"                    # string offset=950
.Linfo_string102:
	.asciz	"si_sigval"                     # string offset=961
.Linfo_string103:
	.asciz	"sival_int"                     # string offset=971
.Linfo_string104:
	.asciz	"sival_ptr"                     # string offset=981
.Linfo_string105:
	.asciz	"sigval"                        # string offset=991
.Linfo_string106:
	.asciz	"__sigval_t"                    # string offset=998
.Linfo_string107:
	.asciz	"_rt"                           # string offset=1009
.Linfo_string108:
	.asciz	"_sigchld"                      # string offset=1013
.Linfo_string109:
	.asciz	"si_status"                     # string offset=1022
.Linfo_string110:
	.asciz	"si_utime"                      # string offset=1032
.Linfo_string111:
	.asciz	"long int"                      # string offset=1041
.Linfo_string112:
	.asciz	"__clock_t"                     # string offset=1050
.Linfo_string113:
	.asciz	"si_stime"                      # string offset=1060
.Linfo_string114:
	.asciz	"_sigfault"                     # string offset=1069
.Linfo_string115:
	.asciz	"si_addr"                       # string offset=1079
.Linfo_string116:
	.asciz	"si_addr_lsb"                   # string offset=1087
.Linfo_string117:
	.asciz	"short"                         # string offset=1099
.Linfo_string118:
	.asciz	"_bounds"                       # string offset=1105
.Linfo_string119:
	.asciz	"_addr_bnd"                     # string offset=1113
.Linfo_string120:
	.asciz	"_lower"                        # string offset=1123
.Linfo_string121:
	.asciz	"_upper"                        # string offset=1130
.Linfo_string122:
	.asciz	"_pkey"                         # string offset=1137
.Linfo_string123:
	.asciz	"__uint32_t"                    # string offset=1143
.Linfo_string124:
	.asciz	"_sigpoll"                      # string offset=1154
.Linfo_string125:
	.asciz	"si_band"                       # string offset=1163
.Linfo_string126:
	.asciz	"si_fd"                         # string offset=1171
.Linfo_string127:
	.asciz	"_sigsys"                       # string offset=1177
.Linfo_string128:
	.asciz	"_call_addr"                    # string offset=1185
.Linfo_string129:
	.asciz	"_syscall"                      # string offset=1196
.Linfo_string130:
	.asciz	"_arch"                         # string offset=1205
.Linfo_string131:
	.asciz	"siginfo_t"                     # string offset=1211
.Linfo_string132:
	.asciz	"sa_mask"                       # string offset=1221
.Linfo_string133:
	.asciz	"__val"                         # string offset=1229
.Linfo_string134:
	.asciz	"long unsigned int"             # string offset=1235
.Linfo_string135:
	.asciz	"__sigset_t"                    # string offset=1253
.Linfo_string136:
	.asciz	"sa_flags"                      # string offset=1264
.Linfo_string137:
	.asciz	"sa_restorer"                   # string offset=1273
.Linfo_string138:
	.asciz	"sigaction"                     # string offset=1285
.Linfo_string139:
	.asciz	"statbuf"                       # string offset=1295
.Linfo_string140:
	.asciz	"st_dev"                        # string offset=1303
.Linfo_string141:
	.asciz	"__dev_t"                       # string offset=1310
.Linfo_string142:
	.asciz	"st_ino"                        # string offset=1318
.Linfo_string143:
	.asciz	"__ino_t"                       # string offset=1325
.Linfo_string144:
	.asciz	"st_nlink"                      # string offset=1333
.Linfo_string145:
	.asciz	"__nlink_t"                     # string offset=1342
.Linfo_string146:
	.asciz	"st_mode"                       # string offset=1352
.Linfo_string147:
	.asciz	"__mode_t"                      # string offset=1360
.Linfo_string148:
	.asciz	"st_uid"                        # string offset=1369
.Linfo_string149:
	.asciz	"st_gid"                        # string offset=1376
.Linfo_string150:
	.asciz	"__gid_t"                       # string offset=1383
.Linfo_string151:
	.asciz	"st_rdev"                       # string offset=1391
.Linfo_string152:
	.asciz	"st_size"                       # string offset=1399
.Linfo_string153:
	.asciz	"__off_t"                       # string offset=1407
.Linfo_string154:
	.asciz	"st_blksize"                    # string offset=1415
.Linfo_string155:
	.asciz	"__blksize_t"                   # string offset=1426
.Linfo_string156:
	.asciz	"st_blocks"                     # string offset=1438
.Linfo_string157:
	.asciz	"__blkcnt_t"                    # string offset=1448
.Linfo_string158:
	.asciz	"st_atim"                       # string offset=1459
.Linfo_string159:
	.asciz	"tv_sec"                        # string offset=1467
.Linfo_string160:
	.asciz	"__time_t"                      # string offset=1474
.Linfo_string161:
	.asciz	"tv_nsec"                       # string offset=1483
.Linfo_string162:
	.asciz	"__syscall_slong_t"             # string offset=1491
.Linfo_string163:
	.asciz	"timespec"                      # string offset=1509
.Linfo_string164:
	.asciz	"st_mtim"                       # string offset=1518
.Linfo_string165:
	.asciz	"st_ctim"                       # string offset=1526
.Linfo_string166:
	.asciz	"__glibc_reserved"              # string offset=1534
.Linfo_string167:
	.asciz	"stat"                          # string offset=1551
.Linfo_string168:
	.asciz	"term"                          # string offset=1556
.Linfo_string169:
	.asciz	"c_iflag"                       # string offset=1561
.Linfo_string170:
	.asciz	"tcflag_t"                      # string offset=1569
.Linfo_string171:
	.asciz	"c_oflag"                       # string offset=1578
.Linfo_string172:
	.asciz	"c_cflag"                       # string offset=1586
.Linfo_string173:
	.asciz	"c_lflag"                       # string offset=1594
.Linfo_string174:
	.asciz	"c_line"                        # string offset=1602
.Linfo_string175:
	.asciz	"unsigned char"                 # string offset=1609
.Linfo_string176:
	.asciz	"cc_t"                          # string offset=1623
.Linfo_string177:
	.asciz	"c_cc"                          # string offset=1628
.Linfo_string178:
	.asciz	"c_ispeed"                      # string offset=1633
.Linfo_string179:
	.asciz	"speed_t"                       # string offset=1642
.Linfo_string180:
	.asciz	"c_ospeed"                      # string offset=1650
.Linfo_string181:
	.asciz	"termios"                       # string offset=1659
.Linfo_string182:
	.asciz	"s_minishell"                   # string offset=1667
.Linfo_string183:
	.asciz	"t_minishell"                   # string offset=1679
.Linfo_string184:
	.asciz	"token"                         # string offset=1691
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym when_only_one_token
	.addrsig_sym is_redirection
	.addrsig_sym got_filename
	.addrsig_sym ft_printf
	.addrsig_sym __errno_location
	.addrsig_sym type_is_operator
	.section	.debug_line,"",@progbits
.Lline_table_start0:

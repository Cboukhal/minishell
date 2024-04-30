	.text
	.file	"token_operator.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/../../include/minishell.h"
	.globl	get_operator_length             # -- Begin function get_operator_length
	.p2align	4, 0x90
	.type	get_operator_length,@function
get_operator_length:                    # @get_operator_length
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/token_operator.c"
	.loc	2 16 0                          # src/lexer/token_operator.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
.Ltmp0:
	.loc	2 17 11 prologue_end            # src/lexer/token_operator.c:17:11
	cmpl	$13, -8(%rbp)
	.loc	2 17 21 is_stmt 0               # src/lexer/token_operator.c:17:21
	je	.LBB0_2
# %bb.1:
	.loc	2 17 29                         # src/lexer/token_operator.c:17:29
	cmpl	$14, -8(%rbp)
.Ltmp1:
	.loc	2 17 6                          # src/lexer/token_operator.c:17:6
	jne	.LBB0_3
.LBB0_2:
.Ltmp2:
	.loc	2 18 3 is_stmt 1                # src/lexer/token_operator.c:18:3
	movl	$2, -4(%rbp)
	jmp	.LBB0_4
.Ltmp3:
.LBB0_3:
	.loc	2 19 2                          # src/lexer/token_operator.c:19:2
	movl	$1, -4(%rbp)
.LBB0_4:
	.loc	2 20 1                          # src/lexer/token_operator.c:20:1
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	get_operator_length, .Lfunc_end0-get_operator_length
	.cfi_endproc
                                        # -- End function
	.globl	get_operator_lexeme             # -- Begin function get_operator_lexeme
	.p2align	4, 0x90
	.type	get_operator_lexeme,@function
get_operator_lexeme:                    # @get_operator_lexeme
.Lfunc_begin1:
	.loc	2 23 0                          # src/lexer/token_operator.c:23:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
.Ltmp5:
	.loc	2 26 18 prologue_end            # src/lexer/token_operator.c:26:18
	movl	-16(%rbp), %eax
	.loc	2 26 25 is_stmt 0               # src/lexer/token_operator.c:26:25
	addl	$1, %eax
	.loc	2 26 18                         # src/lexer/token_operator.c:26:18
	movslq	%eax, %rdi
	.loc	2 26 11                         # src/lexer/token_operator.c:26:11
	callq	malloc
	.loc	2 26 9                          # src/lexer/token_operator.c:26:9
	movq	%rax, -24(%rbp)
.Ltmp6:
	.loc	2 27 7 is_stmt 1                # src/lexer/token_operator.c:27:7
	cmpq	$0, -24(%rbp)
.Ltmp7:
	.loc	2 27 6 is_stmt 0                # src/lexer/token_operator.c:27:6
	jne	.LBB1_2
# %bb.1:
.Ltmp8:
	.loc	2 28 3 is_stmt 1                # src/lexer/token_operator.c:28:3
	movq	$0, -8(%rbp)
	jmp	.LBB1_17
.Ltmp9:
.LBB1_2:
	.loc	2 29 11                         # src/lexer/token_operator.c:29:11
	cmpl	$0, -12(%rbp)
.Ltmp10:
	.loc	2 29 6 is_stmt 0                # src/lexer/token_operator.c:29:6
	jne	.LBB1_4
# %bb.3:
.Ltmp11:
	.loc	2 30 14 is_stmt 1               # src/lexer/token_operator.c:30:14
	movq	-24(%rbp), %rdi
	.loc	2 30 3 is_stmt 0                # src/lexer/token_operator.c:30:3
	movabsq	$.L.str, %rsi
	movl	$2, %edx
	callq	ft_strlcpy
	jmp	.LBB1_16
.LBB1_4:
.Ltmp12:
	.loc	2 31 16 is_stmt 1               # src/lexer/token_operator.c:31:16
	cmpl	$1, -12(%rbp)
.Ltmp13:
	.loc	2 31 11 is_stmt 0               # src/lexer/token_operator.c:31:11
	jne	.LBB1_6
# %bb.5:
.Ltmp14:
	.loc	2 32 14 is_stmt 1               # src/lexer/token_operator.c:32:14
	movq	-24(%rbp), %rdi
	.loc	2 32 3 is_stmt 0                # src/lexer/token_operator.c:32:3
	movabsq	$.L.str.1, %rsi
	movl	$2, %edx
	callq	ft_strlcpy
	jmp	.LBB1_15
.LBB1_6:
.Ltmp15:
	.loc	2 33 16 is_stmt 1               # src/lexer/token_operator.c:33:16
	cmpl	$8, -12(%rbp)
.Ltmp16:
	.loc	2 33 11 is_stmt 0               # src/lexer/token_operator.c:33:11
	jne	.LBB1_8
# %bb.7:
.Ltmp17:
	.loc	2 34 14 is_stmt 1               # src/lexer/token_operator.c:34:14
	movq	-24(%rbp), %rdi
	.loc	2 34 3 is_stmt 0                # src/lexer/token_operator.c:34:3
	movabsq	$.L.str.2, %rsi
	movl	$2, %edx
	callq	ft_strlcpy
	jmp	.LBB1_14
.LBB1_8:
.Ltmp18:
	.loc	2 35 16 is_stmt 1               # src/lexer/token_operator.c:35:16
	cmpl	$13, -12(%rbp)
.Ltmp19:
	.loc	2 35 11 is_stmt 0               # src/lexer/token_operator.c:35:11
	jne	.LBB1_10
# %bb.9:
.Ltmp20:
	.loc	2 36 14 is_stmt 1               # src/lexer/token_operator.c:36:14
	movq	-24(%rbp), %rdi
	.loc	2 36 3 is_stmt 0                # src/lexer/token_operator.c:36:3
	movabsq	$.L.str.3, %rsi
	movl	$3, %edx
	callq	ft_strlcpy
	jmp	.LBB1_13
.LBB1_10:
.Ltmp21:
	.loc	2 37 16 is_stmt 1               # src/lexer/token_operator.c:37:16
	cmpl	$14, -12(%rbp)
.Ltmp22:
	.loc	2 37 11 is_stmt 0               # src/lexer/token_operator.c:37:11
	jne	.LBB1_12
# %bb.11:
.Ltmp23:
	.loc	2 38 14 is_stmt 1               # src/lexer/token_operator.c:38:14
	movq	-24(%rbp), %rdi
	.loc	2 38 3 is_stmt 0                # src/lexer/token_operator.c:38:3
	movabsq	$.L.str.4, %rsi
	movl	$3, %edx
	callq	ft_strlcpy
.Ltmp24:
.LBB1_12:
	.loc	2 0 3                           # src/lexer/token_operator.c:0:3
	jmp	.LBB1_13
.LBB1_13:
	jmp	.LBB1_14
.LBB1_14:
	jmp	.LBB1_15
.LBB1_15:
	jmp	.LBB1_16
.LBB1_16:
	.loc	2 39 10 is_stmt 1               # src/lexer/token_operator.c:39:10
	movq	-24(%rbp), %rax
	.loc	2 39 2 is_stmt 0                # src/lexer/token_operator.c:39:2
	movq	%rax, -8(%rbp)
.LBB1_17:
	.loc	2 40 1 is_stmt 1                # src/lexer/token_operator.c:40:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end1:
	.size	get_operator_lexeme, .Lfunc_end1-get_operator_lexeme
	.cfi_endproc
                                        # -- End function
	.globl	get_operator_token              # -- Begin function get_operator_token
	.p2align	4, 0x90
	.type	get_operator_token,@function
get_operator_token:                     # @get_operator_token
.Lfunc_begin2:
	.loc	2 43 0                          # src/lexer/token_operator.c:43:0
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
.Ltmp26:
	.loc	2 44 8 prologue_end             # src/lexer/token_operator.c:44:8
	movq	-16(%rbp), %rax
	.loc	2 44 7 is_stmt 0                # src/lexer/token_operator.c:44:7
	movq	(%rax), %rax
	.loc	2 44 19                         # src/lexer/token_operator.c:44:19
	cmpl	$9, (%rax)
	.loc	2 44 30                         # src/lexer/token_operator.c:44:30
	je	.LBB2_4
# %bb.1:
	.loc	2 44 35                         # src/lexer/token_operator.c:44:35
	movq	-16(%rbp), %rax
	.loc	2 44 34                         # src/lexer/token_operator.c:44:34
	movq	(%rax), %rax
	.loc	2 44 46                         # src/lexer/token_operator.c:44:46
	cmpl	$11, (%rax)
	.loc	2 45 3 is_stmt 1                # src/lexer/token_operator.c:45:3
	je	.LBB2_4
# %bb.2:
	.loc	2 45 8 is_stmt 0                # src/lexer/token_operator.c:45:8
	movq	-16(%rbp), %rax
	.loc	2 45 7                          # src/lexer/token_operator.c:45:7
	movq	(%rax), %rax
	.loc	2 45 19                         # src/lexer/token_operator.c:45:19
	cmpl	$12, (%rax)
	.loc	2 45 29                         # src/lexer/token_operator.c:45:29
	je	.LBB2_4
# %bb.3:
	.loc	2 45 34                         # src/lexer/token_operator.c:45:34
	movq	-16(%rbp), %rax
	.loc	2 45 33                         # src/lexer/token_operator.c:45:33
	movq	(%rax), %rax
	.loc	2 45 45                         # src/lexer/token_operator.c:45:45
	cmpl	$10, (%rax)
.Ltmp27:
	.loc	2 44 6 is_stmt 1                # src/lexer/token_operator.c:44:6
	jne	.LBB2_5
.LBB2_4:
.Ltmp28:
	.loc	2 46 25                         # src/lexer/token_operator.c:46:25
	movq	-8(%rbp), %rdi
	.loc	2 46 33 is_stmt 0               # src/lexer/token_operator.c:46:33
	movq	-16(%rbp), %rax
	.loc	2 46 32                         # src/lexer/token_operator.c:46:32
	movq	(%rax), %rsi
	.loc	2 46 3                          # src/lexer/token_operator.c:46:3
	callq	get_redirection_token
	jmp	.LBB2_6
.LBB2_5:
.Ltmp29:
	.loc	2 49 42 is_stmt 1               # src/lexer/token_operator.c:49:42
	movq	-16(%rbp), %rax
	.loc	2 49 41 is_stmt 0               # src/lexer/token_operator.c:49:41
	movq	(%rax), %rax
	.loc	2 49 48                         # src/lexer/token_operator.c:49:48
	movl	(%rax), %edi
	.loc	2 49 20                         # src/lexer/token_operator.c:49:20
	callq	get_operator_length
	movl	%eax, %ecx
	.loc	2 49 5                          # src/lexer/token_operator.c:49:5
	movq	-16(%rbp), %rax
	.loc	2 49 4                          # src/lexer/token_operator.c:49:4
	movq	(%rax), %rax
	.loc	2 49 18                         # src/lexer/token_operator.c:49:18
	movl	%ecx, 8(%rax)
	.loc	2 50 42 is_stmt 1               # src/lexer/token_operator.c:50:42
	movq	-16(%rbp), %rax
	.loc	2 50 41 is_stmt 0               # src/lexer/token_operator.c:50:41
	movq	(%rax), %rax
	.loc	2 50 48                         # src/lexer/token_operator.c:50:48
	movl	(%rax), %edi
	.loc	2 50 56                         # src/lexer/token_operator.c:50:56
	movq	-16(%rbp), %rax
	.loc	2 50 55                         # src/lexer/token_operator.c:50:55
	movq	(%rax), %rax
	.loc	2 50 62                         # src/lexer/token_operator.c:50:62
	movl	8(%rax), %esi
	.loc	2 50 20                         # src/lexer/token_operator.c:50:20
	callq	get_operator_lexeme
	movq	%rax, %rcx
	.loc	2 50 5                          # src/lexer/token_operator.c:50:5
	movq	-16(%rbp), %rax
	.loc	2 50 4                          # src/lexer/token_operator.c:50:4
	movq	(%rax), %rax
	.loc	2 50 18                         # src/lexer/token_operator.c:50:18
	movq	%rcx, 16(%rax)
.Ltmp30:
.LBB2_6:
	.loc	2 52 1 is_stmt 1                # src/lexer/token_operator.c:52:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp31:
.Lfunc_end2:
	.size	get_operator_token, .Lfunc_end2-get_operator_token
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"("
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	")"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"|"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"&&"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"||"
	.size	.L.str.4, 3

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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x204 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0xb0:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	334                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xc9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	334                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xd8:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	341                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xf1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	334                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xff:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	334                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x10d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	341                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x11c:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x131:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	341                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x13f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	353                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x14e:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x155:0x5 DW_TAG_pointer_type
	.long	346                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x15a:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x161:0x5 DW_TAG_pointer_type
	.long	358                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x166:0x5 DW_TAG_pointer_type
	.long	363                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x16b:0xb DW_TAG_typedef
	.long	374                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x176:0x5d DW_TAG_structure_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x17e:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x18a:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x196:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1a2:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	341                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ae:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	467                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ba:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1c6:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1d3:0x5 DW_TAG_pointer_type
	.long	472                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1d8:0xb DW_TAG_typedef
	.long	483                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1e3:0x21 DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1eb:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	341                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1f7:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x204:0x5 DW_TAG_pointer_type
	.long	483                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x209:0x5 DW_TAG_pointer_type
	.long	374                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/token_operator.c"    # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=65
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=134
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=147
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=161
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=175
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=188
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=201
.Linfo_string9:
	.asciz	"expansion"                     # string offset=213
.Linfo_string10:
	.asciz	"operator"                      # string offset=223
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=232
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=241
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=249
.Linfo_string14:
	.asciz	"outfile"                       # string offset=257
.Linfo_string15:
	.asciz	"append"                        # string offset=265
.Linfo_string16:
	.asciz	"infile"                        # string offset=272
.Linfo_string17:
	.asciz	"and_if"                        # string offset=279
.Linfo_string18:
	.asciz	"or_if"                         # string offset=286
.Linfo_string19:
	.asciz	"word"                          # string offset=292
.Linfo_string20:
	.asciz	"name"                          # string offset=297
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=302
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=318
.Linfo_string23:
	.asciz	"e_token"                       # string offset=328
.Linfo_string24:
	.asciz	"get_operator_length"           # string offset=336
.Linfo_string25:
	.asciz	"int"                           # string offset=356
.Linfo_string26:
	.asciz	"get_operator_lexeme"           # string offset=360
.Linfo_string27:
	.asciz	"char"                          # string offset=380
.Linfo_string28:
	.asciz	"get_operator_token"            # string offset=385
.Linfo_string29:
	.asciz	"type"                          # string offset=404
.Linfo_string30:
	.asciz	"length"                        # string offset=409
.Linfo_string31:
	.asciz	"lexeme"                        # string offset=416
.Linfo_string32:
	.asciz	"input"                         # string offset=423
.Linfo_string33:
	.asciz	"new"                           # string offset=429
.Linfo_string34:
	.asciz	"quote_nbr"                     # string offset=433
.Linfo_string35:
	.asciz	"next"                          # string offset=443
.Linfo_string36:
	.asciz	"s_expan"                       # string offset=448
.Linfo_string37:
	.asciz	"t_expan"                       # string offset=456
.Linfo_string38:
	.asciz	"prev"                          # string offset=464
.Linfo_string39:
	.asciz	"s_token"                       # string offset=469
.Linfo_string40:
	.asciz	"t_token"                       # string offset=477
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_operator_length
	.addrsig_sym get_operator_lexeme
	.addrsig_sym malloc
	.addrsig_sym ft_strlcpy
	.addrsig_sym get_redirection_token
	.section	.debug_line,"",@progbits
.Lline_table_start0:

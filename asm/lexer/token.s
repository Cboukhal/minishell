	.text
	.file	"token.c"
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/lexer/../../include/minishell.h"
	.globl	get_token_type                  # -- Begin function get_token_type
	.p2align	4, 0x90
	.type	get_token_type,@function
get_token_type:                         # @get_token_type
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/lexer/token.c"
	.loc	2 16 0                          # src/lexer/token.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	2 17 19 prologue_end            # src/lexer/token.c:17:19
	movq	-16(%rbp), %rax
	.loc	2 17 6 is_stmt 0                # src/lexer/token.c:17:6
	movsbl	(%rax), %edi
	callq	is_operator
.Ltmp1:
	.loc	2 17 6                          # src/lexer/token.c:17:6
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:
.Ltmp2:
	.loc	2 18 29 is_stmt 1               # src/lexer/token.c:18:29
	movq	-16(%rbp), %rdi
	.loc	2 18 11 is_stmt 0               # src/lexer/token.c:18:11
	callq	get_operator_type
	.loc	2 18 3                          # src/lexer/token.c:18:3
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	.loc	2 20 3 is_stmt 1                # src/lexer/token.c:20:3
	movl	$15, -4(%rbp)
.Ltmp3:
.LBB0_3:
	.loc	2 21 1                          # src/lexer/token.c:21:1
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	get_token_type, .Lfunc_end0-get_token_type
	.cfi_endproc
                                        # -- End function
	.globl	init_token_attr                 # -- Begin function init_token_attr
	.p2align	4, 0x90
	.type	init_token_attr,@function
init_token_attr:                        # @init_token_attr
.Lfunc_begin1:
	.loc	2 24 0                          # src/lexer/token.c:24:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp5:
	.loc	2 25 4 prologue_end             # src/lexer/token.c:25:4
	movq	-8(%rbp), %rax
	.loc	2 25 3 is_stmt 0                # src/lexer/token.c:25:3
	movq	(%rax), %rax
	.loc	2 25 22                         # src/lexer/token.c:25:22
	movl	$0, 4(%rax)
	.loc	2 26 4 is_stmt 1                # src/lexer/token.c:26:4
	movq	-8(%rbp), %rax
	.loc	2 26 3 is_stmt 0                # src/lexer/token.c:26:3
	movq	(%rax), %rax
	.loc	2 26 19                         # src/lexer/token.c:26:19
	movl	$0, 8(%rax)
	.loc	2 27 4 is_stmt 1                # src/lexer/token.c:27:4
	movq	-8(%rbp), %rax
	.loc	2 27 3 is_stmt 0                # src/lexer/token.c:27:3
	movq	(%rax), %rax
	.loc	2 27 17                         # src/lexer/token.c:27:17
	movq	$0, 32(%rax)
	.loc	2 28 4 is_stmt 1                # src/lexer/token.c:28:4
	movq	-8(%rbp), %rax
	.loc	2 28 3 is_stmt 0                # src/lexer/token.c:28:3
	movq	(%rax), %rax
	.loc	2 28 17                         # src/lexer/token.c:28:17
	movq	$0, 40(%rax)
	.loc	2 29 4 is_stmt 1                # src/lexer/token.c:29:4
	movq	-8(%rbp), %rax
	.loc	2 29 3 is_stmt 0                # src/lexer/token.c:29:3
	movq	(%rax), %rax
	.loc	2 29 19                         # src/lexer/token.c:29:19
	movq	$0, 16(%rax)
	.loc	2 30 4 is_stmt 1                # src/lexer/token.c:30:4
	movq	-8(%rbp), %rax
	.loc	2 30 3 is_stmt 0                # src/lexer/token.c:30:3
	movq	(%rax), %rax
	.loc	2 30 22                         # src/lexer/token.c:30:22
	movq	$0, 24(%rax)
	.loc	2 31 1 is_stmt 1                # src/lexer/token.c:31:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end1:
	.size	init_token_attr, .Lfunc_end1-init_token_attr
	.cfi_endproc
                                        # -- End function
	.globl	get_eof_token                   # -- Begin function get_eof_token
	.p2align	4, 0x90
	.type	get_eof_token,@function
get_eof_token:                          # @get_eof_token
.Lfunc_begin2:
	.loc	2 34 0                          # src/lexer/token.c:34:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp7:
	.loc	2 37 8 prologue_end             # src/lexer/token.c:37:8
	movl	$48, %edi
	callq	malloc
	.loc	2 37 6 is_stmt 0                # src/lexer/token.c:37:6
	movq	%rax, -16(%rbp)
.Ltmp8:
	.loc	2 38 7 is_stmt 1                # src/lexer/token.c:38:7
	cmpq	$0, -16(%rbp)
.Ltmp9:
	.loc	2 38 6 is_stmt 0                # src/lexer/token.c:38:6
	jne	.LBB2_2
# %bb.1:
.Ltmp10:
	.loc	2 39 3 is_stmt 1                # src/lexer/token.c:39:3
	movabsq	$.L.str, %rdi
	callq	perror
.Ltmp11:
.LBB2_2:
	.loc	2 40 2                          # src/lexer/token.c:40:2
	leaq	-16(%rbp), %rdi
	callq	init_token_attr
	.loc	2 41 2                          # src/lexer/token.c:41:2
	movq	-16(%rbp), %rax
	.loc	2 41 12 is_stmt 0               # src/lexer/token.c:41:12
	movl	$18, (%rax)
.Ltmp12:
	.loc	2 42 8 is_stmt 1                # src/lexer/token.c:42:8
	movq	-8(%rbp), %rax
	.loc	2 42 6 is_stmt 0                # src/lexer/token.c:42:6
	cmpq	$0, (%rax)
.Ltmp13:
	.loc	2 42 6                          # src/lexer/token.c:42:6
	je	.LBB2_4
# %bb.3:
.Ltmp14:
	.loc	2 44 20 is_stmt 1               # src/lexer/token.c:44:20
	movq	-16(%rbp), %rcx
	.loc	2 44 5 is_stmt 0                # src/lexer/token.c:44:5
	movq	-8(%rbp), %rax
	.loc	2 44 4                          # src/lexer/token.c:44:4
	movq	(%rax), %rax
	.loc	2 44 18                         # src/lexer/token.c:44:18
	movq	%rcx, 40(%rax)
	.loc	2 45 17 is_stmt 1               # src/lexer/token.c:45:17
	movq	-8(%rbp), %rax
	.loc	2 45 16 is_stmt 0               # src/lexer/token.c:45:16
	movq	(%rax), %rcx
	.loc	2 45 3                          # src/lexer/token.c:45:3
	movq	-16(%rbp), %rax
	.loc	2 45 13                         # src/lexer/token.c:45:13
	movq	%rcx, 32(%rax)
	.loc	2 46 2 is_stmt 1                # src/lexer/token.c:46:2
	jmp	.LBB2_5
.Ltmp15:
.LBB2_4:
	.loc	2 48 14                         # src/lexer/token.c:48:14
	movq	-16(%rbp), %rcx
	.loc	2 48 5 is_stmt 0                # src/lexer/token.c:48:5
	movq	-8(%rbp), %rax
	.loc	2 48 12                         # src/lexer/token.c:48:12
	movq	%rcx, (%rax)
.Ltmp16:
.LBB2_5:
	.loc	2 49 1 is_stmt 1                # src/lexer/token.c:49:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	get_eof_token, .Lfunc_end2-get_eof_token
	.cfi_endproc
                                        # -- End function
	.globl	create_token                    # -- Begin function create_token
	.p2align	4, 0x90
	.type	create_token,@function
create_token:                           # @create_token
.Lfunc_begin3:
	.loc	2 52 0                          # src/lexer/token.c:52:0
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
.Ltmp18:
	.loc	2 55 7 prologue_end             # src/lexer/token.c:55:7
	cmpq	$0, -16(%rbp)
	.loc	2 55 13 is_stmt 0               # src/lexer/token.c:55:13
	je	.LBB3_2
# %bb.1:
	.loc	2 55 18                         # src/lexer/token.c:55:18
	movq	-16(%rbp), %rax
	.loc	2 55 17                         # src/lexer/token.c:55:17
	cmpb	$0, (%rax)
.Ltmp19:
	.loc	2 55 6                          # src/lexer/token.c:55:6
	jne	.LBB3_3
.LBB3_2:
.Ltmp20:
	.loc	2 56 3 is_stmt 1                # src/lexer/token.c:56:3
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.Ltmp21:
.LBB3_3:
	.loc	2 57 8                          # src/lexer/token.c:57:8
	movl	$48, %edi
	callq	malloc
	.loc	2 57 6 is_stmt 0                # src/lexer/token.c:57:6
	movq	%rax, -32(%rbp)
.Ltmp22:
	.loc	2 58 7 is_stmt 1                # src/lexer/token.c:58:7
	cmpq	$0, -32(%rbp)
.Ltmp23:
	.loc	2 58 6 is_stmt 0                # src/lexer/token.c:58:6
	jne	.LBB3_5
# %bb.4:
.Ltmp24:
	.loc	2 59 11 is_stmt 1               # src/lexer/token.c:59:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	2 59 3 is_stmt 0                # src/lexer/token.c:59:3
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.Ltmp25:
.LBB3_5:
	.loc	2 60 2 is_stmt 1                # src/lexer/token.c:60:2
	leaq	-32(%rbp), %rdi
	callq	init_token_attr
	.loc	2 61 29                         # src/lexer/token.c:61:29
	movq	-16(%rbp), %rdi
	.loc	2 61 14 is_stmt 0               # src/lexer/token.c:61:14
	callq	get_token_type
	movl	%eax, %ecx
	.loc	2 61 2                          # src/lexer/token.c:61:2
	movq	-32(%rbp), %rax
	.loc	2 61 12                         # src/lexer/token.c:61:12
	movl	%ecx, (%rax)
.Ltmp26:
	.loc	2 62 23 is_stmt 1               # src/lexer/token.c:62:23
	movq	-32(%rbp), %rax
	.loc	2 62 28 is_stmt 0               # src/lexer/token.c:62:28
	movl	(%rax), %edi
	.loc	2 62 6                          # src/lexer/token.c:62:6
	callq	type_is_operator
.Ltmp27:
	.loc	2 62 6                          # src/lexer/token.c:62:6
	testb	$1, %al
	jne	.LBB3_6
	jmp	.LBB3_7
.LBB3_6:
.Ltmp28:
	.loc	2 63 22 is_stmt 1               # src/lexer/token.c:63:22
	movq	-16(%rbp), %rdi
	.loc	2 63 3 is_stmt 0                # src/lexer/token.c:63:3
	leaq	-32(%rbp), %rsi
	callq	get_operator_token
	jmp	.LBB3_8
.LBB3_7:
	.loc	2 65 18 is_stmt 1               # src/lexer/token.c:65:18
	movq	-16(%rbp), %rdi
	.loc	2 65 3 is_stmt 0                # src/lexer/token.c:65:3
	leaq	-32(%rbp), %rsi
	callq	get_word_token
.Ltmp29:
.LBB3_8:
	.loc	2 66 24 is_stmt 1               # src/lexer/token.c:66:24
	movq	-32(%rbp), %rdi
	.loc	2 66 6 is_stmt 0                # src/lexer/token.c:66:6
	callq	is_operator_token
.Ltmp30:
	.loc	2 66 6                          # src/lexer/token.c:66:6
	testb	$1, %al
	jne	.LBB3_9
	jmp	.LBB3_10
.LBB3_9:
.Ltmp31:
	.loc	2 67 4 is_stmt 1                # src/lexer/token.c:67:4
	movq	-24(%rbp), %rax
	.loc	2 67 17 is_stmt 0               # src/lexer/token.c:67:17
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.Ltmp32:
.LBB3_10:
	.loc	2 68 10 is_stmt 1               # src/lexer/token.c:68:10
	movq	-32(%rbp), %rax
	.loc	2 68 2 is_stmt 0                # src/lexer/token.c:68:2
	movq	%rax, -8(%rbp)
.LBB3_11:
	.loc	2 69 1 is_stmt 1                # src/lexer/token.c:69:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp33:
.Lfunc_end3:
	.size	create_token, .Lfunc_end3-create_token
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x22e DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	6                               # Abbrev [6] 0xb1:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	371                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xd9:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xee:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xfd:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x112:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x120:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	378                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x12f:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	378                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x148:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x156:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string43                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	563                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x164:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string44                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	378                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x173:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x17a:0x5 DW_TAG_pointer_type
	.long	383                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x17f:0xb DW_TAG_typedef
	.long	394                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x18a:0x5d DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x192:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	371                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x19e:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	371                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1aa:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	371                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b6:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1c2:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	499                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1ce:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	553                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1da:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	553                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1e7:0x5 DW_TAG_pointer_type
	.long	492                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1ec:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1f3:0x5 DW_TAG_pointer_type
	.long	504                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1f8:0xb DW_TAG_typedef
	.long	515                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x203:0x21 DW_TAG_structure_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x20b:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x217:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x224:0x5 DW_TAG_pointer_type
	.long	515                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x229:0x5 DW_TAG_pointer_type
	.long	394                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x22e:0x5 DW_TAG_pointer_type
	.long	378                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x233:0x5 DW_TAG_pointer_type
	.long	371                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/token.c"             # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=56
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=93
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=106
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=120
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=134
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=147
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=160
.Linfo_string9:
	.asciz	"expansion"                     # string offset=172
.Linfo_string10:
	.asciz	"operator"                      # string offset=182
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=191
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=200
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=208
.Linfo_string14:
	.asciz	"outfile"                       # string offset=216
.Linfo_string15:
	.asciz	"append"                        # string offset=224
.Linfo_string16:
	.asciz	"infile"                        # string offset=231
.Linfo_string17:
	.asciz	"and_if"                        # string offset=238
.Linfo_string18:
	.asciz	"or_if"                         # string offset=245
.Linfo_string19:
	.asciz	"word"                          # string offset=251
.Linfo_string20:
	.asciz	"name"                          # string offset=256
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=261
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=277
.Linfo_string23:
	.asciz	"e_token"                       # string offset=287
.Linfo_string24:
	.asciz	"get_token_type"                # string offset=295
.Linfo_string25:
	.asciz	"int"                           # string offset=310
.Linfo_string26:
	.asciz	"init_token_attr"               # string offset=314
.Linfo_string27:
	.asciz	"get_eof_token"                 # string offset=330
.Linfo_string28:
	.asciz	"create_token"                  # string offset=344
.Linfo_string29:
	.asciz	"type"                          # string offset=357
.Linfo_string30:
	.asciz	"quote_nbr"                     # string offset=362
.Linfo_string31:
	.asciz	"length"                        # string offset=372
.Linfo_string32:
	.asciz	"lexeme"                        # string offset=379
.Linfo_string33:
	.asciz	"char"                          # string offset=386
.Linfo_string34:
	.asciz	"next"                          # string offset=391
.Linfo_string35:
	.asciz	"s_expan"                       # string offset=396
.Linfo_string36:
	.asciz	"t_expan"                       # string offset=404
.Linfo_string37:
	.asciz	"prev"                          # string offset=412
.Linfo_string38:
	.asciz	"s_token"                       # string offset=417
.Linfo_string39:
	.asciz	"t_token"                       # string offset=425
.Linfo_string40:
	.asciz	"input"                         # string offset=433
.Linfo_string41:
	.asciz	"token"                         # string offset=439
.Linfo_string42:
	.asciz	"eof"                           # string offset=445
.Linfo_string43:
	.asciz	"operator_nbr"                  # string offset=449
.Linfo_string44:
	.asciz	"new"                           # string offset=462
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_token_type
	.addrsig_sym is_operator
	.addrsig_sym get_operator_type
	.addrsig_sym init_token_attr
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym type_is_operator
	.addrsig_sym get_operator_token
	.addrsig_sym get_word_token
	.addrsig_sym is_operator_token
	.section	.debug_line,"",@progbits
.Lline_table_start0:

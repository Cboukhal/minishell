	.text
	.file	"env_setup.c"
	.globl	get_environment_size            # -- Begin function get_environment_size
	.p2align	4, 0x90
	.type	get_environment_size,@function
get_environment_size:                   # @get_environment_size
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/environment/env_setup.c"
	.loc	1 16 0                          # src/environment/env_setup.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 19 4 prologue_end             # src/environment/env_setup.c:19:4
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 9                          # src/environment/env_setup.c:20:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 20 2 is_stmt 0                # src/environment/env_setup.c:20:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 21 4 is_stmt 1                # src/environment/env_setup.c:21:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 20 2                          # src/environment/env_setup.c:20:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 22 10                         # src/environment/env_setup.c:22:10
	movl	-12(%rbp), %eax
	.loc	1 22 2 is_stmt 0                # src/environment/env_setup.c:22:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	get_environment_size, .Lfunc_end0-get_environment_size
	.cfi_endproc
                                        # -- End function
	.globl	init_env_var_attr               # -- Begin function init_env_var_attr
	.p2align	4, 0x90
	.type	init_env_var_attr,@function
init_env_var_attr:                      # @init_env_var_attr
.Lfunc_begin1:
	.loc	1 26 0 is_stmt 1                # src/environment/env_setup.c:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp2:
	.loc	1 27 4 prologue_end             # src/environment/env_setup.c:27:4
	movq	-8(%rbp), %rax
	.loc	1 27 3 is_stmt 0                # src/environment/env_setup.c:27:3
	movq	(%rax), %rax
	.loc	1 27 15                         # src/environment/env_setup.c:27:15
	movq	$0, (%rax)
	.loc	1 28 4 is_stmt 1                # src/environment/env_setup.c:28:4
	movq	-8(%rbp), %rax
	.loc	1 28 3 is_stmt 0                # src/environment/env_setup.c:28:3
	movq	(%rax), %rax
	.loc	1 28 16                         # src/environment/env_setup.c:28:16
	movq	$0, 8(%rax)
	.loc	1 29 4 is_stmt 1                # src/environment/env_setup.c:29:4
	movq	-8(%rbp), %rax
	.loc	1 29 3 is_stmt 0                # src/environment/env_setup.c:29:3
	movq	(%rax), %rax
	.loc	1 29 15                         # src/environment/env_setup.c:29:15
	movq	$0, 16(%rax)
	.loc	1 30 1 is_stmt 1                # src/environment/env_setup.c:30:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	init_env_var_attr, .Lfunc_end1-init_env_var_attr
	.cfi_endproc
                                        # -- End function
	.globl	get_env_variable                # -- Begin function get_env_variable
	.p2align	4, 0x90
	.type	get_env_variable,@function
get_env_variable:                       # @get_env_variable
.Lfunc_begin2:
	.loc	1 33 0                          # src/environment/env_setup.c:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp4:
	.loc	1 36 8 prologue_end             # src/environment/env_setup.c:36:8
	movl	$24, %edi
	callq	malloc
	.loc	1 36 6 is_stmt 0                # src/environment/env_setup.c:36:6
	movq	%rax, -24(%rbp)
.Ltmp5:
	.loc	1 37 7 is_stmt 1                # src/environment/env_setup.c:37:7
	cmpq	$0, -24(%rbp)
.Ltmp6:
	.loc	1 37 6 is_stmt 0                # src/environment/env_setup.c:37:6
	jne	.LBB2_2
# %bb.1:
.Ltmp7:
	.loc	1 38 11 is_stmt 1               # src/environment/env_setup.c:38:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 38 3 is_stmt 0                # src/environment/env_setup.c:38:3
	movq	$0, -8(%rbp)
	jmp	.LBB2_3
.Ltmp8:
.LBB2_2:
	.loc	1 39 2 is_stmt 1                # src/environment/env_setup.c:39:2
	leaq	-24(%rbp), %rdi
	callq	init_env_var_attr
	.loc	1 40 32                         # src/environment/env_setup.c:40:32
	movq	-16(%rbp), %rdi
	.loc	1 40 14 is_stmt 0               # src/environment/env_setup.c:40:14
	callq	get_variable_name
	movq	%rax, %rcx
	.loc	1 40 2                          # src/environment/env_setup.c:40:2
	movq	-24(%rbp), %rax
	.loc	1 40 12                         # src/environment/env_setup.c:40:12
	movq	%rcx, (%rax)
	.loc	1 41 34 is_stmt 1               # src/environment/env_setup.c:41:34
	movq	-16(%rbp), %rdi
	.loc	1 41 15 is_stmt 0               # src/environment/env_setup.c:41:15
	callq	get_variable_value
	movq	%rax, %rcx
	.loc	1 41 2                          # src/environment/env_setup.c:41:2
	movq	-24(%rbp), %rax
	.loc	1 41 13                         # src/environment/env_setup.c:41:13
	movq	%rcx, 8(%rax)
	.loc	1 42 10 is_stmt 1               # src/environment/env_setup.c:42:10
	movq	-24(%rbp), %rax
	.loc	1 42 2 is_stmt 0                # src/environment/env_setup.c:42:2
	movq	%rax, -8(%rbp)
.LBB2_3:
	.loc	1 43 1 is_stmt 1                # src/environment/env_setup.c:43:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end2:
	.size	get_env_variable, .Lfunc_end2-get_env_variable
	.cfi_endproc
                                        # -- End function
	.globl	extract_environment             # -- Begin function extract_environment
	.p2align	4, 0x90
	.type	extract_environment,@function
extract_environment:                    # @extract_environment
.Lfunc_begin3:
	.loc	1 46 0                          # src/environment/env_setup.c:46:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp10:
	.loc	1 52 25 prologue_end            # src/environment/env_setup.c:52:25
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	.loc	1 52 8 is_stmt 0                # src/environment/env_setup.c:52:8
	callq	get_env_variable
	.loc	1 52 6                          # src/environment/env_setup.c:52:6
	movq	%rax, -32(%rbp)
	.loc	1 53 12 is_stmt 1               # src/environment/env_setup.c:53:12
	movq	-32(%rbp), %rax
	.loc	1 53 10 is_stmt 0               # src/environment/env_setup.c:53:10
	movq	%rax, -40(%rbp)
	.loc	1 54 4 is_stmt 1                # src/environment/env_setup.c:54:4
	movl	$1, -12(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 55 9                          # src/environment/env_setup.c:55:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 55 2 is_stmt 0                # src/environment/env_setup.c:55:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp11:
	.loc	1 57 26 is_stmt 1               # src/environment/env_setup.c:57:26
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 57 9 is_stmt 0                # src/environment/env_setup.c:57:9
	callq	get_env_variable
	.loc	1 57 7                          # src/environment/env_setup.c:57:7
	movq	%rax, -24(%rbp)
	.loc	1 58 19 is_stmt 1               # src/environment/env_setup.c:58:19
	movq	-24(%rbp), %rcx
	.loc	1 58 3 is_stmt 0                # src/environment/env_setup.c:58:3
	movq	-40(%rbp), %rax
	.loc	1 58 17                         # src/environment/env_setup.c:58:17
	movq	%rcx, 16(%rax)
	.loc	1 59 13 is_stmt 1               # src/environment/env_setup.c:59:13
	movq	-24(%rbp), %rax
	.loc	1 59 11 is_stmt 0               # src/environment/env_setup.c:59:11
	movq	%rax, -40(%rbp)
	.loc	1 60 4 is_stmt 1                # src/environment/env_setup.c:60:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp12:
	.loc	1 55 2                          # src/environment/env_setup.c:55:2
	jmp	.LBB3_1
.LBB3_3:
	.loc	1 62 10                         # src/environment/env_setup.c:62:10
	movq	-32(%rbp), %rax
	.loc	1 62 2 is_stmt 0                # src/environment/env_setup.c:62:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end3:
	.size	extract_environment, .Lfunc_end3-extract_environment
	.cfi_endproc
                                        # -- End function
	.globl	init_environment                # -- Begin function init_environment
	.p2align	4, 0x90
	.type	init_environment,@function
init_environment:                       # @init_environment
.Lfunc_begin4:
	.loc	1 66 0 is_stmt 1                # src/environment/env_setup.c:66:0
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
.Ltmp14:
	.loc	1 67 27 prologue_end            # src/environment/env_setup.c:67:27
	movq	-16(%rbp), %rdi
	.loc	1 67 6 is_stmt 0                # src/environment/env_setup.c:67:6
	callq	get_environment_size
	.loc	1 67 33                         # src/environment/env_setup.c:67:33
	cmpl	$0, %eax
.Ltmp15:
	.loc	1 67 6                          # src/environment/env_setup.c:67:6
	jne	.LBB4_2
# %bb.1:
.Ltmp16:
	.loc	1 68 10 is_stmt 1               # src/environment/env_setup.c:68:10
	callq	create_default_env
	movq	%rax, %rcx
	.loc	1 68 4 is_stmt 0                # src/environment/env_setup.c:68:4
	movq	-8(%rbp), %rax
	.loc	1 68 8                          # src/environment/env_setup.c:68:8
	movq	%rcx, (%rax)
	.loc	1 68 3                          # src/environment/env_setup.c:68:3
	jmp	.LBB4_3
.LBB4_2:
	.loc	1 70 30 is_stmt 1               # src/environment/env_setup.c:70:30
	movq	-16(%rbp), %rdi
	.loc	1 70 10 is_stmt 0               # src/environment/env_setup.c:70:10
	callq	extract_environment
	movq	%rax, %rcx
	.loc	1 70 4                          # src/environment/env_setup.c:70:4
	movq	-8(%rbp), %rax
	.loc	1 70 8                          # src/environment/env_setup.c:70:8
	movq	%rcx, (%rax)
.Ltmp17:
.LBB4_3:
	.loc	1 71 1 is_stmt 1                # src/environment/env_setup.c:71:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp18:
.Lfunc_end4:
	.size	init_environment, .Lfunc_end4-init_environment
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	2 "/mnt/nfs/homes/cboukhal/minishell" "src/environment/../../include/minishell.h"
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1a2 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	333                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	333                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x61:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	423                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x85:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	340                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x9e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	401                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xac:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	340                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xbb:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	340                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xd4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	333                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xf0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	340                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xfe:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	340                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x10c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	340                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x11b:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x130:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	423                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x13e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x14d:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x154:0x5 DW_TAG_pointer_type
	.long	345                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x159:0xb DW_TAG_typedef
	.long	356                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x164:0x2d DW_TAG_structure_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x16c:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x178:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x184:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	413                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x191:0x5 DW_TAG_pointer_type
	.long	406                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x196:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x19d:0x5 DW_TAG_pointer_type
	.long	356                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a2:0x5 DW_TAG_pointer_type
	.long	401                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a7:0x5 DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/environment/env_setup.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=66
.Linfo_string3:
	.asciz	"get_environment_size"          # string offset=100
.Linfo_string4:
	.asciz	"int"                           # string offset=121
.Linfo_string5:
	.asciz	"init_env_var_attr"             # string offset=125
.Linfo_string6:
	.asciz	"get_env_variable"              # string offset=143
.Linfo_string7:
	.asciz	"name"                          # string offset=160
.Linfo_string8:
	.asciz	"char"                          # string offset=165
.Linfo_string9:
	.asciz	"value"                         # string offset=170
.Linfo_string10:
	.asciz	"next"                          # string offset=176
.Linfo_string11:
	.asciz	"s_env"                         # string offset=181
.Linfo_string12:
	.asciz	"t_env"                         # string offset=187
.Linfo_string13:
	.asciz	"extract_environment"           # string offset=193
.Linfo_string14:
	.asciz	"init_environment"              # string offset=213
.Linfo_string15:
	.asciz	"envp"                          # string offset=230
.Linfo_string16:
	.asciz	"i"                             # string offset=235
.Linfo_string17:
	.asciz	"new"                           # string offset=237
.Linfo_string18:
	.asciz	"variable"                      # string offset=241
.Linfo_string19:
	.asciz	"env"                           # string offset=250
.Linfo_string20:
	.asciz	"current"                       # string offset=254
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_environment_size
	.addrsig_sym init_env_var_attr
	.addrsig_sym get_env_variable
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym get_variable_name
	.addrsig_sym get_variable_value
	.addrsig_sym extract_environment
	.addrsig_sym create_default_env
	.section	.debug_line,"",@progbits
.Lline_table_start0:

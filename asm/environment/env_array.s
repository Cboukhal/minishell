	.text
	.file	"env_array.c"
	.globl	get_env_length                  # -- Begin function get_env_length
	.p2align	4, 0x90
	.type	get_env_length,@function
get_env_length:                         # @get_env_length
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/environment/env_array.c"
	.loc	1 16 0                          # src/environment/env_array.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 20 9 prologue_end             # src/environment/env_array.c:20:9
	movl	$0, -20(%rbp)
	.loc	1 21 10                         # src/environment/env_array.c:21:10
	movq	-8(%rbp), %rax
	.loc	1 21 8 is_stmt 0                # src/environment/env_array.c:21:8
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 22 2 is_stmt 1                # src/environment/env_array.c:22:2
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 24 11                         # src/environment/env_array.c:24:11
	movq	-16(%rbp), %rax
	.loc	1 24 18 is_stmt 0               # src/environment/env_array.c:24:18
	movq	16(%rax), %rax
	.loc	1 24 9                          # src/environment/env_array.c:24:9
	movq	%rax, -16(%rbp)
	.loc	1 25 9 is_stmt 1                # src/environment/env_array.c:25:9
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp2:
	.loc	1 22 2                          # src/environment/env_array.c:22:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 27 10                         # src/environment/env_array.c:27:10
	movl	-20(%rbp), %eax
	.loc	1 27 2 is_stmt 0                # src/environment/env_array.c:27:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	get_env_length, .Lfunc_end0-get_env_length
	.cfi_endproc
                                        # -- End function
	.globl	extract_env_variable            # -- Begin function extract_env_variable
	.p2align	4, 0x90
	.type	extract_env_variable,@function
extract_env_variable:                   # @extract_env_variable
.Lfunc_begin1:
	.loc	1 31 0 is_stmt 1                # src/environment/env_array.c:31:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp4:
	.loc	1 35 19 prologue_end            # src/environment/env_array.c:35:19
	movq	-8(%rbp), %rax
	.loc	1 35 28 is_stmt 0               # src/environment/env_array.c:35:28
	movq	(%rax), %rdi
	.loc	1 35 8                          # src/environment/env_array.c:35:8
	movabsq	$.L.str, %rsi
	callq	ft_strjoin
	.loc	1 35 6                          # src/environment/env_array.c:35:6
	movq	%rax, -16(%rbp)
	.loc	1 36 19 is_stmt 1               # src/environment/env_array.c:36:19
	movq	-16(%rbp), %rdi
	.loc	1 36 24 is_stmt 0               # src/environment/env_array.c:36:24
	movq	-8(%rbp), %rax
	.loc	1 36 33                         # src/environment/env_array.c:36:33
	movq	8(%rax), %rsi
	.loc	1 36 8                          # src/environment/env_array.c:36:8
	callq	ft_strjoin
	.loc	1 36 6                          # src/environment/env_array.c:36:6
	movq	%rax, -24(%rbp)
	.loc	1 37 7 is_stmt 1                # src/environment/env_array.c:37:7
	movq	-16(%rbp), %rdi
	.loc	1 37 2 is_stmt 0                # src/environment/env_array.c:37:2
	callq	free
	.loc	1 38 10 is_stmt 1               # src/environment/env_array.c:38:10
	movq	-24(%rbp), %rax
	.loc	1 38 2 is_stmt 0                # src/environment/env_array.c:38:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end1:
	.size	extract_env_variable, .Lfunc_end1-extract_env_variable
	.cfi_endproc
                                        # -- End function
	.globl	get_env_array                   # -- Begin function get_env_array
	.p2align	4, 0x90
	.type	get_env_array,@function
get_env_array:                          # @get_env_array
.Lfunc_begin2:
	.loc	1 42 0 is_stmt 1                # src/environment/env_array.c:42:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp6:
	.loc	1 48 26 prologue_end            # src/environment/env_array.c:48:26
	movq	-8(%rbp), %rdi
	.loc	1 48 11 is_stmt 0               # src/environment/env_array.c:48:11
	callq	get_env_length
	.loc	1 48 9                          # src/environment/env_array.c:48:9
	movl	%eax, -16(%rbp)
	.loc	1 49 39 is_stmt 1               # src/environment/env_array.c:49:39
	movl	-16(%rbp), %eax
	.loc	1 49 46 is_stmt 0               # src/environment/env_array.c:49:46
	addl	$1, %eax
	.loc	1 49 38                         # src/environment/env_array.c:49:38
	movslq	%eax, %rdi
	.loc	1 49 36                         # src/environment/env_array.c:49:36
	shlq	$3, %rdi
	.loc	1 49 14                         # src/environment/env_array.c:49:14
	callq	malloc
	.loc	1 49 12                         # src/environment/env_array.c:49:12
	movq	%rax, -24(%rbp)
	.loc	1 50 10 is_stmt 1               # src/environment/env_array.c:50:10
	movq	-8(%rbp), %rax
	.loc	1 50 8 is_stmt 0                # src/environment/env_array.c:50:8
	movq	%rax, -32(%rbp)
	.loc	1 51 4 is_stmt 1                # src/environment/env_array.c:51:4
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 52 2                          # src/environment/env_array.c:52:2
	cmpq	$0, -32(%rbp)
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp7:
	.loc	1 54 39                         # src/environment/env_array.c:54:39
	movq	-32(%rbp), %rdi
	.loc	1 54 18 is_stmt 0               # src/environment/env_array.c:54:18
	callq	extract_env_variable
	movq	%rax, %rdx
	.loc	1 54 3                          # src/environment/env_array.c:54:3
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 54 16                         # src/environment/env_array.c:54:16
	movq	%rdx, (%rax,%rcx,8)
	.loc	1 55 11 is_stmt 1               # src/environment/env_array.c:55:11
	movq	-32(%rbp), %rax
	.loc	1 55 18 is_stmt 0               # src/environment/env_array.c:55:18
	movq	16(%rax), %rax
	.loc	1 55 9                          # src/environment/env_array.c:55:9
	movq	%rax, -32(%rbp)
	.loc	1 56 4 is_stmt 1                # src/environment/env_array.c:56:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp8:
	.loc	1 52 2                          # src/environment/env_array.c:52:2
	jmp	.LBB2_1
.LBB2_3:
	.loc	1 58 2                          # src/environment/env_array.c:58:2
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 58 15 is_stmt 0               # src/environment/env_array.c:58:15
	movq	$0, (%rax,%rcx,8)
	.loc	1 59 10 is_stmt 1               # src/environment/env_array.c:59:10
	movq	-24(%rbp), %rax
	.loc	1 59 2 is_stmt 0                # src/environment/env_array.c:59:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end2:
	.size	get_env_array, .Lfunc_end2-get_env_array
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"="
	.size	.L.str, 2

	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/environment/../../include/minishell.h"
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
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x162 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	274                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x51:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6e:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	281                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x87:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x95:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	281                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	281                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xb2:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	293                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xcb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd9:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe7:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xf5:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	293                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x103:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x112:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x119:0x5 DW_TAG_pointer_type
	.long	286                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x11e:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x125:0x5 DW_TAG_pointer_type
	.long	281                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x12f:0xb DW_TAG_typedef
	.long	314                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x13a:0x2d DW_TAG_structure_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x142:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	281                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x14e:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	281                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x15a:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	359                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x167:0x5 DW_TAG_pointer_type
	.long	314                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/environment/env_array.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=66
.Linfo_string3:
	.asciz	"get_env_length"                # string offset=135
.Linfo_string4:
	.asciz	"int"                           # string offset=150
.Linfo_string5:
	.asciz	"extract_env_variable"          # string offset=154
.Linfo_string6:
	.asciz	"char"                          # string offset=175
.Linfo_string7:
	.asciz	"get_env_array"                 # string offset=180
.Linfo_string8:
	.asciz	"env"                           # string offset=194
.Linfo_string9:
	.asciz	"name"                          # string offset=198
.Linfo_string10:
	.asciz	"value"                         # string offset=203
.Linfo_string11:
	.asciz	"next"                          # string offset=209
.Linfo_string12:
	.asciz	"s_env"                         # string offset=214
.Linfo_string13:
	.asciz	"t_env"                         # string offset=220
.Linfo_string14:
	.asciz	"index"                         # string offset=226
.Linfo_string15:
	.asciz	"length"                        # string offset=232
.Linfo_string16:
	.asciz	"env_var"                       # string offset=239
.Linfo_string17:
	.asciz	"tmp"                           # string offset=247
.Linfo_string18:
	.asciz	"var"                           # string offset=251
.Linfo_string19:
	.asciz	"i"                             # string offset=255
.Linfo_string20:
	.asciz	"env_array"                     # string offset=257
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_env_length
	.addrsig_sym extract_env_variable
	.addrsig_sym ft_strjoin
	.addrsig_sym free
	.addrsig_sym malloc
	.section	.debug_line,"",@progbits
.Lline_table_start0:

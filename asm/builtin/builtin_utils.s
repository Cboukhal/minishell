	.text
	.file	"builtin_utils.c"
	.globl	ft_strcmp                       # -- Begin function ft_strcmp
	.p2align	4, 0x90
	.type	ft_strcmp,@function
ft_strcmp:                              # @ft_strcmp
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/builtin/builtin_utils.c"
	.loc	1 16 0                          # src/builtin/builtin_utils.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp0:
	.loc	1 17 10 prologue_end            # src/builtin/builtin_utils.c:17:10
	movq	-8(%rbp), %rax
	.loc	1 17 9 is_stmt 0                # src/builtin/builtin_utils.c:17:9
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	.loc	1 17 15                         # src/builtin/builtin_utils.c:17:15
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 17 19                         # src/builtin/builtin_utils.c:17:19
	movq	-16(%rbp), %rax
	.loc	1 17 18                         # src/builtin/builtin_utils.c:17:18
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	.loc	1 17 24                         # src/builtin/builtin_utils.c:17:24
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 17 28                         # src/builtin/builtin_utils.c:17:28
	movq	-8(%rbp), %rax
	.loc	1 17 27                         # src/builtin/builtin_utils.c:17:27
	movsbl	(%rax), %eax
	.loc	1 17 37                         # src/builtin/builtin_utils.c:17:37
	movq	-16(%rbp), %rcx
	.loc	1 17 36                         # src/builtin/builtin_utils.c:17:36
	movsbl	(%rcx), %ecx
	.loc	1 17 33                         # src/builtin/builtin_utils.c:17:33
	cmpl	%ecx, %eax
	sete	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 33                          # src/builtin/builtin_utils.c:0:33
	movb	-17(%rbp), %al                  # 1-byte Reload
	.loc	1 17 2                          # src/builtin/builtin_utils.c:17:2
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 19 7 is_stmt 1                # src/builtin/builtin_utils.c:19:7
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc	1 20 7                          # src/builtin/builtin_utils.c:20:7
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.Ltmp2:
	.loc	1 17 2                          # src/builtin/builtin_utils.c:17:2
	jmp	.LBB0_1
.LBB0_6:
	.loc	1 22 11                         # src/builtin/builtin_utils.c:22:11
	movq	-8(%rbp), %rax
	.loc	1 22 10 is_stmt 0               # src/builtin/builtin_utils.c:22:10
	movsbl	(%rax), %eax
	.loc	1 22 19                         # src/builtin/builtin_utils.c:22:19
	movq	-16(%rbp), %rcx
	.loc	1 22 18                         # src/builtin/builtin_utils.c:22:18
	movsbl	(%rcx), %ecx
	.loc	1 22 16                         # src/builtin/builtin_utils.c:22:16
	subl	%ecx, %eax
	.loc	1 22 2                          # src/builtin/builtin_utils.c:22:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	ft_strcmp, .Lfunc_end0-ft_strcmp
	.cfi_endproc
                                        # -- End function
	.globl	cmd_arg_nbr                     # -- Begin function cmd_arg_nbr
	.p2align	4, 0x90
	.type	cmd_arg_nbr,@function
cmd_arg_nbr:                            # @cmd_arg_nbr
.Lfunc_begin1:
	.loc	1 26 0 is_stmt 1                # src/builtin/builtin_utils.c:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp4:
	.loc	1 29 4 prologue_end             # src/builtin/builtin_utils.c:29:4
	movl	$0, -12(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 30 9                          # src/builtin/builtin_utils.c:30:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 30 2 is_stmt 0                # src/builtin/builtin_utils.c:30:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 31 4 is_stmt 1                # src/builtin/builtin_utils.c:31:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 30 2                          # src/builtin/builtin_utils.c:30:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 32 10                         # src/builtin/builtin_utils.c:32:10
	movl	-12(%rbp), %eax
	.loc	1 32 2 is_stmt 0                # src/builtin/builtin_utils.c:32:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end1:
	.size	cmd_arg_nbr, .Lfunc_end1-cmd_arg_nbr
	.cfi_endproc
                                        # -- End function
	.globl	add_new_var_to_env              # -- Begin function add_new_var_to_env
	.p2align	4, 0x90
	.type	add_new_var_to_env,@function
add_new_var_to_env:                     # @add_new_var_to_env
.Lfunc_begin2:
	.loc	1 36 0 is_stmt 1                # src/builtin/builtin_utils.c:36:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp6:
	.loc	1 39 12 prologue_end            # src/builtin/builtin_utils.c:39:12
	movq	-16(%rbp), %rax
	.loc	1 39 11 is_stmt 0               # src/builtin/builtin_utils.c:39:11
	movq	(%rax), %rax
	.loc	1 39 8                          # src/builtin/builtin_utils.c:39:8
	movq	%rax, -24(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 40 2 is_stmt 1                # src/builtin/builtin_utils.c:40:2
	cmpq	$0, -24(%rbp)
	je	.LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp7:
	.loc	1 42 7                          # src/builtin/builtin_utils.c:42:7
	movq	-24(%rbp), %rax
	.loc	1 42 19 is_stmt 0               # src/builtin/builtin_utils.c:42:19
	cmpq	$0, 16(%rax)
.Ltmp8:
	.loc	1 42 7                          # src/builtin/builtin_utils.c:42:7
	jne	.LBB2_4
# %bb.3:
.Ltmp9:
	.loc	1 44 20 is_stmt 1               # src/builtin/builtin_utils.c:44:20
	movq	-8(%rbp), %rax
	.loc	1 44 19 is_stmt 0               # src/builtin/builtin_utils.c:44:19
	movq	(%rax), %rcx
	.loc	1 44 4                          # src/builtin/builtin_utils.c:44:4
	movq	-24(%rbp), %rax
	.loc	1 44 16                         # src/builtin/builtin_utils.c:44:16
	movq	%rcx, 16(%rax)
	.loc	1 45 4 is_stmt 1                # src/builtin/builtin_utils.c:45:4
	jmp	.LBB2_5
.Ltmp10:
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 47 11                         # src/builtin/builtin_utils.c:47:11
	movq	-24(%rbp), %rax
	.loc	1 47 18 is_stmt 0               # src/builtin/builtin_utils.c:47:18
	movq	16(%rax), %rax
	.loc	1 47 9                          # src/builtin/builtin_utils.c:47:9
	movq	%rax, -24(%rbp)
.Ltmp11:
	.loc	1 40 2 is_stmt 1                # src/builtin/builtin_utils.c:40:2
	jmp	.LBB2_1
.LBB2_5:
	.loc	1 49 1                          # src/builtin/builtin_utils.c:49:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.Lfunc_end2:
	.size	add_new_var_to_env, .Lfunc_end2-add_new_var_to_env
	.cfi_endproc
                                        # -- End function
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/builtin/../../include/minishell.h"
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
	.byte	38                              # DW_TAG_const_type
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
	.byte	1                               # Abbrev [1] 0xb:0x136 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	215                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	222                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x52:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	222                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x61:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	215                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x7a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	239                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x88:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	215                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x97:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xac:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	249                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xba:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	249                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	254                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xd7:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xde:0x5 DW_TAG_pointer_type
	.long	227                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xe3:0x5 DW_TAG_const_type
	.long	232                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xe8:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xef:0x5 DW_TAG_pointer_type
	.long	244                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xf4:0x5 DW_TAG_pointer_type
	.long	232                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xf9:0x5 DW_TAG_pointer_type
	.long	254                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xfe:0x5 DW_TAG_pointer_type
	.long	259                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x103:0xb DW_TAG_typedef
	.long	270                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x10e:0x2d DW_TAG_structure_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x116:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	244                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x122:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	244                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x12e:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x13b:0x5 DW_TAG_pointer_type
	.long	270                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/builtin_utils.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=66
.Linfo_string3:
	.asciz	"ft_strcmp"                     # string offset=124
.Linfo_string4:
	.asciz	"int"                           # string offset=134
.Linfo_string5:
	.asciz	"cmd_arg_nbr"                   # string offset=138
.Linfo_string6:
	.asciz	"add_new_var_to_env"            # string offset=150
.Linfo_string7:
	.asciz	"str1"                          # string offset=169
.Linfo_string8:
	.asciz	"char"                          # string offset=174
.Linfo_string9:
	.asciz	"str2"                          # string offset=179
.Linfo_string10:
	.asciz	"arg_array"                     # string offset=184
.Linfo_string11:
	.asciz	"i"                             # string offset=194
.Linfo_string12:
	.asciz	"new_var"                       # string offset=196
.Linfo_string13:
	.asciz	"name"                          # string offset=204
.Linfo_string14:
	.asciz	"value"                         # string offset=209
.Linfo_string15:
	.asciz	"next"                          # string offset=215
.Linfo_string16:
	.asciz	"s_env"                         # string offset=220
.Linfo_string17:
	.asciz	"t_env"                         # string offset=226
.Linfo_string18:
	.asciz	"env"                           # string offset=232
.Linfo_string19:
	.asciz	"index"                         # string offset=236
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:

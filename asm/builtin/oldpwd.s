	.text
	.file	"oldpwd.c"
	.globl	get_oldpwd_attr                 # -- Begin function get_oldpwd_attr
	.p2align	4, 0x90
	.type	get_oldpwd_attr,@function
get_oldpwd_attr:                        # @get_oldpwd_attr
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/builtin/oldpwd.c"
	.loc	1 16 0                          # src/builtin/oldpwd.c:16:0
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
	.loc	1 17 9 prologue_end             # src/builtin/oldpwd.c:17:9
	movq	-8(%rbp), %rax
	.loc	1 17 8 is_stmt 0                # src/builtin/oldpwd.c:17:8
	movq	(%rax), %rax
	.loc	1 17 7                          # src/builtin/oldpwd.c:17:7
	cmpq	$0, (%rax)
.Ltmp1:
	.loc	1 17 6                          # src/builtin/oldpwd.c:17:6
	jne	.LBB0_4
# %bb.1:
.Ltmp2:
	.loc	1 19 21 is_stmt 1               # src/builtin/oldpwd.c:19:21
	movl	$7, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	1 19 5 is_stmt 0                # src/builtin/oldpwd.c:19:5
	movq	-8(%rbp), %rax
	.loc	1 19 4                          # src/builtin/oldpwd.c:19:4
	movq	(%rax), %rax
	.loc	1 19 19                         # src/builtin/oldpwd.c:19:19
	movq	%rcx, (%rax)
.Ltmp3:
	.loc	1 20 10 is_stmt 1               # src/builtin/oldpwd.c:20:10
	movq	-8(%rbp), %rax
	.loc	1 20 9 is_stmt 0                # src/builtin/oldpwd.c:20:9
	movq	(%rax), %rax
	.loc	1 20 8                          # src/builtin/oldpwd.c:20:8
	cmpq	$0, (%rax)
.Ltmp4:
	.loc	1 20 7                          # src/builtin/oldpwd.c:20:7
	jne	.LBB0_3
# %bb.2:
.Ltmp5:
	.loc	1 22 4 is_stmt 1                # src/builtin/oldpwd.c:22:4
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 23 4                          # src/builtin/oldpwd.c:23:4
	jmp	.LBB0_7
.Ltmp6:
.LBB0_3:
	.loc	1 25 16                         # src/builtin/oldpwd.c:25:16
	movq	-8(%rbp), %rax
	.loc	1 25 15 is_stmt 0               # src/builtin/oldpwd.c:25:15
	movq	(%rax), %rax
	.loc	1 25 25                         # src/builtin/oldpwd.c:25:25
	movq	(%rax), %rdi
	.loc	1 25 3                          # src/builtin/oldpwd.c:25:3
	movabsq	$.L.str.1, %rsi
	movl	$7, %edx
	callq	ft_strlcpy
.Ltmp7:
.LBB0_4:
	.loc	1 27 8 is_stmt 1                # src/builtin/oldpwd.c:27:8
	movq	-8(%rbp), %rax
	.loc	1 27 7 is_stmt 0                # src/builtin/oldpwd.c:27:7
	movq	(%rax), %rax
	.loc	1 27 6                          # src/builtin/oldpwd.c:27:6
	cmpq	$0, 8(%rax)
.Ltmp8:
	.loc	1 27 6                          # src/builtin/oldpwd.c:27:6
	je	.LBB0_6
# %bb.5:
.Ltmp9:
	.loc	1 28 10 is_stmt 1               # src/builtin/oldpwd.c:28:10
	movq	-8(%rbp), %rax
	.loc	1 28 9 is_stmt 0                # src/builtin/oldpwd.c:28:9
	movq	(%rax), %rax
	.loc	1 28 19                         # src/builtin/oldpwd.c:28:19
	movq	8(%rax), %rdi
	.loc	1 28 3                          # src/builtin/oldpwd.c:28:3
	callq	free
.Ltmp10:
.LBB0_6:
	.loc	1 29 23 is_stmt 1               # src/builtin/oldpwd.c:29:23
	movq	-16(%rbp), %rax
	.loc	1 29 22 is_stmt 0               # src/builtin/oldpwd.c:29:22
	movq	(%rax), %rax
	.loc	1 29 29                         # src/builtin/oldpwd.c:29:29
	movq	8(%rax), %rcx
	.loc	1 29 4                          # src/builtin/oldpwd.c:29:4
	movq	-8(%rbp), %rax
	.loc	1 29 3                          # src/builtin/oldpwd.c:29:3
	movq	(%rax), %rax
	.loc	1 29 19                         # src/builtin/oldpwd.c:29:19
	movq	%rcx, 8(%rax)
.LBB0_7:
	.loc	1 30 1 is_stmt 1                # src/builtin/oldpwd.c:30:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end0:
	.size	get_oldpwd_attr, .Lfunc_end0-get_oldpwd_attr
	.cfi_endproc
                                        # -- End function
	.globl	get_oldpwd                      # -- Begin function get_oldpwd
	.p2align	4, 0x90
	.type	get_oldpwd,@function
get_oldpwd:                             # @get_oldpwd
.Lfunc_begin1:
	.loc	1 33 0                          # src/builtin/oldpwd.c:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp12:
	.loc	1 37 9 prologue_end             # src/builtin/oldpwd.c:37:9
	movq	$0, -32(%rbp)
	.loc	1 38 12                         # src/builtin/oldpwd.c:38:12
	movq	-16(%rbp), %rax
	.loc	1 38 11 is_stmt 0               # src/builtin/oldpwd.c:38:11
	movq	(%rax), %rax
	.loc	1 38 8                          # src/builtin/oldpwd.c:38:8
	movq	%rax, -40(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 39 2 is_stmt 1                # src/builtin/oldpwd.c:39:2
	cmpq	$0, -40(%rbp)
	je	.LBB1_5
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp13:
	.loc	1 41 18                         # src/builtin/oldpwd.c:41:18
	movq	-40(%rbp), %rax
	.loc	1 41 25 is_stmt 0               # src/builtin/oldpwd.c:41:25
	movq	(%rax), %rdi
	.loc	1 41 7                          # src/builtin/oldpwd.c:41:7
	movabsq	$.L.str.1, %rsi
	movl	$6, %edx
	callq	ft_strncmp
	.loc	1 41 44                         # src/builtin/oldpwd.c:41:44
	cmpl	$0, %eax
.Ltmp14:
	.loc	1 41 7                          # src/builtin/oldpwd.c:41:7
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp15:
	.loc	1 42 13 is_stmt 1               # src/builtin/oldpwd.c:42:13
	movq	-40(%rbp), %rax
	.loc	1 42 11 is_stmt 0               # src/builtin/oldpwd.c:42:11
	movq	%rax, -32(%rbp)
.Ltmp16:
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 43 11 is_stmt 1               # src/builtin/oldpwd.c:43:11
	movq	-40(%rbp), %rax
	.loc	1 43 18 is_stmt 0               # src/builtin/oldpwd.c:43:18
	movq	16(%rax), %rax
	.loc	1 43 9                          # src/builtin/oldpwd.c:43:9
	movq	%rax, -40(%rbp)
.Ltmp17:
	.loc	1 39 2 is_stmt 1                # src/builtin/oldpwd.c:39:2
	jmp	.LBB1_1
.LBB1_5:
.Ltmp18:
	.loc	1 45 7                          # src/builtin/oldpwd.c:45:7
	cmpq	$0, -32(%rbp)
.Ltmp19:
	.loc	1 45 6 is_stmt 0                # src/builtin/oldpwd.c:45:6
	jne	.LBB1_9
# %bb.6:
.Ltmp20:
	.loc	1 47 12 is_stmt 1               # src/builtin/oldpwd.c:47:12
	movl	$24, %edi
	callq	malloc
	.loc	1 47 10 is_stmt 0               # src/builtin/oldpwd.c:47:10
	movq	%rax, -32(%rbp)
.Ltmp21:
	.loc	1 48 8 is_stmt 1                # src/builtin/oldpwd.c:48:8
	cmpq	$0, -32(%rbp)
.Ltmp22:
	.loc	1 48 7 is_stmt 0                # src/builtin/oldpwd.c:48:7
	jne	.LBB1_8
# %bb.7:
.Ltmp23:
	.loc	1 49 12 is_stmt 1               # src/builtin/oldpwd.c:49:12
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 49 4 is_stmt 0                # src/builtin/oldpwd.c:49:4
	movq	$0, -8(%rbp)
	jmp	.LBB1_10
.Ltmp24:
.LBB1_8:
	.loc	1 50 3 is_stmt 1                # src/builtin/oldpwd.c:50:3
	leaq	-32(%rbp), %rdi
	callq	init_env_var_attr
.Ltmp25:
.LBB1_9:
	.loc	1 52 2                          # src/builtin/oldpwd.c:52:2
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	get_oldpwd_attr
	.loc	1 53 10                         # src/builtin/oldpwd.c:53:10
	movq	-32(%rbp), %rax
	.loc	1 53 2 is_stmt 0                # src/builtin/oldpwd.c:53:2
	movq	%rax, -8(%rbp)
.LBB1_10:
	.loc	1 54 1 is_stmt 1                # src/builtin/oldpwd.c:54:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end1:
	.size	get_oldpwd, .Lfunc_end1-get_oldpwd
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"OLDPWD"
	.size	.L.str.1, 7

	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/builtin/../../include/minishell.h"
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
	.byte	7                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0xf8 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x32 DW_TAG_subprogram
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
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	253                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	253                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x5d:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	175                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	253                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	175                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x92:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	175                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xa0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	175                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xaf:0x5 DW_TAG_pointer_type
	.long	180                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xb4:0xb DW_TAG_typedef
	.long	191                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbf:0x2d DW_TAG_structure_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc7:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	236                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xd3:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	236                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xdf:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	248                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xec:0x5 DW_TAG_pointer_type
	.long	241                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xf1:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xf8:0x5 DW_TAG_pointer_type
	.long	191                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xfd:0x5 DW_TAG_pointer_type
	.long	175                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/oldpwd.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=59
.Linfo_string3:
	.asciz	"get_oldpwd_attr"               # string offset=128
.Linfo_string4:
	.asciz	"get_oldpwd"                    # string offset=144
.Linfo_string5:
	.asciz	"name"                          # string offset=155
.Linfo_string6:
	.asciz	"char"                          # string offset=160
.Linfo_string7:
	.asciz	"value"                         # string offset=165
.Linfo_string8:
	.asciz	"next"                          # string offset=171
.Linfo_string9:
	.asciz	"s_env"                         # string offset=176
.Linfo_string10:
	.asciz	"t_env"                         # string offset=182
.Linfo_string11:
	.asciz	"oldpwd"                        # string offset=188
.Linfo_string12:
	.asciz	"pwd"                           # string offset=195
.Linfo_string13:
	.asciz	"env"                           # string offset=199
.Linfo_string14:
	.asciz	"index"                         # string offset=203
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_oldpwd_attr
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym ft_strlcpy
	.addrsig_sym free
	.addrsig_sym ft_strncmp
	.addrsig_sym init_env_var_attr
	.section	.debug_line,"",@progbits
.Lline_table_start0:

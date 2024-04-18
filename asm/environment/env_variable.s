	.text
	.file	"env_variable.c"
	.globl	get_name_length                 # -- Begin function get_name_length
	.p2align	4, 0x90
	.type	get_name_length,@function
get_name_length:                        # @get_name_length
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/environment/env_variable.c"
	.loc	1 16 0                          # src/environment/env_variable.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 19 4 prologue_end             # src/environment/env_variable.c:19:4
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 9                          # src/environment/env_variable.c:20:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	.loc	1 20 17 is_stmt 0               # src/environment/env_variable.c:20:17
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 20 20                         # src/environment/env_variable.c:20:20
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 20 28                         # src/environment/env_variable.c:20:28
	cmpl	$61, %eax
	setne	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 28                          # src/environment/env_variable.c:0:28
	movb	-13(%rbp), %al                  # 1-byte Reload
	.loc	1 20 2                          # src/environment/env_variable.c:20:2
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 21 4 is_stmt 1                # src/environment/env_variable.c:21:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 20 2                          # src/environment/env_variable.c:20:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 22 10                         # src/environment/env_variable.c:22:10
	movl	-12(%rbp), %eax
	.loc	1 22 2 is_stmt 0                # src/environment/env_variable.c:22:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	get_name_length, .Lfunc_end0-get_name_length
	.cfi_endproc
                                        # -- End function
	.globl	get_variable_name               # -- Begin function get_variable_name
	.p2align	4, 0x90
	.type	get_variable_name,@function
get_variable_name:                      # @get_variable_name
.Lfunc_begin1:
	.loc	1 26 0 is_stmt 1                # src/environment/env_variable.c:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp2:
	.loc	1 31 24 prologue_end            # src/environment/env_variable.c:31:24
	movq	-8(%rbp), %rdi
	.loc	1 31 8 is_stmt 0                # src/environment/env_variable.c:31:8
	callq	get_name_length
	.loc	1 31 6                          # src/environment/env_variable.c:31:6
	movl	%eax, -16(%rbp)
	.loc	1 32 16 is_stmt 1               # src/environment/env_variable.c:32:16
	movl	-16(%rbp), %eax
	.loc	1 32 20 is_stmt 0               # src/environment/env_variable.c:32:20
	addl	$1, %eax
	.loc	1 32 16                         # src/environment/env_variable.c:32:16
	movslq	%eax, %rdi
	.loc	1 32 9                          # src/environment/env_variable.c:32:9
	callq	malloc
	.loc	1 32 7                          # src/environment/env_variable.c:32:7
	movq	%rax, -24(%rbp)
	.loc	1 33 4 is_stmt 1                # src/environment/env_variable.c:33:4
	movl	$0, -12(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 34 9                          # src/environment/env_variable.c:34:9
	movl	-12(%rbp), %eax
	.loc	1 34 11 is_stmt 0               # src/environment/env_variable.c:34:11
	cmpl	-16(%rbp), %eax
	.loc	1 34 2                          # src/environment/env_variable.c:34:2
	jge	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp3:
	.loc	1 36 13 is_stmt 1               # src/environment/env_variable.c:36:13
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 36 3 is_stmt 0                # src/environment/env_variable.c:36:3
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 36 11                         # src/environment/env_variable.c:36:11
	movb	%dl, (%rax,%rcx)
	.loc	1 37 4 is_stmt 1                # src/environment/env_variable.c:37:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp4:
	.loc	1 34 2                          # src/environment/env_variable.c:34:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 39 2                          # src/environment/env_variable.c:39:2
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 39 10 is_stmt 0               # src/environment/env_variable.c:39:10
	movb	$0, (%rax,%rcx)
	.loc	1 40 10 is_stmt 1               # src/environment/env_variable.c:40:10
	movq	-24(%rbp), %rax
	.loc	1 40 2 is_stmt 0                # src/environment/env_variable.c:40:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end1:
	.size	get_variable_name, .Lfunc_end1-get_variable_name
	.cfi_endproc
                                        # -- End function
	.globl	get_variable_value              # -- Begin function get_variable_value
	.p2align	4, 0x90
	.type	get_variable_value,@function
get_variable_value:                     # @get_variable_value
.Lfunc_begin2:
	.loc	1 44 0 is_stmt 1                # src/environment/env_variable.c:44:0
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
	.loc	1 49 4 prologue_end             # src/environment/env_variable.c:49:4
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 50 9                          # src/environment/env_variable.c:50:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	1 50 17 is_stmt 0               # src/environment/env_variable.c:50:17
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 50 20                         # src/environment/env_variable.c:50:20
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 50 28                         # src/environment/env_variable.c:50:28
	cmpl	$61, %eax
	setne	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 28                          # src/environment/env_variable.c:0:28
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	1 50 2                          # src/environment/env_variable.c:50:2
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 51 4 is_stmt 1                # src/environment/env_variable.c:51:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 50 2                          # src/environment/env_variable.c:50:2
	jmp	.LBB2_1
.LBB2_5:
	.loc	1 52 3                          # src/environment/env_variable.c:52:3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 53 28                         # src/environment/env_variable.c:53:28
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 53 17 is_stmt 0               # src/environment/env_variable.c:53:17
	callq	ft_strlen
	movq	%rax, %rdi
	.loc	1 53 37                         # src/environment/env_variable.c:53:37
	addq	$1, %rdi
	.loc	1 53 10                         # src/environment/env_variable.c:53:10
	callq	malloc
	.loc	1 53 8                          # src/environment/env_variable.c:53:8
	movq	%rax, -24(%rbp)
	.loc	1 54 4 is_stmt 1                # src/environment/env_variable.c:54:4
	movl	$0, -16(%rbp)
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	.loc	1 55 9                          # src/environment/env_variable.c:55:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 55 2 is_stmt 0                # src/environment/env_variable.c:55:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
.Ltmp7:
	.loc	1 57 14 is_stmt 1               # src/environment/env_variable.c:57:14
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 57 3 is_stmt 0                # src/environment/env_variable.c:57:3
	movq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	.loc	1 57 12                         # src/environment/env_variable.c:57:12
	movb	%dl, (%rax,%rcx)
	.loc	1 58 4 is_stmt 1                # src/environment/env_variable.c:58:4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	1 59 4                          # src/environment/env_variable.c:59:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp8:
	.loc	1 55 2                          # src/environment/env_variable.c:55:2
	jmp	.LBB2_6
.LBB2_8:
	.loc	1 61 2                          # src/environment/env_variable.c:61:2
	movq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	.loc	1 61 11 is_stmt 0               # src/environment/env_variable.c:61:11
	movb	$0, (%rax,%rcx)
	.loc	1 62 10 is_stmt 1               # src/environment/env_variable.c:62:10
	movq	-24(%rbp), %rax
	.loc	1 62 2 is_stmt 0                # src/environment/env_variable.c:62:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end2:
	.size	get_variable_value, .Lfunc_end2-get_variable_value
	.cfi_endproc
                                        # -- End function
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x10d DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	260                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x51:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x60:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	267                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x79:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x87:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x95:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xb2:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	267                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xcb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd9:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe7:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	260                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xf5:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x104:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x10b:0x5 DW_TAG_pointer_type
	.long	272                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x110:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/environment/env_variable.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=69
.Linfo_string3:
	.asciz	"get_name_length"               # string offset=127
.Linfo_string4:
	.asciz	"int"                           # string offset=143
.Linfo_string5:
	.asciz	"get_variable_name"             # string offset=147
.Linfo_string6:
	.asciz	"char"                          # string offset=165
.Linfo_string7:
	.asciz	"get_variable_value"            # string offset=170
.Linfo_string8:
	.asciz	"envp"                          # string offset=189
.Linfo_string9:
	.asciz	"i"                             # string offset=194
.Linfo_string10:
	.asciz	"len"                           # string offset=196
.Linfo_string11:
	.asciz	"name"                          # string offset=200
.Linfo_string12:
	.asciz	"j"                             # string offset=205
.Linfo_string13:
	.asciz	"value"                         # string offset=207
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_name_length
	.addrsig_sym malloc
	.addrsig_sym ft_strlen
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.text
	.file	"builtin_utils.c"
	.globl	ft_strcmp                       # -- Begin function ft_strcmp
	.p2align	4, 0x90
	.type	ft_strcmp,@function
ft_strcmp:                              # @ft_strcmp
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/builtin/builtin_utils.c"
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
	.globl	is_valid_variable               # -- Begin function is_valid_variable
	.p2align	4, 0x90
	.type	is_valid_variable,@function
is_valid_variable:                      # @is_valid_variable
.Lfunc_begin2:
	.loc	1 36 0 is_stmt 1                # src/builtin/builtin_utils.c:36:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp6:
	.loc	1 39 18 prologue_end            # src/builtin/builtin_utils.c:39:18
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	.loc	1 39 7 is_stmt 0                # src/builtin/builtin_utils.c:39:7
	callq	ft_isalpha
	cmpl	$0, %eax
	.loc	1 39 26                         # src/builtin/builtin_utils.c:39:26
	jne	.LBB2_3
# %bb.1:
	.loc	1 39 29                         # src/builtin/builtin_utils.c:39:29
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	.loc	1 39 36                         # src/builtin/builtin_utils.c:39:36
	cmpl	$95, %eax
.Ltmp7:
	.loc	1 39 6                          # src/builtin/builtin_utils.c:39:6
	je	.LBB2_3
# %bb.2:
.Ltmp8:
	.loc	1 40 3 is_stmt 1                # src/builtin/builtin_utils.c:40:3
	movb	$0, -1(%rbp)
	jmp	.LBB2_15
.Ltmp9:
.LBB2_3:
	.loc	1 41 4                          # src/builtin/builtin_utils.c:41:4
	movl	$0, -20(%rbp)
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	.loc	1 42 9                          # src/builtin/builtin_utils.c:42:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	.loc	1 42 16 is_stmt 0               # src/builtin/builtin_utils.c:42:16
	je	.LBB2_8
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	.loc	1 42 31                         # src/builtin/builtin_utils.c:42:31
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	.loc	1 42 20                         # src/builtin/builtin_utils.c:42:20
	callq	ft_isalnum
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -22(%rbp)                  # 1-byte Spill
	.loc	1 42 39                         # src/builtin/builtin_utils.c:42:39
	jne	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	.loc	1 42 42                         # src/builtin/builtin_utils.c:42:42
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 42 49                         # src/builtin/builtin_utils.c:42:49
	cmpl	$95, %eax
	sete	%al
	movb	%al, -22(%rbp)                  # 1-byte Spill
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	.loc	1 0 49                          # src/builtin/builtin_utils.c:0:49
	movb	-22(%rbp), %al                  # 1-byte Reload
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
	movb	-21(%rbp), %al                  # 1-byte Reload
	.loc	1 42 2                          # src/builtin/builtin_utils.c:42:2
	testb	$1, %al
	jne	.LBB2_9
	jmp	.LBB2_14
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
.Ltmp10:
	.loc	1 44 4 is_stmt 1                # src/builtin/builtin_utils.c:44:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp11:
	.loc	1 45 8                          # src/builtin/builtin_utils.c:45:8
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 45 15 is_stmt 0               # src/builtin/builtin_utils.c:45:15
	cmpl	$43, %eax
	.loc	1 45 22                         # src/builtin/builtin_utils.c:45:22
	jne	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
	.loc	1 45 25                         # src/builtin/builtin_utils.c:45:25
	movq	-16(%rbp), %rax
	.loc	1 45 29                         # src/builtin/builtin_utils.c:45:29
	movl	-20(%rbp), %ecx
	.loc	1 45 31                         # src/builtin/builtin_utils.c:45:31
	addl	$1, %ecx
	.loc	1 45 25                         # src/builtin/builtin_utils.c:45:25
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 45 36                         # src/builtin/builtin_utils.c:45:36
	cmpl	$61, %eax
	.loc	1 45 44                         # src/builtin/builtin_utils.c:45:44
	je	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_4 Depth=1
	.loc	1 45 47                         # src/builtin/builtin_utils.c:45:47
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 45 54                         # src/builtin/builtin_utils.c:45:54
	cmpl	$61, %eax
.Ltmp12:
	.loc	1 45 7                          # src/builtin/builtin_utils.c:45:7
	jne	.LBB2_13
.LBB2_12:
.Ltmp13:
	.loc	1 46 4 is_stmt 1                # src/builtin/builtin_utils.c:46:4
	movb	$1, -1(%rbp)
	jmp	.LBB2_15
.Ltmp14:
.LBB2_13:                               #   in Loop: Header=BB2_4 Depth=1
	.loc	1 42 2                          # src/builtin/builtin_utils.c:42:2
	jmp	.LBB2_4
.LBB2_14:
	.loc	1 48 2                          # src/builtin/builtin_utils.c:48:2
	movb	$0, -1(%rbp)
.LBB2_15:
	.loc	1 49 1                          # src/builtin/builtin_utils.c:49:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end2:
	.size	is_valid_variable, .Lfunc_end2-is_valid_variable
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
	.byte	7                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
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
	.byte	1                               # Abbrev [1] 0xb:0xeb DW_TAG_compile_unit
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
	.long	204                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	218                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x51:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	218                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x60:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	204                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x79:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	235                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x87:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	204                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x96:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	211                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xaf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	240                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xbd:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	204                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xcc:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xd3:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xda:0x5 DW_TAG_pointer_type
	.long	223                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xdf:0x5 DW_TAG_const_type
	.long	228                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe4:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xeb:0x5 DW_TAG_pointer_type
	.long	240                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf0:0x5 DW_TAG_pointer_type
	.long	228                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/builtin_utils.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=66
.Linfo_string3:
	.asciz	"ft_strcmp"                     # string offset=103
.Linfo_string4:
	.asciz	"int"                           # string offset=113
.Linfo_string5:
	.asciz	"cmd_arg_nbr"                   # string offset=117
.Linfo_string6:
	.asciz	"is_valid_variable"             # string offset=129
.Linfo_string7:
	.asciz	"_Bool"                         # string offset=147
.Linfo_string8:
	.asciz	"str1"                          # string offset=153
.Linfo_string9:
	.asciz	"char"                          # string offset=158
.Linfo_string10:
	.asciz	"str2"                          # string offset=163
.Linfo_string11:
	.asciz	"arg_array"                     # string offset=168
.Linfo_string12:
	.asciz	"i"                             # string offset=178
.Linfo_string13:
	.asciz	"arg"                           # string offset=180
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_isalpha
	.addrsig_sym ft_isalnum
	.section	.debug_line,"",@progbits
.Lline_table_start0:

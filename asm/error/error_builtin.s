	.text
	.file	"error_builtin.c"
	.globl	error_unset                     # -- Begin function error_unset
	.p2align	4, 0x90
	.type	error_unset,@function
error_unset:                            # @error_unset
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/error/error_builtin.c"
	.loc	1 16 0                          # src/error/error_builtin.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp0:
	.loc	1 17 13 prologue_end            # src/error/error_builtin.c:17:13
	cmpl	$1, -4(%rbp)
.Ltmp1:
	.loc	1 17 6 is_stmt 0                # src/error/error_builtin.c:17:6
	jne	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	1 19 3 is_stmt 1                # src/error/error_builtin.c:19:3
	movl	$2, %edi
	movabsq	$.L.str, %rsi
	movl	$15, %edx
	callq	write
	.loc	1 20 12                         # src/error/error_builtin.c:20:12
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	1 20 27 is_stmt 0               # src/error/error_builtin.c:20:27
	movq	-16(%rbp), %rdi
	.loc	1 20 17                         # src/error/error_builtin.c:20:17
	callq	ft_strlen
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 20 3                          # src/error/error_builtin.c:20:3
	movl	$2, %edi
	callq	write
	.loc	1 21 3 is_stmt 1                # src/error/error_builtin.c:21:3
	movl	$2, %edi
	movabsq	$.L.str.1, %rsi
	movl	$26, %edx
	callq	write
	.loc	1 22 4                          # src/error/error_builtin.c:22:4
	movq	-24(%rbp), %rax
	.loc	1 22 16 is_stmt 0               # src/error/error_builtin.c:22:16
	movb	$1, (%rax)
.Ltmp3:
.LBB0_2:
	.loc	1 24 1 is_stmt 1                # src/error/error_builtin.c:24:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	error_unset, .Lfunc_end0-error_unset
	.cfi_endproc
                                        # -- End function
	.globl	error_export                    # -- Begin function error_export
	.p2align	4, 0x90
	.type	error_export,@function
error_export:                           # @error_export
.Lfunc_begin1:
	.loc	1 27 0                          # src/error/error_builtin.c:27:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp5:
	.loc	1 28 13 prologue_end            # src/error/error_builtin.c:28:13
	cmpl	$1, -4(%rbp)
.Ltmp6:
	.loc	1 28 6 is_stmt 0                # src/error/error_builtin.c:28:6
	jne	.LBB1_2
# %bb.1:
.Ltmp7:
	.loc	1 30 3 is_stmt 1                # src/error/error_builtin.c:30:3
	movl	$2, %edi
	movabsq	$.L.str.2, %rsi
	movl	$15, %edx
	callq	write
	.loc	1 31 12                         # src/error/error_builtin.c:31:12
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	1 31 27 is_stmt 0               # src/error/error_builtin.c:31:27
	movq	-16(%rbp), %rdi
	.loc	1 31 17                         # src/error/error_builtin.c:31:17
	callq	ft_strlen
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 31 3                          # src/error/error_builtin.c:31:3
	movl	$2, %edi
	callq	write
	.loc	1 32 3 is_stmt 1                # src/error/error_builtin.c:32:3
	movl	$2, %edi
	movabsq	$.L.str.1, %rsi
	movl	$26, %edx
	callq	write
	.loc	1 33 4                          # src/error/error_builtin.c:33:4
	movq	-24(%rbp), %rax
	.loc	1 33 16 is_stmt 0               # src/error/error_builtin.c:33:16
	movb	$1, (%rax)
.Ltmp8:
.LBB1_2:
	.loc	1 35 1 is_stmt 1                # src/error/error_builtin.c:35:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end1:
	.size	error_export, .Lfunc_end1-error_export
	.cfi_endproc
                                        # -- End function
	.globl	error_cd                        # -- Begin function error_cd
	.p2align	4, 0x90
	.type	error_cd,@function
error_cd:                               # @error_cd
.Lfunc_begin2:
	.loc	1 38 0                          # src/error/error_builtin.c:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp10:
	.loc	1 40 13 prologue_end            # src/error/error_builtin.c:40:13
	cmpl	$1, -4(%rbp)
.Ltmp11:
	.loc	1 40 6 is_stmt 0                # src/error/error_builtin.c:40:6
	jne	.LBB2_2
# %bb.1:
.Ltmp12:
	.loc	1 42 3 is_stmt 1                # src/error/error_builtin.c:42:3
	movl	$2, %edi
	movabsq	$.L.str.3, %rsi
	movl	$23, %edx
	callq	write
	.loc	1 43 4                          # src/error/error_builtin.c:43:4
	movq	-24(%rbp), %rax
	.loc	1 43 16 is_stmt 0               # src/error/error_builtin.c:43:16
	movb	$1, (%rax)
	.loc	1 44 2 is_stmt 1                # src/error/error_builtin.c:44:2
	jmp	.LBB2_5
.Ltmp13:
.LBB2_2:
	.loc	1 45 18                         # src/error/error_builtin.c:45:18
	cmpl	$2, -4(%rbp)
.Ltmp14:
	.loc	1 45 11 is_stmt 0               # src/error/error_builtin.c:45:11
	jne	.LBB2_4
# %bb.3:
.Ltmp15:
	.loc	1 47 3 is_stmt 1                # src/error/error_builtin.c:47:3
	movl	$2, %edi
	movabsq	$.L.str.4, %rsi
	movl	$29, %edx
	callq	write
	.loc	1 48 4                          # src/error/error_builtin.c:48:4
	movq	-24(%rbp), %rax
	.loc	1 48 16 is_stmt 0               # src/error/error_builtin.c:48:16
	movb	$1, (%rax)
.Ltmp16:
.LBB2_4:
	.loc	1 0 16                          # src/error/error_builtin.c:0:16
	jmp	.LBB2_5
.LBB2_5:
	.loc	1 50 1 is_stmt 1                # src/error/error_builtin.c:50:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	error_cd, .Lfunc_end2-error_cd
	.cfi_endproc
                                        # -- End function
	.globl	error_exit                      # -- Begin function error_exit
	.p2align	4, 0x90
	.type	error_exit,@function
error_exit:                             # @error_exit
.Lfunc_begin3:
	.loc	1 53 0                          # src/error/error_builtin.c:53:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp18:
	.loc	1 54 13 prologue_end            # src/error/error_builtin.c:54:13
	cmpl	$1, -4(%rbp)
.Ltmp19:
	.loc	1 54 6 is_stmt 0                # src/error/error_builtin.c:54:6
	jne	.LBB3_2
# %bb.1:
.Ltmp20:
	.loc	1 59 57 is_stmt 1               # src/error/error_builtin.c:59:57
	movq	-16(%rbp), %rsi
	.loc	1 59 3 is_stmt 0                # src/error/error_builtin.c:59:3
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 60 4 is_stmt 1                # src/error/error_builtin.c:60:4
	movq	-24(%rbp), %rax
	.loc	1 60 16 is_stmt 0               # src/error/error_builtin.c:60:16
	movb	$2, (%rax)
	.loc	1 61 2 is_stmt 1                # src/error/error_builtin.c:61:2
	jmp	.LBB3_5
.Ltmp21:
.LBB3_2:
	.loc	1 62 18                         # src/error/error_builtin.c:62:18
	cmpl	$2, -4(%rbp)
.Ltmp22:
	.loc	1 62 11 is_stmt 0               # src/error/error_builtin.c:62:11
	jne	.LBB3_4
# %bb.3:
.Ltmp23:
	.loc	1 64 3 is_stmt 1                # src/error/error_builtin.c:64:3
	movl	$2, %edi
	movabsq	$.L.str.6, %rsi
	movl	$33, %edx
	callq	write
	.loc	1 65 4                          # src/error/error_builtin.c:65:4
	movq	-24(%rbp), %rax
	.loc	1 65 16 is_stmt 0               # src/error/error_builtin.c:65:16
	movb	$2, (%rax)
.Ltmp24:
.LBB3_4:
	.loc	1 0 16                          # src/error/error_builtin.c:0:16
	jmp	.LBB3_5
.LBB3_5:
	.loc	1 67 1 is_stmt 1                # src/error/error_builtin.c:67:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end3:
	.size	error_exit, .Lfunc_end3-error_exit
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bash: unset: `"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"': not a valid identifier\n"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bash: export: `"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"bash: cd: HOME not set\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"bash: cd: too many arguments\n"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"bash: exit: %s: numeric argument required\n"
	.size	.L.str.5, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"bash: exit: too many arguments\n"
	.size	.L.str.6, 32

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
	.byte	1                               # Abbrev [1] 0xb:0x13f DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	305                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x5b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	317                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6a:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x7f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x8d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	305                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x9b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	317                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xaa:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xbf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xcd:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	305                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xdb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	317                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xea:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xff:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x10d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	305                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x11b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	317                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x12a:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x131:0x5 DW_TAG_pointer_type
	.long	310                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x136:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x13d:0x5 DW_TAG_pointer_type
	.long	322                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x142:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/error/error_builtin.c"     # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=64
.Linfo_string3:
	.asciz	"error_unset"                   # string offset=101
.Linfo_string4:
	.asciz	"error_export"                  # string offset=113
.Linfo_string5:
	.asciz	"error_cd"                      # string offset=126
.Linfo_string6:
	.asciz	"error_exit"                    # string offset=135
.Linfo_string7:
	.asciz	"errnum"                        # string offset=146
.Linfo_string8:
	.asciz	"int"                           # string offset=153
.Linfo_string9:
	.asciz	"arg"                           # string offset=157
.Linfo_string10:
	.asciz	"char"                          # string offset=161
.Linfo_string11:
	.asciz	"exit_status"                   # string offset=166
.Linfo_string12:
	.asciz	"unsigned char"                 # string offset=178
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write
	.addrsig_sym ft_strlen
	.addrsig_sym printf
	.section	.debug_line,"",@progbits
.Lline_table_start0:

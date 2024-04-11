	.text
	.file	"command_path.c"
	.globl	search_command_path             # -- Begin function search_command_path
	.p2align	4, 0x90
	.type	search_command_path,@function
search_command_path:                    # @search_command_path
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/command_path.c"
	.loc	1 16 0                          # src/parsing/command_path.c:16:0
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
.Ltmp0:
	.loc	1 21 4 prologue_end             # src/parsing/command_path.c:21:4
	movl	$0, -28(%rbp)
.Ltmp1:
	.loc	1 22 7                          # src/parsing/command_path.c:22:7
	cmpq	$0, -16(%rbp)
.Ltmp2:
	.loc	1 22 6 is_stmt 0                # src/parsing/command_path.c:22:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	1 23 3 is_stmt 1                # src/parsing/command_path.c:23:3
	movq	$0, -8(%rbp)
	jmp	.LBB0_8
.Ltmp4:
.LBB0_2:
	.loc	1 24 2                          # src/parsing/command_path.c:24:2
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 24 9 is_stmt 0                # src/parsing/command_path.c:24:9
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	1 24 2                          # src/parsing/command_path.c:24:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp5:
	.loc	1 26 20 is_stmt 1               # src/parsing/command_path.c:26:20
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 26 29 is_stmt 0               # src/parsing/command_path.c:26:29
	movq	-24(%rbp), %rsi
	.loc	1 26 9                          # src/parsing/command_path.c:26:9
	callq	ft_strjoin
	.loc	1 26 7                          # src/parsing/command_path.c:26:7
	movq	%rax, -40(%rbp)
.Ltmp6:
	.loc	1 27 14 is_stmt 1               # src/parsing/command_path.c:27:14
	movq	-40(%rbp), %rdi
	.loc	1 27 7 is_stmt 0                # src/parsing/command_path.c:27:7
	xorl	%esi, %esi
	callq	access
	.loc	1 27 25                         # src/parsing/command_path.c:27:25
	cmpl	$0, %eax
.Ltmp7:
	.loc	1 27 7                          # src/parsing/command_path.c:27:7
	jne	.LBB0_6
# %bb.5:
.Ltmp8:
	.loc	1 29 25 is_stmt 1               # src/parsing/command_path.c:29:25
	movq	-40(%rbp), %rdi
	.loc	1 29 15 is_stmt 0               # src/parsing/command_path.c:29:15
	callq	ft_strdup
	.loc	1 29 13                         # src/parsing/command_path.c:29:13
	movq	%rax, -48(%rbp)
	.loc	1 30 4 is_stmt 1                # src/parsing/command_path.c:30:4
	callq	__errno_location
	.loc	1 30 10 is_stmt 0               # src/parsing/command_path.c:30:10
	movl	$0, (%rax)
	.loc	1 31 9 is_stmt 1                # src/parsing/command_path.c:31:9
	movq	-40(%rbp), %rdi
	.loc	1 31 4 is_stmt 0                # src/parsing/command_path.c:31:4
	callq	free
	.loc	1 32 12 is_stmt 1               # src/parsing/command_path.c:32:12
	movq	-48(%rbp), %rax
	.loc	1 32 4 is_stmt 0                # src/parsing/command_path.c:32:4
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.Ltmp9:
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 34 8 is_stmt 1                # src/parsing/command_path.c:34:8
	movq	-40(%rbp), %rdi
	.loc	1 34 3 is_stmt 0                # src/parsing/command_path.c:34:3
	callq	free
	.loc	1 35 4 is_stmt 1                # src/parsing/command_path.c:35:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp10:
	.loc	1 24 2                          # src/parsing/command_path.c:24:2
	jmp	.LBB0_3
.LBB0_7:
	.loc	1 37 2                          # src/parsing/command_path.c:37:2
	movq	$0, -8(%rbp)
.LBB0_8:
	.loc	1 38 1                          # src/parsing/command_path.c:38:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end0:
	.size	search_command_path, .Lfunc_end0-search_command_path
	.cfi_endproc
                                        # -- End function
	.globl	get_command_path                # -- Begin function get_command_path
	.p2align	4, 0x90
	.type	get_command_path,@function
get_command_path:                       # @get_command_path
.Lfunc_begin1:
	.loc	1 41 0                          # src/parsing/command_path.c:41:0
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
	.loc	1 45 4 prologue_end             # src/parsing/command_path.c:45:4
	movl	$0, -28(%rbp)
.Ltmp13:
	.loc	1 46 7                          # src/parsing/command_path.c:46:7
	cmpq	$0, -16(%rbp)
	.loc	1 46 12 is_stmt 0               # src/parsing/command_path.c:46:12
	je	.LBB1_3
# %bb.1:
	.loc	1 46 16                         # src/parsing/command_path.c:46:16
	cmpq	$0, -24(%rbp)
	.loc	1 46 25                         # src/parsing/command_path.c:46:25
	je	.LBB1_3
# %bb.2:
	.loc	1 46 39                         # src/parsing/command_path.c:46:39
	movq	-24(%rbp), %rdi
	.loc	1 46 28                         # src/parsing/command_path.c:46:28
	callq	is_builtin
.Ltmp14:
	.loc	1 46 6                          # src/parsing/command_path.c:46:6
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:
.Ltmp15:
	.loc	1 47 3 is_stmt 1                # src/parsing/command_path.c:47:3
	movq	$0, -8(%rbp)
	jmp	.LBB1_7
.Ltmp16:
.LBB1_4:
	.loc	1 48 13                         # src/parsing/command_path.c:48:13
	movq	-24(%rbp), %rdi
	.loc	1 48 6 is_stmt 0                # src/parsing/command_path.c:48:6
	xorl	%esi, %esi
	callq	access
	.loc	1 48 29                         # src/parsing/command_path.c:48:29
	cmpl	$0, %eax
.Ltmp17:
	.loc	1 48 6                          # src/parsing/command_path.c:48:6
	jne	.LBB1_6
# %bb.5:
.Ltmp18:
	.loc	1 50 24 is_stmt 1               # src/parsing/command_path.c:50:24
	movq	-24(%rbp), %rdi
	.loc	1 50 14 is_stmt 0               # src/parsing/command_path.c:50:14
	callq	ft_strdup
	.loc	1 50 12                         # src/parsing/command_path.c:50:12
	movq	%rax, -40(%rbp)
	.loc	1 51 11 is_stmt 1               # src/parsing/command_path.c:51:11
	movq	-40(%rbp), %rax
	.loc	1 51 3 is_stmt 0                # src/parsing/command_path.c:51:3
	movq	%rax, -8(%rbp)
	jmp	.LBB1_7
.Ltmp19:
.LBB1_6:
	.loc	1 53 33 is_stmt 1               # src/parsing/command_path.c:53:33
	movq	-16(%rbp), %rdi
	.loc	1 53 39 is_stmt 0               # src/parsing/command_path.c:53:39
	movq	-24(%rbp), %rsi
	.loc	1 53 13                         # src/parsing/command_path.c:53:13
	callq	search_command_path
	.loc	1 53 11                         # src/parsing/command_path.c:53:11
	movq	%rax, -40(%rbp)
	.loc	1 54 2 is_stmt 1                # src/parsing/command_path.c:54:2
	callq	__errno_location
	.loc	1 54 8 is_stmt 0                # src/parsing/command_path.c:54:8
	movl	$0, (%rax)
	.loc	1 55 10 is_stmt 1               # src/parsing/command_path.c:55:10
	movq	-40(%rbp), %rax
	.loc	1 55 2 is_stmt 0                # src/parsing/command_path.c:55:2
	movq	%rax, -8(%rbp)
.LBB1_7:
	.loc	1 56 1 is_stmt 1                # src/parsing/command_path.c:56:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp20:
.Lfunc_end1:
	.size	get_command_path, .Lfunc_end1-get_command_path
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xea DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	220                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	232                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x51:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	237                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x8a:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	220                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xa3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	232                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xb1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xbf:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	237                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xcd:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	220                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xdc:0x5 DW_TAG_pointer_type
	.long	225                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe1:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xe8:0x5 DW_TAG_pointer_type
	.long	220                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xed:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_path.c"    # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=65
.Linfo_string3:
	.asciz	"search_command_path"           # string offset=102
.Linfo_string4:
	.asciz	"char"                          # string offset=122
.Linfo_string5:
	.asciz	"get_command_path"              # string offset=127
.Linfo_string6:
	.asciz	"path"                          # string offset=144
.Linfo_string7:
	.asciz	"cmd_name"                      # string offset=149
.Linfo_string8:
	.asciz	"i"                             # string offset=158
.Linfo_string9:
	.asciz	"int"                           # string offset=160
.Linfo_string10:
	.asciz	"tmp"                           # string offset=164
.Linfo_string11:
	.asciz	"cmd_path"                      # string offset=168
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym search_command_path
	.addrsig_sym ft_strjoin
	.addrsig_sym access
	.addrsig_sym ft_strdup
	.addrsig_sym __errno_location
	.addrsig_sym free
	.addrsig_sym is_builtin
	.section	.debug_line,"",@progbits
.Lline_table_start0:

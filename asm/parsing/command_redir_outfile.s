	.text
	.file	"command_redir_outfile.c"
	.globl	add_outfile_to_list             # -- Begin function add_outfile_to_list
	.p2align	4, 0x90
	.type	add_outfile_to_list,@function
add_outfile_to_list:                    # @add_outfile_to_list
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/command_redir_outfile.c"
	.loc	1 16 0                          # src/parsing/command_redir_outfile.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp0:
	.loc	1 19 8 prologue_end             # src/parsing/command_redir_outfile.c:19:8
	movq	-8(%rbp), %rax
	.loc	1 19 6 is_stmt 0                # src/parsing/command_redir_outfile.c:19:6
	cmpq	$0, (%rax)
.Ltmp1:
	.loc	1 19 6                          # src/parsing/command_redir_outfile.c:19:6
	je	.LBB0_7
# %bb.1:
.Ltmp2:
	.loc	1 21 13 is_stmt 1               # src/parsing/command_redir_outfile.c:21:13
	movq	-8(%rbp), %rax
	.loc	1 21 12 is_stmt 0               # src/parsing/command_redir_outfile.c:21:12
	movq	(%rax), %rax
	.loc	1 21 9                          # src/parsing/command_redir_outfile.c:21:9
	movq	%rax, -24(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	.loc	1 22 3 is_stmt 1                # src/parsing/command_redir_outfile.c:22:3
	cmpq	$0, -24(%rbp)
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
.Ltmp3:
	.loc	1 24 8                          # src/parsing/command_redir_outfile.c:24:8
	movq	-24(%rbp), %rax
	.loc	1 24 20 is_stmt 0               # src/parsing/command_redir_outfile.c:24:20
	cmpq	$0, 16(%rax)
.Ltmp4:
	.loc	1 24 8                          # src/parsing/command_redir_outfile.c:24:8
	jne	.LBB0_5
# %bb.4:
.Ltmp5:
	.loc	1 25 5 is_stmt 1                # src/parsing/command_redir_outfile.c:25:5
	jmp	.LBB0_6
.Ltmp6:
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 26 12                         # src/parsing/command_redir_outfile.c:26:12
	movq	-24(%rbp), %rax
	.loc	1 26 19 is_stmt 0               # src/parsing/command_redir_outfile.c:26:19
	movq	16(%rax), %rax
	.loc	1 26 10                         # src/parsing/command_redir_outfile.c:26:10
	movq	%rax, -24(%rbp)
.Ltmp7:
	.loc	1 22 3 is_stmt 1                # src/parsing/command_redir_outfile.c:22:3
	jmp	.LBB0_2
.LBB0_6:
	.loc	1 28 19                         # src/parsing/command_redir_outfile.c:28:19
	movq	-16(%rbp), %rax
	.loc	1 28 18 is_stmt 0               # src/parsing/command_redir_outfile.c:28:18
	movq	(%rax), %rcx
	.loc	1 28 3                          # src/parsing/command_redir_outfile.c:28:3
	movq	-24(%rbp), %rax
	.loc	1 28 15                         # src/parsing/command_redir_outfile.c:28:15
	movq	%rcx, 16(%rax)
	.loc	1 29 3 is_stmt 1                # src/parsing/command_redir_outfile.c:29:3
	jmp	.LBB0_8
.Ltmp8:
.LBB0_7:
	.loc	1 32 18                         # src/parsing/command_redir_outfile.c:32:18
	movq	-16(%rbp), %rax
	.loc	1 32 17 is_stmt 0               # src/parsing/command_redir_outfile.c:32:17
	movq	(%rax), %rcx
	.loc	1 32 5                          # src/parsing/command_redir_outfile.c:32:5
	movq	-8(%rbp), %rax
	.loc	1 32 14                         # src/parsing/command_redir_outfile.c:32:14
	movq	%rcx, (%rax)
.Ltmp9:
.LBB0_8:
	.loc	1 33 1 is_stmt 1                # src/parsing/command_redir_outfile.c:33:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end0:
	.size	add_outfile_to_list, .Lfunc_end0-add_outfile_to_list
	.cfi_endproc
                                        # -- End function
	.globl	extract_command_outfile         # -- Begin function extract_command_outfile
	.p2align	4, 0x90
	.type	extract_command_outfile,@function
extract_command_outfile:                # @extract_command_outfile
.Lfunc_begin1:
	.loc	1 36 0                          # src/parsing/command_redir_outfile.c:36:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp11:
	.loc	1 39 8 prologue_end             # src/parsing/command_redir_outfile.c:39:8
	movl	$24, %edi
	callq	malloc
	.loc	1 39 6 is_stmt 0                # src/parsing/command_redir_outfile.c:39:6
	movq	%rax, -24(%rbp)
.Ltmp12:
	.loc	1 40 7 is_stmt 1                # src/parsing/command_redir_outfile.c:40:7
	cmpq	$0, -24(%rbp)
.Ltmp13:
	.loc	1 40 6 is_stmt 0                # src/parsing/command_redir_outfile.c:40:6
	jne	.LBB1_2
# %bb.1:
.Ltmp14:
	.loc	1 42 3 is_stmt 1                # src/parsing/command_redir_outfile.c:42:3
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 43 3                          # src/parsing/command_redir_outfile.c:43:3
	jmp	.LBB1_3
.Ltmp15:
.LBB1_2:
	.loc	1 45 2                          # src/parsing/command_redir_outfile.c:45:2
	movq	-24(%rbp), %rax
	.loc	1 45 12 is_stmt 0               # src/parsing/command_redir_outfile.c:45:12
	movq	$0, 16(%rax)
	.loc	1 46 14 is_stmt 1               # src/parsing/command_redir_outfile.c:46:14
	movq	-8(%rbp), %rax
	.loc	1 46 21 is_stmt 0               # src/parsing/command_redir_outfile.c:46:21
	movl	(%rax), %ecx
	.loc	1 46 2                          # src/parsing/command_redir_outfile.c:46:2
	movq	-24(%rbp), %rax
	.loc	1 46 12                         # src/parsing/command_redir_outfile.c:46:12
	movl	%ecx, 4(%rax)
	.loc	1 47 33 is_stmt 1               # src/parsing/command_redir_outfile.c:47:33
	movq	-8(%rbp), %rax
	.loc	1 47 40 is_stmt 0               # src/parsing/command_redir_outfile.c:47:40
	movq	16(%rax), %rdi
	.loc	1 47 48                         # src/parsing/command_redir_outfile.c:47:48
	movq	-24(%rbp), %rax
	.loc	1 47 53                         # src/parsing/command_redir_outfile.c:47:53
	movl	4(%rax), %esi
	.loc	1 47 14                         # src/parsing/command_redir_outfile.c:47:14
	callq	get_redir_filename
	movq	%rax, %rcx
	.loc	1 47 2                          # src/parsing/command_redir_outfile.c:47:2
	movq	-24(%rbp), %rax
	.loc	1 47 12                         # src/parsing/command_redir_outfile.c:47:12
	movq	%rcx, 8(%rax)
	.loc	1 48 25 is_stmt 1               # src/parsing/command_redir_outfile.c:48:25
	movq	-16(%rbp), %rdi
	.loc	1 48 2 is_stmt 0                # src/parsing/command_redir_outfile.c:48:2
	leaq	-24(%rbp), %rsi
	callq	add_outfile_to_list
.LBB1_3:
	.loc	1 49 1 is_stmt 1                # src/parsing/command_redir_outfile.c:49:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp16:
.Lfunc_end1:
	.size	extract_command_outfile, .Lfunc_end1-extract_command_outfile
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/../../include/minishell.h"
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
	.byte	10                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x1af DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x40 DW_TAG_subprogram
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
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	171                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	171                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x6b:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x80:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	273                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x8e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	171                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x9c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xab:0x5 DW_TAG_pointer_type
	.long	176                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xb0:0x5 DW_TAG_pointer_type
	.long	181                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xb5:0xb DW_TAG_typedef
	.long	192                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc0:0x39 DW_TAG_structure_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc8:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	249                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xd4:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	249                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xe0:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	256                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xec:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	268                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xf9:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x100:0x5 DW_TAG_pointer_type
	.long	261                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x105:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x10c:0x5 DW_TAG_pointer_type
	.long	192                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x111:0x5 DW_TAG_pointer_type
	.long	278                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x116:0xb DW_TAG_typedef
	.long	289                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x121:0x5d DW_TAG_structure_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x129:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	249                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x135:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	249                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x141:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	249                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x14d:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	256                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x159:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	382                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x165:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x171:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x17e:0x5 DW_TAG_pointer_type
	.long	387                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x183:0xb DW_TAG_typedef
	.long	398                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x18e:0x21 DW_TAG_structure_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x196:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	256                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1a2:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	431                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1af:0x5 DW_TAG_pointer_type
	.long	398                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1b4:0x5 DW_TAG_pointer_type
	.long	289                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_redir_outfile.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=74
.Linfo_string3:
	.asciz	"add_outfile_to_list"           # string offset=111
.Linfo_string4:
	.asciz	"extract_command_outfile"       # string offset=131
.Linfo_string5:
	.asciz	"outfile"                       # string offset=155
.Linfo_string6:
	.asciz	"fd"                            # string offset=163
.Linfo_string7:
	.asciz	"int"                           # string offset=166
.Linfo_string8:
	.asciz	"type"                          # string offset=170
.Linfo_string9:
	.asciz	"name"                          # string offset=175
.Linfo_string10:
	.asciz	"char"                          # string offset=180
.Linfo_string11:
	.asciz	"next"                          # string offset=185
.Linfo_string12:
	.asciz	"s_outfile"                     # string offset=190
.Linfo_string13:
	.asciz	"t_outfile"                     # string offset=200
.Linfo_string14:
	.asciz	"new"                           # string offset=210
.Linfo_string15:
	.asciz	"index"                         # string offset=214
.Linfo_string16:
	.asciz	"token"                         # string offset=220
.Linfo_string17:
	.asciz	"quote_nbr"                     # string offset=226
.Linfo_string18:
	.asciz	"length"                        # string offset=236
.Linfo_string19:
	.asciz	"lexeme"                        # string offset=243
.Linfo_string20:
	.asciz	"expansion"                     # string offset=250
.Linfo_string21:
	.asciz	"s_expan"                       # string offset=260
.Linfo_string22:
	.asciz	"t_expan"                       # string offset=268
.Linfo_string23:
	.asciz	"prev"                          # string offset=276
.Linfo_string24:
	.asciz	"s_token"                       # string offset=281
.Linfo_string25:
	.asciz	"t_token"                       # string offset=289
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym add_outfile_to_list
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym get_redir_filename
	.section	.debug_line,"",@progbits
.Lline_table_start0:

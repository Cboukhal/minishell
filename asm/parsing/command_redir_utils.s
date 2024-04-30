	.text
	.file	"command_redir_utils.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/../../include/minishell.h"
	.globl	get_redir_filename_length       # -- Begin function get_redir_filename_length
	.p2align	4, 0x90
	.type	get_redir_filename_length,@function
get_redir_filename_length:              # @get_redir_filename_length
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/command_redir_utils.c"
	.loc	2 16 0                          # src/parsing/command_redir_utils.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp0:
	.loc	2 20 11 prologue_end            # src/parsing/command_redir_utils.c:20:11
	cmpl	$9, -12(%rbp)
	.loc	2 20 22 is_stmt 0               # src/parsing/command_redir_utils.c:20:22
	je	.LBB0_2
# %bb.1:
	.loc	2 20 30                         # src/parsing/command_redir_utils.c:20:30
	cmpl	$11, -12(%rbp)
.Ltmp1:
	.loc	2 20 6                          # src/parsing/command_redir_utils.c:20:6
	jne	.LBB0_3
.LBB0_2:
.Ltmp2:
	.loc	2 21 5 is_stmt 1                # src/parsing/command_redir_utils.c:21:5
	movl	$2, -32(%rbp)
	.loc	2 21 3 is_stmt 0                # src/parsing/command_redir_utils.c:21:3
	jmp	.LBB0_4
.LBB0_3:
	.loc	2 23 5 is_stmt 1                # src/parsing/command_redir_utils.c:23:5
	movl	$1, -32(%rbp)
.Ltmp3:
.LBB0_4:
	.loc	2 24 2                          # src/parsing/command_redir_utils.c:24:2
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	.loc	2 24 9 is_stmt 0                # src/parsing/command_redir_utils.c:24:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -33(%rbp)                  # 1-byte Spill
	.loc	2 24 19                         # src/parsing/command_redir_utils.c:24:19
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	2 24 31                         # src/parsing/command_redir_utils.c:24:31
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 24 22                         # src/parsing/command_redir_utils.c:24:22
	movsbl	(%rax,%rcx), %edi
	callq	is_blank
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 24 42                         # src/parsing/command_redir_utils.c:24:42
	cmpl	$1, %eax
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	2 0 42                          # src/parsing/command_redir_utils.c:0:42
	movb	-33(%rbp), %al                  # 1-byte Reload
	.loc	2 24 2                          # src/parsing/command_redir_utils.c:24:2
	testb	$1, %al
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	2 25 4 is_stmt 1                # src/parsing/command_redir_utils.c:25:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	2 24 2                          # src/parsing/command_redir_utils.c:24:2
	jmp	.LBB0_5
.LBB0_9:
	.loc	2 26 11                         # src/parsing/command_redir_utils.c:26:11
	movl	-32(%rbp), %ecx
	.loc	2 26 3 is_stmt 0                # src/parsing/command_redir_utils.c:26:3
	movq	-24(%rbp), %rax
	.loc	2 26 9                          # src/parsing/command_redir_utils.c:26:9
	movl	%ecx, (%rax)
	.loc	2 27 9 is_stmt 1                # src/parsing/command_redir_utils.c:27:9
	movl	$0, -28(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	.loc	2 28 9                          # src/parsing/command_redir_utils.c:28:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 28 2 is_stmt 0                # src/parsing/command_redir_utils.c:28:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
.Ltmp4:
	.loc	2 30 4 is_stmt 1                # src/parsing/command_redir_utils.c:30:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	2 31 9                          # src/parsing/command_redir_utils.c:31:9
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp5:
	.loc	2 28 2                          # src/parsing/command_redir_utils.c:28:2
	jmp	.LBB0_10
.LBB0_12:
	.loc	2 33 10                         # src/parsing/command_redir_utils.c:33:10
	movl	-28(%rbp), %eax
	.loc	2 33 2 is_stmt 0                # src/parsing/command_redir_utils.c:33:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	get_redir_filename_length, .Lfunc_end0-get_redir_filename_length
	.cfi_endproc
                                        # -- End function
	.globl	get_redir_filename              # -- Begin function get_redir_filename
	.p2align	4, 0x90
	.type	get_redir_filename,@function
get_redir_filename:                     # @get_redir_filename
.Lfunc_begin1:
	.loc	2 37 0 is_stmt 1                # src/parsing/command_redir_utils.c:37:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp7:
	.loc	2 43 4 prologue_end             # src/parsing/command_redir_utils.c:43:4
	movl	$0, -16(%rbp)
	.loc	2 44 4                          # src/parsing/command_redir_utils.c:44:4
	movl	$0, -20(%rbp)
	.loc	2 45 37                         # src/parsing/command_redir_utils.c:45:37
	movq	-8(%rbp), %rdi
	.loc	2 45 45 is_stmt 0               # src/parsing/command_redir_utils.c:45:45
	movl	-12(%rbp), %esi
	.loc	2 45 11                         # src/parsing/command_redir_utils.c:45:11
	leaq	-16(%rbp), %rdx
	callq	get_redir_filename_length
	.loc	2 45 9                          # src/parsing/command_redir_utils.c:45:9
	movl	%eax, -24(%rbp)
	.loc	2 46 20 is_stmt 1               # src/parsing/command_redir_utils.c:46:20
	movl	-24(%rbp), %eax
	.loc	2 46 27 is_stmt 0               # src/parsing/command_redir_utils.c:46:27
	addl	$1, %eax
	.loc	2 46 20                         # src/parsing/command_redir_utils.c:46:20
	movslq	%eax, %rdi
	.loc	2 46 13                         # src/parsing/command_redir_utils.c:46:13
	callq	malloc
	.loc	2 46 11                         # src/parsing/command_redir_utils.c:46:11
	movq	%rax, -32(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 47 9 is_stmt 1                # src/parsing/command_redir_utils.c:47:9
	movl	-20(%rbp), %eax
	.loc	2 47 11 is_stmt 0               # src/parsing/command_redir_utils.c:47:11
	cmpl	-24(%rbp), %eax
	.loc	2 47 2                          # src/parsing/command_redir_utils.c:47:2
	jge	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	2 49 17 is_stmt 1               # src/parsing/command_redir_utils.c:49:17
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	2 49 3 is_stmt 0                # src/parsing/command_redir_utils.c:49:3
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 49 15                         # src/parsing/command_redir_utils.c:49:15
	movb	%dl, (%rax,%rcx)
	.loc	2 50 4 is_stmt 1                # src/parsing/command_redir_utils.c:50:4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	2 51 4                          # src/parsing/command_redir_utils.c:51:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp9:
	.loc	2 47 2                          # src/parsing/command_redir_utils.c:47:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	2 53 2                          # src/parsing/command_redir_utils.c:53:2
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 53 14 is_stmt 0               # src/parsing/command_redir_utils.c:53:14
	movb	$0, (%rax,%rcx)
	.loc	2 54 10 is_stmt 1               # src/parsing/command_redir_utils.c:54:10
	movq	-32(%rbp), %rax
	.loc	2 54 2 is_stmt 0                # src/parsing/command_redir_utils.c:54:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end1:
	.size	get_redir_filename, .Lfunc_end1-get_redir_filename
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x18c DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0xb0:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	382                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xc9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	389                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xd7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	382                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	401                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xf3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	382                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x101:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	382                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x110:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	389                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x129:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	389                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x137:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	382                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x145:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	382                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x153:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	382                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x161:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	382                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x16f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	389                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x17e:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x185:0x5 DW_TAG_pointer_type
	.long	394                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x18a:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x191:0x5 DW_TAG_pointer_type
	.long	382                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_redir_utils.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=72
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=141
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=154
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=168
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=182
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=195
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=208
.Linfo_string9:
	.asciz	"expansion"                     # string offset=220
.Linfo_string10:
	.asciz	"operator"                      # string offset=230
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=239
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=248
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=256
.Linfo_string14:
	.asciz	"outfile"                       # string offset=264
.Linfo_string15:
	.asciz	"append"                        # string offset=272
.Linfo_string16:
	.asciz	"infile"                        # string offset=279
.Linfo_string17:
	.asciz	"and_if"                        # string offset=286
.Linfo_string18:
	.asciz	"or_if"                         # string offset=293
.Linfo_string19:
	.asciz	"word"                          # string offset=299
.Linfo_string20:
	.asciz	"name"                          # string offset=304
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=309
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=325
.Linfo_string23:
	.asciz	"e_token"                       # string offset=335
.Linfo_string24:
	.asciz	"get_redir_filename_length"     # string offset=343
.Linfo_string25:
	.asciz	"int"                           # string offset=369
.Linfo_string26:
	.asciz	"get_redir_filename"            # string offset=373
.Linfo_string27:
	.asciz	"char"                          # string offset=392
.Linfo_string28:
	.asciz	"lexeme"                        # string offset=397
.Linfo_string29:
	.asciz	"type"                          # string offset=404
.Linfo_string30:
	.asciz	"start"                         # string offset=409
.Linfo_string31:
	.asciz	"length"                        # string offset=415
.Linfo_string32:
	.asciz	"i"                             # string offset=422
.Linfo_string33:
	.asciz	"j"                             # string offset=424
.Linfo_string34:
	.asciz	"filename"                      # string offset=426
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_redir_filename_length
	.addrsig_sym is_blank
	.addrsig_sym malloc
	.section	.debug_line,"",@progbits
.Lline_table_start0:

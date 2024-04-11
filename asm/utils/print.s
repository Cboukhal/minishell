	.text
	.file	"print.c"
	.globl	print_local_var                 # -- Begin function print_local_var
	.p2align	4, 0x90
	.type	print_local_var,@function
print_local_var:                        # @print_local_var
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/utils/print.c"
	.loc	1 16 0                          # src/utils/print.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp0:
	.loc	1 17 2 prologue_end             # src/utils/print.c:17:2
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 19 24                         # src/utils/print.c:19:24
	movq	-8(%rbp), %rax
	.loc	1 19 31 is_stmt 0               # src/utils/print.c:19:31
	movq	(%rax), %rsi
	.loc	1 19 37                         # src/utils/print.c:19:37
	movq	-8(%rbp), %rax
	.loc	1 19 44                         # src/utils/print.c:19:44
	movq	8(%rax), %rdx
	.loc	1 19 3                          # src/utils/print.c:19:3
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 20 11 is_stmt 1               # src/utils/print.c:20:11
	movq	-8(%rbp), %rax
	.loc	1 20 18 is_stmt 0               # src/utils/print.c:20:18
	movq	16(%rax), %rax
	.loc	1 20 9                          # src/utils/print.c:20:9
	movq	%rax, -8(%rbp)
.Ltmp2:
	.loc	1 17 2 is_stmt 1                # src/utils/print.c:17:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 22 1                          # src/utils/print.c:22:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	print_local_var, .Lfunc_end0-print_local_var
	.cfi_endproc
                                        # -- End function
	.globl	print_expansion                 # -- Begin function print_expansion
	.p2align	4, 0x90
	.type	print_expansion,@function
print_expansion:                        # @print_expansion
.Lfunc_begin1:
	.loc	1 25 0                          # src/utils/print.c:25:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp4:
	.loc	1 26 2 prologue_end             # src/utils/print.c:26:2
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp5:
	.loc	1 28 28                         # src/utils/print.c:28:28
	movq	-8(%rbp), %rax
	.loc	1 28 39 is_stmt 0               # src/utils/print.c:28:39
	movq	(%rax), %rsi
	.loc	1 28 3                          # src/utils/print.c:28:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 29 15 is_stmt 1               # src/utils/print.c:29:15
	movq	-8(%rbp), %rax
	.loc	1 29 26 is_stmt 0               # src/utils/print.c:29:26
	movq	8(%rax), %rax
	.loc	1 29 13                         # src/utils/print.c:29:13
	movq	%rax, -8(%rbp)
.Ltmp6:
	.loc	1 26 2 is_stmt 1                # src/utils/print.c:26:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 31 1                          # src/utils/print.c:31:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	print_expansion, .Lfunc_end1-print_expansion
	.cfi_endproc
                                        # -- End function
	.globl	print_token_with_expansion      # -- Begin function print_token_with_expansion
	.p2align	4, 0x90
	.type	print_token_with_expansion,@function
print_token_with_expansion:             # @print_token_with_expansion
.Lfunc_begin2:
	.loc	1 34 0                          # src/utils/print.c:34:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp8:
	.loc	1 37 4 prologue_end             # src/utils/print.c:37:4
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	.loc	1 38 2                          # src/utils/print.c:38:2
	cmpq	$0, -8(%rbp)
	je	.LBB2_6
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp9:
	.loc	1 40 41                         # src/utils/print.c:40:41
	movl	-12(%rbp), %esi
	.loc	1 40 44 is_stmt 0               # src/utils/print.c:40:44
	movq	-8(%rbp), %rax
	.loc	1 40 51                         # src/utils/print.c:40:51
	movq	16(%rax), %rdx
	.loc	1 40 3                          # src/utils/print.c:40:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 41 10 is_stmt 1               # src/utils/print.c:41:10
	movq	-8(%rbp), %rax
	.loc	1 41 3 is_stmt 0                # src/utils/print.c:41:3
	cmpq	$0, 24(%rax)
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
.Ltmp10:
	.loc	1 43 21 is_stmt 1               # src/utils/print.c:43:21
	movq	-8(%rbp), %rax
	.loc	1 43 28 is_stmt 0               # src/utils/print.c:43:28
	movq	24(%rax), %rax
	.loc	1 43 39                         # src/utils/print.c:43:39
	movq	(%rax), %rsi
	.loc	1 43 4                          # src/utils/print.c:43:4
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 44 23 is_stmt 1               # src/utils/print.c:44:23
	movq	-8(%rbp), %rax
	.loc	1 44 30 is_stmt 0               # src/utils/print.c:44:30
	movq	24(%rax), %rax
	.loc	1 44 41                         # src/utils/print.c:44:41
	movq	8(%rax), %rcx
	.loc	1 44 4                          # src/utils/print.c:44:4
	movq	-8(%rbp), %rax
	.loc	1 44 21                         # src/utils/print.c:44:21
	movq	%rcx, 24(%rax)
.Ltmp11:
	.loc	1 41 3 is_stmt 1                # src/utils/print.c:41:3
	jmp	.LBB2_3
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 46 32                         # src/utils/print.c:46:32
	movq	-8(%rbp), %rax
	.loc	1 46 39 is_stmt 0               # src/utils/print.c:46:39
	movl	(%rax), %esi
	.loc	1 46 3                          # src/utils/print.c:46:3
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 47 11 is_stmt 1               # src/utils/print.c:47:11
	movq	-8(%rbp), %rax
	.loc	1 47 18 is_stmt 0               # src/utils/print.c:47:18
	movq	40(%rax), %rax
	.loc	1 47 9                          # src/utils/print.c:47:9
	movq	%rax, -8(%rbp)
	.loc	1 48 4 is_stmt 1                # src/utils/print.c:48:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp12:
	.loc	1 38 2                          # src/utils/print.c:38:2
	jmp	.LBB2_1
.LBB2_6:
	.loc	1 50 1                          # src/utils/print.c:50:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end2:
	.size	print_token_with_expansion, .Lfunc_end2-print_token_with_expansion
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s=%s\n"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Expansion=%s\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Token[%d]=%s Expansion= "
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s "
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"token type=%d\n"
	.size	.L.str.4, 15

	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/utils/../../include/minishell.h"
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x197 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x24 DW_TAG_subprogram
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
	.byte	120
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	164                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x4e:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x63:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	242                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x72:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x87:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	296                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x95:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	405                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa4:0x5 DW_TAG_pointer_type
	.long	169                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xa9:0xb DW_TAG_typedef
	.long	180                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xb4:0x2d DW_TAG_structure_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xbc:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	225                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xc8:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	225                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xd4:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	237                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xe1:0x5 DW_TAG_pointer_type
	.long	230                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xe6:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xed:0x5 DW_TAG_pointer_type
	.long	180                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xf2:0x5 DW_TAG_pointer_type
	.long	247                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf7:0xb DW_TAG_typedef
	.long	258                             # DW_AT_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x102:0x21 DW_TAG_structure_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x10a:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	225                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x116:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	291                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x123:0x5 DW_TAG_pointer_type
	.long	258                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x128:0x5 DW_TAG_pointer_type
	.long	301                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x12d:0xb DW_TAG_typedef
	.long	312                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x138:0x5d DW_TAG_structure_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x140:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x14c:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x158:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x164:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	225                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x170:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	242                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x17c:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	412                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x188:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	412                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x195:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x19c:0x5 DW_TAG_pointer_type
	.long	312                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/utils/print.c"             # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=56
.Linfo_string3:
	.asciz	"print_local_var"               # string offset=93
.Linfo_string4:
	.asciz	"print_expansion"               # string offset=109
.Linfo_string5:
	.asciz	"print_token_with_expansion"    # string offset=125
.Linfo_string6:
	.asciz	"local"                         # string offset=152
.Linfo_string7:
	.asciz	"name"                          # string offset=158
.Linfo_string8:
	.asciz	"char"                          # string offset=163
.Linfo_string9:
	.asciz	"value"                         # string offset=168
.Linfo_string10:
	.asciz	"next"                          # string offset=174
.Linfo_string11:
	.asciz	"s_var"                         # string offset=179
.Linfo_string12:
	.asciz	"t_var"                         # string offset=185
.Linfo_string13:
	.asciz	"expansion"                     # string offset=191
.Linfo_string14:
	.asciz	"s_expan"                       # string offset=201
.Linfo_string15:
	.asciz	"t_expan"                       # string offset=209
.Linfo_string16:
	.asciz	"token"                         # string offset=217
.Linfo_string17:
	.asciz	"type"                          # string offset=223
.Linfo_string18:
	.asciz	"int"                           # string offset=228
.Linfo_string19:
	.asciz	"quote_nbr"                     # string offset=232
.Linfo_string20:
	.asciz	"length"                        # string offset=242
.Linfo_string21:
	.asciz	"lexeme"                        # string offset=249
.Linfo_string22:
	.asciz	"prev"                          # string offset=256
.Linfo_string23:
	.asciz	"s_token"                       # string offset=261
.Linfo_string24:
	.asciz	"t_token"                       # string offset=269
.Linfo_string25:
	.asciz	"i"                             # string offset=277
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_printf
	.addrsig_sym printf
	.section	.debug_line,"",@progbits
.Lline_table_start0:

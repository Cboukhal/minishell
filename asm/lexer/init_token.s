	.text
	.file	"init_token.c"
	.globl	init_token_attr                 # -- Begin function init_token_attr
	.p2align	4, 0x90
	.type	init_token_attr,@function
init_token_attr:                        # @init_token_attr
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/init_token.c"
	.loc	1 16 0                          # src/lexer/init_token.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 17 4 prologue_end             # src/lexer/init_token.c:17:4
	movq	-8(%rbp), %rax
	.loc	1 17 3 is_stmt 0                # src/lexer/init_token.c:17:3
	movq	(%rax), %rax
	.loc	1 17 22                         # src/lexer/init_token.c:17:22
	movl	$0, 4(%rax)
	.loc	1 18 4 is_stmt 1                # src/lexer/init_token.c:18:4
	movq	-8(%rbp), %rax
	.loc	1 18 3 is_stmt 0                # src/lexer/init_token.c:18:3
	movq	(%rax), %rax
	.loc	1 18 19                         # src/lexer/init_token.c:18:19
	movl	$0, 8(%rax)
	.loc	1 19 4 is_stmt 1                # src/lexer/init_token.c:19:4
	movq	-8(%rbp), %rax
	.loc	1 19 3 is_stmt 0                # src/lexer/init_token.c:19:3
	movq	(%rax), %rax
	.loc	1 19 17                         # src/lexer/init_token.c:19:17
	movq	$0, 32(%rax)
	.loc	1 20 4 is_stmt 1                # src/lexer/init_token.c:20:4
	movq	-8(%rbp), %rax
	.loc	1 20 3 is_stmt 0                # src/lexer/init_token.c:20:3
	movq	(%rax), %rax
	.loc	1 20 17                         # src/lexer/init_token.c:20:17
	movq	$0, 40(%rax)
	.loc	1 21 4 is_stmt 1                # src/lexer/init_token.c:21:4
	movq	-8(%rbp), %rax
	.loc	1 21 3 is_stmt 0                # src/lexer/init_token.c:21:3
	movq	(%rax), %rax
	.loc	1 21 19                         # src/lexer/init_token.c:21:19
	movq	$0, 16(%rax)
	.loc	1 22 4 is_stmt 1                # src/lexer/init_token.c:22:4
	movq	-8(%rbp), %rax
	.loc	1 22 3 is_stmt 0                # src/lexer/init_token.c:22:3
	movq	(%rax), %rax
	.loc	1 22 22                         # src/lexer/init_token.c:22:22
	movq	$0, 24(%rax)
	.loc	1 23 1 is_stmt 1                # src/lexer/init_token.c:23:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	init_token_attr, .Lfunc_end0-init_token_attr
	.cfi_endproc
                                        # -- End function
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/../../include/minishell.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x104 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	78                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4e:0x5 DW_TAG_pointer_type
	.long	83                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x53:0x5 DW_TAG_pointer_type
	.long	88                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x58:0xb DW_TAG_typedef
	.long	99                              # DW_AT_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x63:0x5d DW_TAG_structure_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x6b:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x77:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x83:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	192                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x8f:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	199                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x9b:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	211                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xa7:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	265                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb3:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	265                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc0:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xc7:0x5 DW_TAG_pointer_type
	.long	204                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xcc:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xd3:0x5 DW_TAG_pointer_type
	.long	216                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd8:0xb DW_TAG_typedef
	.long	227                             # DW_AT_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xe3:0x21 DW_TAG_structure_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xeb:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	199                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xf7:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	260                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x104:0x5 DW_TAG_pointer_type
	.long	227                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x109:0x5 DW_TAG_pointer_type
	.long	99                              # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/init_token.c"        # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=61
.Linfo_string3:
	.asciz	"init_token_attr"               # string offset=130
.Linfo_string4:
	.asciz	"token"                         # string offset=146
.Linfo_string5:
	.asciz	"type"                          # string offset=152
.Linfo_string6:
	.asciz	"int"                           # string offset=157
.Linfo_string7:
	.asciz	"quote_nbr"                     # string offset=161
.Linfo_string8:
	.asciz	"length"                        # string offset=171
.Linfo_string9:
	.asciz	"lexeme"                        # string offset=178
.Linfo_string10:
	.asciz	"char"                          # string offset=185
.Linfo_string11:
	.asciz	"expansion"                     # string offset=190
.Linfo_string12:
	.asciz	"name"                          # string offset=200
.Linfo_string13:
	.asciz	"next"                          # string offset=205
.Linfo_string14:
	.asciz	"s_expan"                       # string offset=210
.Linfo_string15:
	.asciz	"t_expan"                       # string offset=218
.Linfo_string16:
	.asciz	"prev"                          # string offset=226
.Linfo_string17:
	.asciz	"s_token"                       # string offset=231
.Linfo_string18:
	.asciz	"t_token"                       # string offset=239
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:

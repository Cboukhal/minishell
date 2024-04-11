	.text
	.file	"function_tester.c"
	.globl	function_tester                 # -- Begin function function_tester
	.p2align	4, 0x90
	.type	function_tester,@function
function_tester:                        # @function_tester
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/utils/function_tester.c"
	.loc	1 17 0                          # src/utils/function_tester.c:17:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
.Ltmp0:
	.loc	1 24 8 prologue_end             # src/utils/function_tester.c:24:8
	movabsq	$.L.str, %rdi
	callq	opendir
	.loc	1 24 6 is_stmt 0                # src/utils/function_tester.c:24:6
	movq	%rax, -8(%rbp)
	.loc	1 25 19 is_stmt 1               # src/utils/function_tester.c:25:19
	movq	-8(%rbp), %rdi
	.loc	1 25 11 is_stmt 0               # src/utils/function_tester.c:25:11
	callq	readdir
	.loc	1 25 9                          # src/utils/function_tester.c:25:9
	movq	%rax, -16(%rbp)
	.loc	1 30 5 is_stmt 1                # src/utils/function_tester.c:30:5
	movq	-16(%rbp), %rax
	.loc	1 30 13 is_stmt 0               # src/utils/function_tester.c:30:13
	movq	(%rax), %rsi
	.loc	1 31 2 is_stmt 1                # src/utils/function_tester.c:31:2
	movq	-16(%rbp), %rdx
	.loc	1 31 10 is_stmt 0               # src/utils/function_tester.c:31:10
	addq	$19, %rdx
	.loc	1 33 2 is_stmt 1                # src/utils/function_tester.c:33:2
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %ecx
	.loc	1 34 2                          # src/utils/function_tester.c:34:2
	movq	-16(%rbp), %rax
	movzbl	18(%rax), %r8d
	.loc	1 26 2                          # src/utils/function_tester.c:26:2
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 35 11                         # src/utils/function_tester.c:35:11
	movq	-8(%rbp), %rdi
	.loc	1 35 2 is_stmt 0                # src/utils/function_tester.c:35:2
	callq	closedir
	.loc	1 37 26 is_stmt 1               # src/utils/function_tester.c:37:26
	xorl	%edi, %edi
	callq	isatty
	movl	%eax, %esi
	.loc	1 37 2 is_stmt 0                # src/utils/function_tester.c:37:2
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 38 27 is_stmt 1               # src/utils/function_tester.c:38:27
	xorl	%edi, %edi
	callq	ttyname
	movq	%rax, %rsi
	.loc	1 38 2 is_stmt 0                # src/utils/function_tester.c:38:2
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 39 27 is_stmt 1               # src/utils/function_tester.c:39:27
	callq	ttyslot
	movl	%eax, %esi
	.loc	1 39 2 is_stmt 0                # src/utils/function_tester.c:39:2
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 42 26 is_stmt 1               # src/utils/function_tester.c:42:26
	movabsq	$.L.str.6, %rdi
	callq	getenv
	movq	%rax, %rsi
	.loc	1 42 2 is_stmt 0                # src/utils/function_tester.c:42:2
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 45 7 is_stmt 1                # src/utils/function_tester.c:45:7
	movq	$0, -24(%rbp)
	.loc	1 57 2                          # src/utils/function_tester.c:57:2
	xorl	%edi, %edi
	callq	exit
.Ltmp1:
.Lfunc_end0:
	.size	function_tester, .Lfunc_end0-function_tester
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"testdir"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"d_ino = %lu\n\td_name = %s\n\td_reclen = %d\n\td_type = %d\n\t"
	.size	.L.str.1, 55

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"isatty = %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ttyname = %s\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ttyslot = %d\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"getenv = %s\n"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"HOSTNAME"
	.size	.L.str.6, 9

	.file	2 "/usr/include" "dirent.h"
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "dirent.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "termios.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "termios-struct.h"
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
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
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
	.byte	10                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
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
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	106                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x4d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	127                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x5b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	279                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x6a:0x5 DW_TAG_pointer_type
	.long	111                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6f:0xb DW_TAG_typedef
	.long	122                             # DW_AT_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x7a:0x5 DW_TAG_structure_type
	.long	.Linfo_string5                  # DW_AT_name
                                        # DW_AT_declaration
	.byte	4                               # Abbrev [4] 0x7f:0x5 DW_TAG_pointer_type
	.long	132                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x84:0x46 DW_TAG_structure_type
	.long	.Linfo_string7                  # DW_AT_name
	.short	280                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8d:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	202                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x99:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xa5:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	238                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xb1:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	245                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	18                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xbd:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	19                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xca:0xb DW_TAG_typedef
	.long	213                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xd5:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xdc:0xb DW_TAG_typedef
	.long	231                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xe7:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xee:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xf5:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xfc:0xd DW_TAG_array_type
	.long	265                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x101:0x7 DW_TAG_subrange_type
	.long	272                             # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x109:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x110:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	4                               # Abbrev [4] 0x117:0x5 DW_TAG_pointer_type
	.long	284                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x11c:0x69 DW_TAG_structure_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x124:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x130:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x13c:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x148:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x154:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	407                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x160:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	418                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x16c:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	430                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x178:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	430                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x185:0xb DW_TAG_typedef
	.long	400                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x190:0x7 DW_TAG_base_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x197:0xb DW_TAG_typedef
	.long	245                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1a2:0xc DW_TAG_array_type
	.long	407                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1a7:0x6 DW_TAG_subrange_type
	.long	272                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1ae:0xb DW_TAG_typedef
	.long	400                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/utils/function_tester.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=66
.Linfo_string3:
	.asciz	"function_tester"               # string offset=103
.Linfo_string4:
	.asciz	"dir"                           # string offset=119
.Linfo_string5:
	.asciz	"__dirstream"                   # string offset=123
.Linfo_string6:
	.asciz	"DIR"                           # string offset=135
.Linfo_string7:
	.asciz	"dirent"                        # string offset=139
.Linfo_string8:
	.asciz	"d_ino"                         # string offset=146
.Linfo_string9:
	.asciz	"long unsigned int"             # string offset=152
.Linfo_string10:
	.asciz	"__ino_t"                       # string offset=170
.Linfo_string11:
	.asciz	"d_off"                         # string offset=178
.Linfo_string12:
	.asciz	"long int"                      # string offset=184
.Linfo_string13:
	.asciz	"__off_t"                       # string offset=193
.Linfo_string14:
	.asciz	"d_reclen"                      # string offset=201
.Linfo_string15:
	.asciz	"unsigned short"                # string offset=210
.Linfo_string16:
	.asciz	"d_type"                        # string offset=225
.Linfo_string17:
	.asciz	"unsigned char"                 # string offset=232
.Linfo_string18:
	.asciz	"d_name"                        # string offset=246
.Linfo_string19:
	.asciz	"char"                          # string offset=253
.Linfo_string20:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=258
.Linfo_string21:
	.asciz	"term"                          # string offset=278
.Linfo_string22:
	.asciz	"c_iflag"                       # string offset=283
.Linfo_string23:
	.asciz	"unsigned int"                  # string offset=291
.Linfo_string24:
	.asciz	"tcflag_t"                      # string offset=304
.Linfo_string25:
	.asciz	"c_oflag"                       # string offset=313
.Linfo_string26:
	.asciz	"c_cflag"                       # string offset=321
.Linfo_string27:
	.asciz	"c_lflag"                       # string offset=329
.Linfo_string28:
	.asciz	"c_line"                        # string offset=337
.Linfo_string29:
	.asciz	"cc_t"                          # string offset=344
.Linfo_string30:
	.asciz	"c_cc"                          # string offset=349
.Linfo_string31:
	.asciz	"c_ispeed"                      # string offset=354
.Linfo_string32:
	.asciz	"speed_t"                       # string offset=363
.Linfo_string33:
	.asciz	"c_ospeed"                      # string offset=371
.Linfo_string34:
	.asciz	"termios"                       # string offset=380
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym opendir
	.addrsig_sym readdir
	.addrsig_sym printf
	.addrsig_sym closedir
	.addrsig_sym isatty
	.addrsig_sym ttyname
	.addrsig_sym ttyslot
	.addrsig_sym getenv
	.addrsig_sym exit
	.section	.debug_line,"",@progbits
.Lline_table_start0:

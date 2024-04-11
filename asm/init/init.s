	.text
	.file	"init.c"
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/init/../../include/minishell.h"
	.globl	init_minishell_struct           # -- Begin function init_minishell_struct
	.p2align	4, 0x90
	.type	init_minishell_struct,@function
init_minishell_struct:                  # @init_minishell_struct
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/init/init.c"
	.loc	2 16 0                          # src/init/init.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	2 17 2 prologue_end             # src/init/init.c:17:2
	movq	-8(%rbp), %rax
	.loc	2 17 17 is_stmt 0               # src/init/init.c:17:17
	movq	$0, 56(%rax)
	.loc	2 18 2 is_stmt 1                # src/init/init.c:18:2
	movq	-8(%rbp), %rax
	.loc	2 18 18 is_stmt 0               # src/init/init.c:18:18
	movq	$0, 24(%rax)
	.loc	2 19 2 is_stmt 1                # src/init/init.c:19:2
	movq	-8(%rbp), %rax
	.loc	2 19 19 is_stmt 0               # src/init/init.c:19:19
	movl	$0, 8(%rax)
	.loc	2 20 2 is_stmt 1                # src/init/init.c:20:2
	movq	-8(%rbp), %rax
	.loc	2 20 19 is_stmt 0               # src/init/init.c:20:19
	movq	$0, 64(%rax)
	.loc	2 21 2 is_stmt 1                # src/init/init.c:21:2
	movq	-8(%rbp), %rax
	.loc	2 21 19 is_stmt 0               # src/init/init.c:21:19
	movq	$0, 16(%rax)
	.loc	2 22 2 is_stmt 1                # src/init/init.c:22:2
	movq	-8(%rbp), %rax
	.loc	2 22 20 is_stmt 0               # src/init/init.c:22:20
	movq	$0, 32(%rax)
	.loc	2 23 2 is_stmt 1                # src/init/init.c:23:2
	movq	-8(%rbp), %rax
	.loc	2 23 25 is_stmt 0               # src/init/init.c:23:25
	movb	$0, 44(%rax)
	.loc	2 24 2 is_stmt 1                # src/init/init.c:24:2
	movq	-8(%rbp), %rax
	.loc	2 24 26 is_stmt 0               # src/init/init.c:24:26
	movl	$0, 40(%rax)
	.loc	2 25 2 is_stmt 1                # src/init/init.c:25:2
	movq	-8(%rbp), %rax
	.loc	2 25 23 is_stmt 0               # src/init/init.c:25:23
	movq	$0, 48(%rax)
	.loc	2 26 2 is_stmt 1                # src/init/init.c:26:2
	movq	-8(%rbp), %rax
	.loc	2 26 25 is_stmt 0               # src/init/init.c:26:25
	movq	$0, 72(%rax)
	.loc	2 27 2 is_stmt 1                # src/init/init.c:27:2
	movq	-8(%rbp), %rax
	.loc	2 27 26 is_stmt 0               # src/init/init.c:27:26
	movq	$0, 80(%rax)
	.loc	2 28 1 is_stmt 1                # src/init/init.c:28:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	init_minishell_struct, .Lfunc_end0-init_minishell_struct
	.cfi_endproc
                                        # -- End function
	.globl	init_minishell                  # -- Begin function init_minishell
	.p2align	4, 0x90
	.type	init_minishell,@function
init_minishell:                         # @init_minishell
.Lfunc_begin1:
	.loc	2 31 0                          # src/init/init.c:31:0
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
.Ltmp2:
	.loc	2 32 24 prologue_end            # src/init/init.c:32:24
	movq	-8(%rbp), %rdi
	.loc	2 32 2 is_stmt 0                # src/init/init.c:32:2
	callq	init_minishell_struct
	.loc	2 33 2 is_stmt 1                # src/init/init.c:33:2
	callq	init_signal_handler
	.loc	2 34 20                         # src/init/init.c:34:20
	movq	-8(%rbp), %rdi
	.loc	2 34 31 is_stmt 0               # src/init/init.c:34:31
	addq	$56, %rdi
	.loc	2 34 36                         # src/init/init.c:34:36
	movq	-16(%rbp), %rsi
	.loc	2 34 2                          # src/init/init.c:34:2
	callq	init_environment
	.loc	2 35 2 is_stmt 1                # src/init/init.c:35:2
	callq	__errno_location
	.loc	2 35 8 is_stmt 0                # src/init/init.c:35:8
	movl	$0, (%rax)
	.loc	2 36 1 is_stmt 1                # src/init/init.c:36:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	init_minishell, .Lfunc_end1-init_minishell
	.cfi_endproc
                                        # -- End function
	.file	3 "/usr/include" "dirent.h"
	.file	4 "/usr/include" "signal.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "sigaction.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits/types" "siginfo_t.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	8 "/usr/include/x86_64-linux-gnu/bits/types" "__sigval_t.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "__sigset_t.h"
	.file	10 "/usr/include/x86_64-linux-gnu/bits" "struct_stat.h"
	.file	11 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timespec.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits" "termios.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits" "termios-struct.h"
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
	.byte	5                               # DW_FORM_data2
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
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
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
	.byte	21                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
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
	.byte	1                               # Abbrev [1] 0xb:0xad7 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x25 DW_TAG_enumeration_type
	.long	79                              # DW_AT_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4f:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x56:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x6b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x7a:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x8f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x9d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string182                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xac:0x5 DW_TAG_pointer_type
	.long	177                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xb1:0xb DW_TAG_typedef
	.long	188                             # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbc:0xbe DW_TAG_structure_type
	.long	.Linfo_string180                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc5:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	378                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xd1:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xdd:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xe9:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	418                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xf5:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x101:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x10d:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	423                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x119:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	418                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x125:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	430                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x131:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x13d:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	562                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x149:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1334                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x155:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x161:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2281                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x16d:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2630                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x17a:0x5 DW_TAG_pointer_type
	.long	383                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x17f:0xb DW_TAG_typedef
	.long	394                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x18a:0x5 DW_TAG_structure_type
	.long	.Linfo_string13                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	4                               # Abbrev [4] 0x18f:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x196:0x5 DW_TAG_pointer_type
	.long	411                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x19b:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1a2:0x5 DW_TAG_pointer_type
	.long	406                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1a7:0x7 DW_TAG_base_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1ae:0x5 DW_TAG_pointer_type
	.long	435                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1b3:0xb DW_TAG_typedef
	.long	446                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1be:0x2d DW_TAG_structure_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1c6:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1d2:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1de:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1eb:0x5 DW_TAG_pointer_type
	.long	446                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1f0:0x5 DW_TAG_pointer_type
	.long	501                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1f5:0xb DW_TAG_typedef
	.long	512                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x200:0x2d DW_TAG_structure_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x208:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x214:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x220:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x22d:0x5 DW_TAG_pointer_type
	.long	512                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x232:0x5 DW_TAG_pointer_type
	.long	567                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x237:0xb DW_TAG_typedef
	.long	578                             # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x242:0x2d DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x24a:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	623                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x256:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	1329                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x262:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1329                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x26f:0x5 DW_TAG_pointer_type
	.long	628                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x274:0xb DW_TAG_typedef
	.long	639                             # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x27f:0x51 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x287:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x293:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x29f:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ab:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b7:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2d0:0x5 DW_TAG_pointer_type
	.long	399                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2d5:0x5 DW_TAG_pointer_type
	.long	730                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2da:0xc9 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2e2:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ee:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2fa:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x306:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x312:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	931                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x336:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	985                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x342:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1046                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x34e:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1119                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x35a:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x366:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1197                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x372:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1275                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x37e:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	418                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x38a:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x396:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3a3:0x5 DW_TAG_pointer_type
	.long	936                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3a8:0xb DW_TAG_typedef
	.long	947                             # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3b3:0x21 DW_TAG_structure_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3bb:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c7:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	980                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3d4:0x5 DW_TAG_pointer_type
	.long	947                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3d9:0x5 DW_TAG_pointer_type
	.long	990                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3de:0xb DW_TAG_typedef
	.long	1001                            # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3e9:0x2d DW_TAG_structure_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3f1:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3fd:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x409:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x416:0x5 DW_TAG_pointer_type
	.long	1051                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x41b:0xb DW_TAG_typedef
	.long	1062                            # DW_AT_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x426:0x39 DW_TAG_structure_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x42e:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x43a:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x446:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1119                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x452:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1197                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x45f:0x5 DW_TAG_pointer_type
	.long	1124                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x464:0xb DW_TAG_typedef
	.long	1135                            # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x46f:0x39 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x477:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x483:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x48f:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x49b:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	1192                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4a8:0x5 DW_TAG_pointer_type
	.long	1135                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4ad:0x5 DW_TAG_pointer_type
	.long	1202                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4b2:0xb DW_TAG_typedef
	.long	1213                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4bd:0x39 DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4c5:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d1:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4dd:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	1270                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4f6:0x5 DW_TAG_pointer_type
	.long	1213                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4fb:0x5 DW_TAG_pointer_type
	.long	1280                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x500:0xb DW_TAG_typedef
	.long	1291                            # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x50b:0x21 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x513:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x51f:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	1324                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x52c:0x5 DW_TAG_pointer_type
	.long	1291                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x531:0x5 DW_TAG_pointer_type
	.long	578                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x536:0x5 DW_TAG_pointer_type
	.long	1339                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x53b:0xb DW_TAG_typedef
	.long	1350                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x546:0x5d DW_TAG_structure_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x54e:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x55a:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x566:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x572:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	406                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x57e:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1275                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x58a:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1443                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x596:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	1443                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5a3:0x5 DW_TAG_pointer_type
	.long	1350                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5a8:0x56 DW_TAG_structure_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5b0:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1468                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5bc:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5c0:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1534                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5cc:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1557                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5d9:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2228                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5e5:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5f1:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2275                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5fe:0xb DW_TAG_typedef
	.long	1545                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x609:0x5 DW_TAG_pointer_type
	.long	1550                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x60e:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x60f:0x5 DW_TAG_formal_parameter
	.long	399                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x615:0x5 DW_TAG_pointer_type
	.long	1562                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x61a:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x61b:0x5 DW_TAG_formal_parameter
	.long	399                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x620:0x5 DW_TAG_formal_parameter
	.long	1579                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x625:0x5 DW_TAG_formal_parameter
	.long	2191                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x62b:0x5 DW_TAG_pointer_type
	.long	1584                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x630:0xb DW_TAG_typedef
	.long	1595                            # DW_AT_type
	.long	.Linfo_string130                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x63b:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x63f:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x64b:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x657:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x663:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x66f:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1659                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x67b:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x67f:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	2106                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x68b:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1687                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x697:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x69b:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2125                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6a7:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2136                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6b4:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1728                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6c0:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6c4:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6d0:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6dc:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2147                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6e9:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1781                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6f5:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6f9:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2125                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x705:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2136                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x711:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2147                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x71e:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	1834                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x72a:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x72e:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2125                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x73a:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2136                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x746:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x752:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x75e:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2192                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x76b:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	1911                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x777:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x77b:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x787:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2210                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x793:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	1951                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x79f:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7a3:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	1967                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7af:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7b3:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7bf:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7cc:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2217                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7da:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2022                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7e6:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7ea:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7f6:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x803:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2063                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x80f:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x813:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x81f:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x82b:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	79                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x83a:0xc DW_TAG_array_type
	.long	399                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x83f:0x6 DW_TAG_subrange_type
	.long	2118                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x846:0x7 DW_TAG_base_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x84d:0xb DW_TAG_typedef
	.long	399                             # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x858:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x863:0xb DW_TAG_typedef
	.long	2158                            # DW_AT_type
	.long	.Linfo_string105                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x86e:0x21 DW_TAG_union_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x876:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x882:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2191                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x88f:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x890:0xb DW_TAG_typedef
	.long	2203                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x89b:0x7 DW_TAG_base_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x8a2:0x7 DW_TAG_base_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x8a9:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string122                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8b4:0xb DW_TAG_typedef
	.long	2239                            # DW_AT_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x8bf:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8c3:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2256                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x8d0:0xc DW_TAG_array_type
	.long	2268                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8d5:0x6 DW_TAG_subrange_type
	.long	2118                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x8dc:0x7 DW_TAG_base_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x8e3:0x5 DW_TAG_pointer_type
	.long	2280                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x8e8:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x8e9:0x5 DW_TAG_pointer_type
	.long	2286                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x8ee:0xbd DW_TAG_structure_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8f6:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2475                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x902:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2486                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x90e:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2497                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x91a:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2508                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x926:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2136                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x932:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2519                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x93e:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	399                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x94a:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2475                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x956:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2530                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x962:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2541                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x96e:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2552                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x97a:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2563                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x986:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2563                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x992:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2563                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x99e:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2618                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x9ab:0xb DW_TAG_typedef
	.long	2268                            # DW_AT_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9b6:0xb DW_TAG_typedef
	.long	2268                            # DW_AT_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9c1:0xb DW_TAG_typedef
	.long	2268                            # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9cc:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9d7:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9e2:0xb DW_TAG_typedef
	.long	2203                            # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9ed:0xb DW_TAG_typedef
	.long	2203                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9f8:0xb DW_TAG_typedef
	.long	2203                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa03:0x21 DW_TAG_structure_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa0b:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2596                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa17:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2607                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa24:0xb DW_TAG_typedef
	.long	2203                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa2f:0xb DW_TAG_typedef
	.long	2203                            # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xa3a:0xc DW_TAG_array_type
	.long	2607                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa3f:0x6 DW_TAG_subrange_type
	.long	2118                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa46:0x5 DW_TAG_pointer_type
	.long	2635                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0xa4b:0x69 DW_TAG_structure_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa53:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2740                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa5f:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2740                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa6b:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2740                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa77:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2740                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa83:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2751                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa8f:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2762                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa9b:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2774                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaa7:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2774                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xab4:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xabf:0xb DW_TAG_typedef
	.long	423                             # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xaca:0xc DW_TAG_array_type
	.long	2751                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xacf:0x6 DW_TAG_subrange_type
	.long	2118                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xad6:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/init/init.c"               # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=54
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=91
.Linfo_string4:
	.asciz	"run"                           # string offset=104
.Linfo_string5:
	.asciz	"stop"                          # string offset=108
.Linfo_string6:
	.asciz	"success"                       # string offset=113
.Linfo_string7:
	.asciz	"failure"                       # string offset=121
.Linfo_string8:
	.asciz	"e_state"                       # string offset=129
.Linfo_string9:
	.asciz	"init_minishell_struct"         # string offset=137
.Linfo_string10:
	.asciz	"init_minishell"                # string offset=159
.Linfo_string11:
	.asciz	"minishell"                     # string offset=174
.Linfo_string12:
	.asciz	"dir"                           # string offset=184
.Linfo_string13:
	.asciz	"__dirstream"                   # string offset=188
.Linfo_string14:
	.asciz	"DIR"                           # string offset=200
.Linfo_string15:
	.asciz	"state"                         # string offset=204
.Linfo_string16:
	.asciz	"int"                           # string offset=210
.Linfo_string17:
	.asciz	"input"                         # string offset=214
.Linfo_string18:
	.asciz	"char"                          # string offset=220
.Linfo_string19:
	.asciz	"path"                          # string offset=225
.Linfo_string20:
	.asciz	"prompt"                        # string offset=230
.Linfo_string21:
	.asciz	"operator_nbr"                  # string offset=237
.Linfo_string22:
	.asciz	"exit_status"                   # string offset=250
.Linfo_string23:
	.asciz	"unsigned char"                 # string offset=262
.Linfo_string24:
	.asciz	"env_array"                     # string offset=276
.Linfo_string25:
	.asciz	"env"                           # string offset=286
.Linfo_string26:
	.asciz	"name"                          # string offset=290
.Linfo_string27:
	.asciz	"value"                         # string offset=295
.Linfo_string28:
	.asciz	"next"                          # string offset=301
.Linfo_string29:
	.asciz	"s_env"                         # string offset=306
.Linfo_string30:
	.asciz	"t_env"                         # string offset=312
.Linfo_string31:
	.asciz	"local"                         # string offset=318
.Linfo_string32:
	.asciz	"s_var"                         # string offset=324
.Linfo_string33:
	.asciz	"t_var"                         # string offset=330
.Linfo_string34:
	.asciz	"syntax_tree"                   # string offset=336
.Linfo_string35:
	.asciz	"node"                          # string offset=348
.Linfo_string36:
	.asciz	"id"                            # string offset=353
.Linfo_string37:
	.asciz	"type"                          # string offset=356
.Linfo_string38:
	.asciz	"pipe_fd"                       # string offset=361
.Linfo_string39:
	.asciz	"left"                          # string offset=369
.Linfo_string40:
	.asciz	"pid"                           # string offset=374
.Linfo_string41:
	.asciz	"wstatus"                       # string offset=378
.Linfo_string42:
	.asciz	"arg"                           # string offset=386
.Linfo_string43:
	.asciz	"s_arg"                         # string offset=390
.Linfo_string44:
	.asciz	"t_arg"                         # string offset=396
.Linfo_string45:
	.asciz	"pipe"                          # string offset=402
.Linfo_string46:
	.asciz	"to_close"                      # string offset=407
.Linfo_string47:
	.asciz	"write"                         # string offset=416
.Linfo_string48:
	.asciz	"read"                          # string offset=422
.Linfo_string49:
	.asciz	"s_pipe"                        # string offset=427
.Linfo_string50:
	.asciz	"t_pipe"                        # string offset=434
.Linfo_string51:
	.asciz	"redir"                         # string offset=441
.Linfo_string52:
	.asciz	"in_fd"                         # string offset=447
.Linfo_string53:
	.asciz	"out_fd"                        # string offset=453
.Linfo_string54:
	.asciz	"infile"                        # string offset=460
.Linfo_string55:
	.asciz	"fd"                            # string offset=467
.Linfo_string56:
	.asciz	"s_infile"                      # string offset=470
.Linfo_string57:
	.asciz	"t_infile"                      # string offset=479
.Linfo_string58:
	.asciz	"outfile"                       # string offset=488
.Linfo_string59:
	.asciz	"s_outfile"                     # string offset=496
.Linfo_string60:
	.asciz	"t_outfile"                     # string offset=506
.Linfo_string61:
	.asciz	"s_redir"                       # string offset=516
.Linfo_string62:
	.asciz	"t_redir"                       # string offset=524
.Linfo_string63:
	.asciz	"assign"                        # string offset=532
.Linfo_string64:
	.asciz	"expansion"                     # string offset=539
.Linfo_string65:
	.asciz	"s_expan"                       # string offset=549
.Linfo_string66:
	.asciz	"t_expan"                       # string offset=557
.Linfo_string67:
	.asciz	"arg_array"                     # string offset=565
.Linfo_string68:
	.asciz	"prev"                          # string offset=575
.Linfo_string69:
	.asciz	"s_cmd"                         # string offset=580
.Linfo_string70:
	.asciz	"right"                         # string offset=586
.Linfo_string71:
	.asciz	"s_ast_node"                    # string offset=592
.Linfo_string72:
	.asciz	"t_ast_node"                    # string offset=603
.Linfo_string73:
	.asciz	"s_ast"                         # string offset=614
.Linfo_string74:
	.asciz	"t_ast"                         # string offset=620
.Linfo_string75:
	.asciz	"token_stream"                  # string offset=626
.Linfo_string76:
	.asciz	"quote_nbr"                     # string offset=639
.Linfo_string77:
	.asciz	"length"                        # string offset=649
.Linfo_string78:
	.asciz	"lexeme"                        # string offset=656
.Linfo_string79:
	.asciz	"s_token"                       # string offset=663
.Linfo_string80:
	.asciz	"t_token"                       # string offset=671
.Linfo_string81:
	.asciz	"sighandler"                    # string offset=679
.Linfo_string82:
	.asciz	"__sigaction_handler"           # string offset=690
.Linfo_string83:
	.asciz	"sa_handler"                    # string offset=710
.Linfo_string84:
	.asciz	"__sighandler_t"                # string offset=721
.Linfo_string85:
	.asciz	"sa_sigaction"                  # string offset=736
.Linfo_string86:
	.asciz	"si_signo"                      # string offset=749
.Linfo_string87:
	.asciz	"si_errno"                      # string offset=758
.Linfo_string88:
	.asciz	"si_code"                       # string offset=767
.Linfo_string89:
	.asciz	"__pad0"                        # string offset=775
.Linfo_string90:
	.asciz	"_sifields"                     # string offset=782
.Linfo_string91:
	.asciz	"_pad"                          # string offset=792
.Linfo_string92:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=797
.Linfo_string93:
	.asciz	"_kill"                         # string offset=817
.Linfo_string94:
	.asciz	"si_pid"                        # string offset=823
.Linfo_string95:
	.asciz	"__pid_t"                       # string offset=830
.Linfo_string96:
	.asciz	"si_uid"                        # string offset=838
.Linfo_string97:
	.asciz	"__uid_t"                       # string offset=845
.Linfo_string98:
	.asciz	"_timer"                        # string offset=853
.Linfo_string99:
	.asciz	"si_tid"                        # string offset=860
.Linfo_string100:
	.asciz	"si_overrun"                    # string offset=867
.Linfo_string101:
	.asciz	"si_sigval"                     # string offset=878
.Linfo_string102:
	.asciz	"sival_int"                     # string offset=888
.Linfo_string103:
	.asciz	"sival_ptr"                     # string offset=898
.Linfo_string104:
	.asciz	"sigval"                        # string offset=908
.Linfo_string105:
	.asciz	"__sigval_t"                    # string offset=915
.Linfo_string106:
	.asciz	"_rt"                           # string offset=926
.Linfo_string107:
	.asciz	"_sigchld"                      # string offset=930
.Linfo_string108:
	.asciz	"si_status"                     # string offset=939
.Linfo_string109:
	.asciz	"si_utime"                      # string offset=949
.Linfo_string110:
	.asciz	"long int"                      # string offset=958
.Linfo_string111:
	.asciz	"__clock_t"                     # string offset=967
.Linfo_string112:
	.asciz	"si_stime"                      # string offset=977
.Linfo_string113:
	.asciz	"_sigfault"                     # string offset=986
.Linfo_string114:
	.asciz	"si_addr"                       # string offset=996
.Linfo_string115:
	.asciz	"si_addr_lsb"                   # string offset=1004
.Linfo_string116:
	.asciz	"short"                         # string offset=1016
.Linfo_string117:
	.asciz	"_bounds"                       # string offset=1022
.Linfo_string118:
	.asciz	"_addr_bnd"                     # string offset=1030
.Linfo_string119:
	.asciz	"_lower"                        # string offset=1040
.Linfo_string120:
	.asciz	"_upper"                        # string offset=1047
.Linfo_string121:
	.asciz	"_pkey"                         # string offset=1054
.Linfo_string122:
	.asciz	"__uint32_t"                    # string offset=1060
.Linfo_string123:
	.asciz	"_sigpoll"                      # string offset=1071
.Linfo_string124:
	.asciz	"si_band"                       # string offset=1080
.Linfo_string125:
	.asciz	"si_fd"                         # string offset=1088
.Linfo_string126:
	.asciz	"_sigsys"                       # string offset=1094
.Linfo_string127:
	.asciz	"_call_addr"                    # string offset=1102
.Linfo_string128:
	.asciz	"_syscall"                      # string offset=1113
.Linfo_string129:
	.asciz	"_arch"                         # string offset=1122
.Linfo_string130:
	.asciz	"siginfo_t"                     # string offset=1128
.Linfo_string131:
	.asciz	"sa_mask"                       # string offset=1138
.Linfo_string132:
	.asciz	"__val"                         # string offset=1146
.Linfo_string133:
	.asciz	"long unsigned int"             # string offset=1152
.Linfo_string134:
	.asciz	"__sigset_t"                    # string offset=1170
.Linfo_string135:
	.asciz	"sa_flags"                      # string offset=1181
.Linfo_string136:
	.asciz	"sa_restorer"                   # string offset=1190
.Linfo_string137:
	.asciz	"sigaction"                     # string offset=1202
.Linfo_string138:
	.asciz	"statbuf"                       # string offset=1212
.Linfo_string139:
	.asciz	"st_dev"                        # string offset=1220
.Linfo_string140:
	.asciz	"__dev_t"                       # string offset=1227
.Linfo_string141:
	.asciz	"st_ino"                        # string offset=1235
.Linfo_string142:
	.asciz	"__ino_t"                       # string offset=1242
.Linfo_string143:
	.asciz	"st_nlink"                      # string offset=1250
.Linfo_string144:
	.asciz	"__nlink_t"                     # string offset=1259
.Linfo_string145:
	.asciz	"st_mode"                       # string offset=1269
.Linfo_string146:
	.asciz	"__mode_t"                      # string offset=1277
.Linfo_string147:
	.asciz	"st_uid"                        # string offset=1286
.Linfo_string148:
	.asciz	"st_gid"                        # string offset=1293
.Linfo_string149:
	.asciz	"__gid_t"                       # string offset=1300
.Linfo_string150:
	.asciz	"st_rdev"                       # string offset=1308
.Linfo_string151:
	.asciz	"st_size"                       # string offset=1316
.Linfo_string152:
	.asciz	"__off_t"                       # string offset=1324
.Linfo_string153:
	.asciz	"st_blksize"                    # string offset=1332
.Linfo_string154:
	.asciz	"__blksize_t"                   # string offset=1343
.Linfo_string155:
	.asciz	"st_blocks"                     # string offset=1355
.Linfo_string156:
	.asciz	"__blkcnt_t"                    # string offset=1365
.Linfo_string157:
	.asciz	"st_atim"                       # string offset=1376
.Linfo_string158:
	.asciz	"tv_sec"                        # string offset=1384
.Linfo_string159:
	.asciz	"__time_t"                      # string offset=1391
.Linfo_string160:
	.asciz	"tv_nsec"                       # string offset=1400
.Linfo_string161:
	.asciz	"__syscall_slong_t"             # string offset=1408
.Linfo_string162:
	.asciz	"timespec"                      # string offset=1426
.Linfo_string163:
	.asciz	"st_mtim"                       # string offset=1435
.Linfo_string164:
	.asciz	"st_ctim"                       # string offset=1443
.Linfo_string165:
	.asciz	"__glibc_reserved"              # string offset=1451
.Linfo_string166:
	.asciz	"stat"                          # string offset=1468
.Linfo_string167:
	.asciz	"term"                          # string offset=1473
.Linfo_string168:
	.asciz	"c_iflag"                       # string offset=1478
.Linfo_string169:
	.asciz	"tcflag_t"                      # string offset=1486
.Linfo_string170:
	.asciz	"c_oflag"                       # string offset=1495
.Linfo_string171:
	.asciz	"c_cflag"                       # string offset=1503
.Linfo_string172:
	.asciz	"c_lflag"                       # string offset=1511
.Linfo_string173:
	.asciz	"c_line"                        # string offset=1519
.Linfo_string174:
	.asciz	"cc_t"                          # string offset=1526
.Linfo_string175:
	.asciz	"c_cc"                          # string offset=1531
.Linfo_string176:
	.asciz	"c_ispeed"                      # string offset=1536
.Linfo_string177:
	.asciz	"speed_t"                       # string offset=1545
.Linfo_string178:
	.asciz	"c_ospeed"                      # string offset=1553
.Linfo_string179:
	.asciz	"termios"                       # string offset=1562
.Linfo_string180:
	.asciz	"s_minishell"                   # string offset=1570
.Linfo_string181:
	.asciz	"t_minishell"                   # string offset=1582
.Linfo_string182:
	.asciz	"envp"                          # string offset=1594
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym init_minishell_struct
	.addrsig_sym init_signal_handler
	.addrsig_sym init_environment
	.addrsig_sym __errno_location
	.section	.debug_line,"",@progbits
.Lline_table_start0:

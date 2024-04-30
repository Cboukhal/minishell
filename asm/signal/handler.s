	.text
	.file	"handler.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/signal/handler.c"
	.file	2 "/usr/include" "signal.h"
	.globl	display_newline_prompt          # -- Begin function display_newline_prompt
	.p2align	4, 0x90
	.type	display_newline_prompt,@function
display_newline_prompt:                 # @display_newline_prompt
.Lfunc_begin0:
	.loc	1 93 0                          # src/signal/handler.c:93:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.Ltmp0:
	.loc	1 94 2 prologue_end             # src/signal/handler.c:94:2
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 95 2                          # src/signal/handler.c:95:2
	callq	rl_on_new_line
	.loc	1 96 2                          # src/signal/handler.c:96:2
	movabsq	$.L.str.1, %rdi
	xorl	%esi, %esi
	callq	rl_replace_line
.Ltmp1:
	.loc	1 97 15                         # src/signal/handler.c:97:15
	cmpl	$1, g_signal
.Ltmp2:
	.loc	1 97 6 is_stmt 0                # src/signal/handler.c:97:6
	je	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	1 98 3 is_stmt 1                # src/signal/handler.c:98:3
	callq	rl_redisplay
.Ltmp4:
.LBB0_2:
	.loc	1 99 13                         # src/signal/handler.c:99:13
	movl	-4(%rbp), %eax
	.loc	1 99 11 is_stmt 0               # src/signal/handler.c:99:11
	movl	%eax, g_signal
	.loc	1 100 1 is_stmt 1               # src/signal/handler.c:100:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	display_newline_prompt, .Lfunc_end0-display_newline_prompt
	.cfi_endproc
                                        # -- End function
	.globl	handle_sigint                   # -- Begin function handle_sigint
	.p2align	4, 0x90
	.type	handle_sigint,@function
handle_sigint:                          # @handle_sigint
.Lfunc_begin1:
	.loc	1 103 0                         # src/signal/handler.c:103:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.Ltmp6:
	.loc	1 104 25 prologue_end           # src/signal/handler.c:104:25
	movl	-4(%rbp), %edi
	.loc	1 104 2 is_stmt 0               # src/signal/handler.c:104:2
	callq	display_newline_prompt
	.loc	1 105 1 is_stmt 1               # src/signal/handler.c:105:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	handle_sigint, .Lfunc_end1-handle_sigint
	.cfi_endproc
                                        # -- End function
	.globl	init_signal_handler             # -- Begin function init_signal_handler
	.p2align	4, 0x90
	.type	init_signal_handler,@function
init_signal_handler:                    # @init_signal_handler
.Lfunc_begin2:
	.loc	1 113 0                         # src/signal/handler.c:113:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp                      # imm = 0x130
.Ltmp8:
	.loc	1 117 21 prologue_end           # src/signal/handler.c:117:21
	movabsq	$handle_sigint, %rax
	movq	%rax, -152(%rbp)
	.loc	1 118 23                        # src/signal/handler.c:118:23
	leaq	-152(%rbp), %rdi
	addq	$8, %rdi
	.loc	1 118 2 is_stmt 0               # src/signal/handler.c:118:2
	callq	sigemptyset
	.loc	1 119 19 is_stmt 1              # src/signal/handler.c:119:19
	movl	$0, -16(%rbp)
	.loc	1 120 2                         # src/signal/handler.c:120:2
	movl	$2, %edi
	leaq	-152(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	.loc	1 121 21                        # src/signal/handler.c:121:21
	movl	$1, %eax
	movq	%rax, -304(%rbp)
	.loc	1 122 23                        # src/signal/handler.c:122:23
	leaq	-304(%rbp), %rdi
	addq	$8, %rdi
	.loc	1 122 2 is_stmt 0               # src/signal/handler.c:122:2
	callq	sigemptyset
	.loc	1 123 19 is_stmt 1              # src/signal/handler.c:123:19
	movl	$0, -168(%rbp)
	.loc	1 124 2                         # src/signal/handler.c:124:2
	movl	$3, %edi
	leaq	-304(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	.loc	1 125 1                         # src/signal/handler.c:125:1
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end2:
	.size	init_signal_handler, .Lfunc_end2-init_signal_handler
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	g_signal,@object                # @g_signal
	.bss
	.globl	g_signal
	.p2align	2
g_signal:
	.long	0                               # 0x0
	.size	g_signal, 4

	.file	3 "/usr/include/x86_64-linux-gnu/bits" "sigaction.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits/types" "siginfo_t.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits/types" "__sigval_t.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits/types" "__sigset_t.h"
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x400 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	63                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	g_signal
	.byte	3                               # Abbrev [3] 0x3f:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x46:0xb DW_TAG_typedef
	.long	81                              # DW_AT_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x51:0x5 DW_TAG_pointer_type
	.long	86                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x56:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x57:0x5 DW_TAG_formal_parameter
	.long	63                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5d:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x72:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	63                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x81:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x96:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	63                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa5:0x34 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xba:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350~"
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xc9:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320}"
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xd9:0x56 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xe1:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	237                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xed:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xf1:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	70                              # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xfd:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x10a:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	981                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x116:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x122:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1028                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x12f:0x5 DW_TAG_pointer_type
	.long	308                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x134:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x135:0x5 DW_TAG_formal_parameter
	.long	63                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x13a:0x5 DW_TAG_formal_parameter
	.long	325                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x13f:0x5 DW_TAG_formal_parameter
	.long	944                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x145:0x5 DW_TAG_pointer_type
	.long	330                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x14a:0xb DW_TAG_typedef
	.long	341                             # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x155:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x159:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x165:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x171:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x17d:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x189:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x195:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x199:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	852                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1a5:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	433                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1b1:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1b5:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	871                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1c1:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	882                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1ce:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1da:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1de:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ea:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1f6:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	900                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x203:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x20f:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x213:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	871                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x21f:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	882                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x22b:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	900                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x238:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	580                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x244:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x248:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	871                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x254:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	882                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x260:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26c:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	945                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x278:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	945                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x285:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	657                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x291:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x295:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2a1:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	963                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2ad:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2b9:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2bd:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	713                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2c9:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2cd:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2d9:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2e6:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	970                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2f4:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	768                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x300:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x304:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	956                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x310:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x31d:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	809                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x329:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x32d:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x339:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x345:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	893                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x354:0xc DW_TAG_array_type
	.long	63                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0x359:0x6 DW_TAG_subrange_type
	.long	864                             # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x360:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	4                               # Abbrev [4] 0x367:0xb DW_TAG_typedef
	.long	63                              # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x372:0xb DW_TAG_typedef
	.long	893                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x37d:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x384:0xb DW_TAG_typedef
	.long	911                             # DW_AT_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x38f:0x21 DW_TAG_union_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x397:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3a3:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x3b0:0x1 DW_TAG_pointer_type
	.byte	4                               # Abbrev [4] 0x3b1:0xb DW_TAG_typedef
	.long	956                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x3bc:0x7 DW_TAG_base_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x3c3:0x7 DW_TAG_base_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x3ca:0xb DW_TAG_typedef
	.long	893                             # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3d5:0xb DW_TAG_typedef
	.long	992                             # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3e0:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3e4:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1009                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x3f1:0xc DW_TAG_array_type
	.long	1021                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x3f6:0x6 DW_TAG_subrange_type
	.long	864                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x3fd:0x7 DW_TAG_base_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x404:0x5 DW_TAG_pointer_type
	.long	1033                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x409:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/signal/handler.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=59
.Linfo_string3:
	.asciz	"g_signal"                      # string offset=128
.Linfo_string4:
	.asciz	"int"                           # string offset=137
.Linfo_string5:
	.asciz	"__sighandler_t"                # string offset=141
.Linfo_string6:
	.asciz	"display_newline_prompt"        # string offset=156
.Linfo_string7:
	.asciz	"handle_sigint"                 # string offset=179
.Linfo_string8:
	.asciz	"init_signal_handler"           # string offset=193
.Linfo_string9:
	.asciz	"sig"                           # string offset=213
.Linfo_string10:
	.asciz	"touch_c"                       # string offset=217
.Linfo_string11:
	.asciz	"__sigaction_handler"           # string offset=225
.Linfo_string12:
	.asciz	"sa_handler"                    # string offset=245
.Linfo_string13:
	.asciz	"sa_sigaction"                  # string offset=256
.Linfo_string14:
	.asciz	"si_signo"                      # string offset=269
.Linfo_string15:
	.asciz	"si_errno"                      # string offset=278
.Linfo_string16:
	.asciz	"si_code"                       # string offset=287
.Linfo_string17:
	.asciz	"__pad0"                        # string offset=295
.Linfo_string18:
	.asciz	"_sifields"                     # string offset=302
.Linfo_string19:
	.asciz	"_pad"                          # string offset=312
.Linfo_string20:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=317
.Linfo_string21:
	.asciz	"_kill"                         # string offset=337
.Linfo_string22:
	.asciz	"si_pid"                        # string offset=343
.Linfo_string23:
	.asciz	"__pid_t"                       # string offset=350
.Linfo_string24:
	.asciz	"si_uid"                        # string offset=358
.Linfo_string25:
	.asciz	"unsigned int"                  # string offset=365
.Linfo_string26:
	.asciz	"__uid_t"                       # string offset=378
.Linfo_string27:
	.asciz	"_timer"                        # string offset=386
.Linfo_string28:
	.asciz	"si_tid"                        # string offset=393
.Linfo_string29:
	.asciz	"si_overrun"                    # string offset=400
.Linfo_string30:
	.asciz	"si_sigval"                     # string offset=411
.Linfo_string31:
	.asciz	"sival_int"                     # string offset=421
.Linfo_string32:
	.asciz	"sival_ptr"                     # string offset=431
.Linfo_string33:
	.asciz	"sigval"                        # string offset=441
.Linfo_string34:
	.asciz	"__sigval_t"                    # string offset=448
.Linfo_string35:
	.asciz	"_rt"                           # string offset=459
.Linfo_string36:
	.asciz	"_sigchld"                      # string offset=463
.Linfo_string37:
	.asciz	"si_status"                     # string offset=472
.Linfo_string38:
	.asciz	"si_utime"                      # string offset=482
.Linfo_string39:
	.asciz	"long int"                      # string offset=491
.Linfo_string40:
	.asciz	"__clock_t"                     # string offset=500
.Linfo_string41:
	.asciz	"si_stime"                      # string offset=510
.Linfo_string42:
	.asciz	"_sigfault"                     # string offset=519
.Linfo_string43:
	.asciz	"si_addr"                       # string offset=529
.Linfo_string44:
	.asciz	"si_addr_lsb"                   # string offset=537
.Linfo_string45:
	.asciz	"short"                         # string offset=549
.Linfo_string46:
	.asciz	"_bounds"                       # string offset=555
.Linfo_string47:
	.asciz	"_addr_bnd"                     # string offset=563
.Linfo_string48:
	.asciz	"_lower"                        # string offset=573
.Linfo_string49:
	.asciz	"_upper"                        # string offset=580
.Linfo_string50:
	.asciz	"_pkey"                         # string offset=587
.Linfo_string51:
	.asciz	"__uint32_t"                    # string offset=593
.Linfo_string52:
	.asciz	"_sigpoll"                      # string offset=604
.Linfo_string53:
	.asciz	"si_band"                       # string offset=613
.Linfo_string54:
	.asciz	"si_fd"                         # string offset=621
.Linfo_string55:
	.asciz	"_sigsys"                       # string offset=627
.Linfo_string56:
	.asciz	"_call_addr"                    # string offset=635
.Linfo_string57:
	.asciz	"_syscall"                      # string offset=646
.Linfo_string58:
	.asciz	"_arch"                         # string offset=655
.Linfo_string59:
	.asciz	"siginfo_t"                     # string offset=661
.Linfo_string60:
	.asciz	"sa_mask"                       # string offset=671
.Linfo_string61:
	.asciz	"__val"                         # string offset=679
.Linfo_string62:
	.asciz	"long unsigned int"             # string offset=685
.Linfo_string63:
	.asciz	"__sigset_t"                    # string offset=703
.Linfo_string64:
	.asciz	"sa_flags"                      # string offset=714
.Linfo_string65:
	.asciz	"sa_restorer"                   # string offset=723
.Linfo_string66:
	.asciz	"sigaction"                     # string offset=735
.Linfo_string67:
	.asciz	"touch_n"                       # string offset=745
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym display_newline_prompt
	.addrsig_sym printf
	.addrsig_sym rl_on_new_line
	.addrsig_sym rl_replace_line
	.addrsig_sym rl_redisplay
	.addrsig_sym handle_sigint
	.addrsig_sym sigemptyset
	.addrsig_sym sigaction
	.addrsig_sym g_signal
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.text
	.file	"handler.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/signal/handler.c"
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
.Ltmp0:
	.loc	1 95 8 prologue_end             # src/signal/handler.c:95:8
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 96 2                          # src/signal/handler.c:96:2
	callq	rl_on_new_line
	.loc	1 97 2                          # src/signal/handler.c:97:2
	movabsq	$.L.str.1, %rdi
	xorl	%esi, %esi
	callq	rl_replace_line
	.loc	1 98 2                          # src/signal/handler.c:98:2
	callq	rl_redisplay
	.loc	1 99 1                          # src/signal/handler.c:99:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	display_newline_prompt, .Lfunc_end0-display_newline_prompt
	.cfi_endproc
                                        # -- End function
	.globl	handle_sigint                   # -- Begin function handle_sigint
	.p2align	4, 0x90
	.type	handle_sigint,@function
handle_sigint:                          # @handle_sigint
.Lfunc_begin1:
	.loc	1 102 0                         # src/signal/handler.c:102:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.Ltmp2:
	.loc	1 104 19 prologue_end           # src/signal/handler.c:104:19
	movl	-4(%rbp), %eax
	.loc	1 104 17 is_stmt 0              # src/signal/handler.c:104:17
	movl	%eax, g_signal
	.loc	1 105 2 is_stmt 1               # src/signal/handler.c:105:2
	callq	display_newline_prompt
	.loc	1 106 1                         # src/signal/handler.c:106:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	handle_sigint, .Lfunc_end1-handle_sigint
	.cfi_endproc
                                        # -- End function
	.globl	handle_sigquit                  # -- Begin function handle_sigquit
	.p2align	4, 0x90
	.type	handle_sigquit,@function
handle_sigquit:                         # @handle_sigquit
.Lfunc_begin2:
	.loc	1 109 0                         # src/signal/handler.c:109:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
.Ltmp4:
	.loc	1 111 19 prologue_end           # src/signal/handler.c:111:19
	movl	-4(%rbp), %eax
	.loc	1 111 17 is_stmt 0              # src/signal/handler.c:111:17
	movl	%eax, g_signal
	.loc	1 112 1 is_stmt 1               # src/signal/handler.c:112:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end2:
	.size	handle_sigquit, .Lfunc_end2-handle_sigquit
	.cfi_endproc
                                        # -- End function
	.globl	init_signal_handler             # -- Begin function init_signal_handler
	.p2align	4, 0x90
	.type	init_signal_handler,@function
init_signal_handler:                    # @init_signal_handler
.Lfunc_begin3:
	.loc	1 115 0                         # src/signal/handler.c:115:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp                      # imm = 0x130
.Ltmp6:
	.loc	1 119 21 prologue_end           # src/signal/handler.c:119:21
	movabsq	$handle_sigint, %rax
	movq	%rax, -152(%rbp)
	.loc	1 120 23                        # src/signal/handler.c:120:23
	leaq	-152(%rbp), %rdi
	addq	$8, %rdi
	.loc	1 120 2 is_stmt 0               # src/signal/handler.c:120:2
	callq	sigemptyset
	.loc	1 121 19 is_stmt 1              # src/signal/handler.c:121:19
	movl	$0, -16(%rbp)
	.loc	1 122 2                         # src/signal/handler.c:122:2
	movl	$2, %edi
	leaq	-152(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	.loc	1 123 21                        # src/signal/handler.c:123:21
	movl	$1, %eax
	movq	%rax, -304(%rbp)
	.loc	1 124 23                        # src/signal/handler.c:124:23
	leaq	-304(%rbp), %rdi
	addq	$8, %rdi
	.loc	1 124 2 is_stmt 0               # src/signal/handler.c:124:2
	callq	sigemptyset
	.loc	1 125 19 is_stmt 1              # src/signal/handler.c:125:19
	movl	$0, -168(%rbp)
	.loc	1 126 2                         # src/signal/handler.c:126:2
	movl	$3, %edi
	leaq	-304(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	.loc	1 127 1                         # src/signal/handler.c:127:1
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end3:
	.size	init_signal_handler, .Lfunc_end3-init_signal_handler
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
	.byte	0                               # DW_CHILDREN_no
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x415 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	8                               # Abbrev [8] 0x5d:0x15 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x72:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x87:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	63                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x96:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xab:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	63                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xba:0x34 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0xcf:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350~"
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	238                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xde:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320}"
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	238                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xee:0x56 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xf6:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	258                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x102:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x106:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	70                              # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x112:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	324                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x11f:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1002                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x12b:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x137:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1049                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x144:0x5 DW_TAG_pointer_type
	.long	329                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x149:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x14a:0x5 DW_TAG_formal_parameter
	.long	63                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x14f:0x5 DW_TAG_formal_parameter
	.long	346                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x154:0x5 DW_TAG_formal_parameter
	.long	965                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x15a:0x5 DW_TAG_pointer_type
	.long	351                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x15f:0xb DW_TAG_typedef
	.long	362                             # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x16a:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x16e:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x17a:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x186:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x192:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x19e:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	426                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1aa:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1ae:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	873                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1ba:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	454                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1c6:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1ca:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	892                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1d6:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	903                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1e3:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	495                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x1ef:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1f3:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1ff:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x20b:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	921                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x218:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x224:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x228:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	892                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x234:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	903                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x240:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	921                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x24d:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	601                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x259:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x25d:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	892                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x269:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	903                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x275:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x281:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	966                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x28d:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	966                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x29a:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	678                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x2a6:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2aa:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2b6:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	984                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2c2:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	718                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2ce:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2d2:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	734                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x2de:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2e2:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2ee:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x2fb:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x309:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	789                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x315:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x319:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	977                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x325:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x332:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	830                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x33e:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x342:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x34e:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x35a:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	914                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x369:0xc DW_TAG_array_type
	.long	63                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x36e:0x6 DW_TAG_subrange_type
	.long	885                             # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x375:0x7 DW_TAG_base_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	4                               # Abbrev [4] 0x37c:0xb DW_TAG_typedef
	.long	63                              # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x387:0xb DW_TAG_typedef
	.long	914                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x392:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x399:0xb DW_TAG_typedef
	.long	932                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x3a4:0x21 DW_TAG_union_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	63                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3b8:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x3c5:0x1 DW_TAG_pointer_type
	.byte	4                               # Abbrev [4] 0x3c6:0xb DW_TAG_typedef
	.long	977                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x3d1:0x7 DW_TAG_base_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x3d8:0x7 DW_TAG_base_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x3df:0xb DW_TAG_typedef
	.long	914                             # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3ea:0xb DW_TAG_typedef
	.long	1013                            # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3f5:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3f9:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1030                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x406:0xc DW_TAG_array_type
	.long	1042                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x40b:0x6 DW_TAG_subrange_type
	.long	885                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x412:0x7 DW_TAG_base_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x419:0x5 DW_TAG_pointer_type
	.long	1054                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x41e:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/signal/handler.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=59
.Linfo_string3:
	.asciz	"g_signal"                      # string offset=117
.Linfo_string4:
	.asciz	"int"                           # string offset=126
.Linfo_string5:
	.asciz	"__sighandler_t"                # string offset=130
.Linfo_string6:
	.asciz	"display_newline_prompt"        # string offset=145
.Linfo_string7:
	.asciz	"handle_sigint"                 # string offset=168
.Linfo_string8:
	.asciz	"handle_sigquit"                # string offset=182
.Linfo_string9:
	.asciz	"init_signal_handler"           # string offset=197
.Linfo_string10:
	.asciz	"sig"                           # string offset=217
.Linfo_string11:
	.asciz	"touch_c"                       # string offset=221
.Linfo_string12:
	.asciz	"__sigaction_handler"           # string offset=229
.Linfo_string13:
	.asciz	"sa_handler"                    # string offset=249
.Linfo_string14:
	.asciz	"sa_sigaction"                  # string offset=260
.Linfo_string15:
	.asciz	"si_signo"                      # string offset=273
.Linfo_string16:
	.asciz	"si_errno"                      # string offset=282
.Linfo_string17:
	.asciz	"si_code"                       # string offset=291
.Linfo_string18:
	.asciz	"__pad0"                        # string offset=299
.Linfo_string19:
	.asciz	"_sifields"                     # string offset=306
.Linfo_string20:
	.asciz	"_pad"                          # string offset=316
.Linfo_string21:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=321
.Linfo_string22:
	.asciz	"_kill"                         # string offset=341
.Linfo_string23:
	.asciz	"si_pid"                        # string offset=347
.Linfo_string24:
	.asciz	"__pid_t"                       # string offset=354
.Linfo_string25:
	.asciz	"si_uid"                        # string offset=362
.Linfo_string26:
	.asciz	"unsigned int"                  # string offset=369
.Linfo_string27:
	.asciz	"__uid_t"                       # string offset=382
.Linfo_string28:
	.asciz	"_timer"                        # string offset=390
.Linfo_string29:
	.asciz	"si_tid"                        # string offset=397
.Linfo_string30:
	.asciz	"si_overrun"                    # string offset=404
.Linfo_string31:
	.asciz	"si_sigval"                     # string offset=415
.Linfo_string32:
	.asciz	"sival_int"                     # string offset=425
.Linfo_string33:
	.asciz	"sival_ptr"                     # string offset=435
.Linfo_string34:
	.asciz	"sigval"                        # string offset=445
.Linfo_string35:
	.asciz	"__sigval_t"                    # string offset=452
.Linfo_string36:
	.asciz	"_rt"                           # string offset=463
.Linfo_string37:
	.asciz	"_sigchld"                      # string offset=467
.Linfo_string38:
	.asciz	"si_status"                     # string offset=476
.Linfo_string39:
	.asciz	"si_utime"                      # string offset=486
.Linfo_string40:
	.asciz	"long int"                      # string offset=495
.Linfo_string41:
	.asciz	"__clock_t"                     # string offset=504
.Linfo_string42:
	.asciz	"si_stime"                      # string offset=514
.Linfo_string43:
	.asciz	"_sigfault"                     # string offset=523
.Linfo_string44:
	.asciz	"si_addr"                       # string offset=533
.Linfo_string45:
	.asciz	"si_addr_lsb"                   # string offset=541
.Linfo_string46:
	.asciz	"short"                         # string offset=553
.Linfo_string47:
	.asciz	"_bounds"                       # string offset=559
.Linfo_string48:
	.asciz	"_addr_bnd"                     # string offset=567
.Linfo_string49:
	.asciz	"_lower"                        # string offset=577
.Linfo_string50:
	.asciz	"_upper"                        # string offset=584
.Linfo_string51:
	.asciz	"_pkey"                         # string offset=591
.Linfo_string52:
	.asciz	"__uint32_t"                    # string offset=597
.Linfo_string53:
	.asciz	"_sigpoll"                      # string offset=608
.Linfo_string54:
	.asciz	"si_band"                       # string offset=617
.Linfo_string55:
	.asciz	"si_fd"                         # string offset=625
.Linfo_string56:
	.asciz	"_sigsys"                       # string offset=631
.Linfo_string57:
	.asciz	"_call_addr"                    # string offset=639
.Linfo_string58:
	.asciz	"_syscall"                      # string offset=650
.Linfo_string59:
	.asciz	"_arch"                         # string offset=659
.Linfo_string60:
	.asciz	"siginfo_t"                     # string offset=665
.Linfo_string61:
	.asciz	"sa_mask"                       # string offset=675
.Linfo_string62:
	.asciz	"__val"                         # string offset=683
.Linfo_string63:
	.asciz	"long unsigned int"             # string offset=689
.Linfo_string64:
	.asciz	"__sigset_t"                    # string offset=707
.Linfo_string65:
	.asciz	"sa_flags"                      # string offset=718
.Linfo_string66:
	.asciz	"sa_restorer"                   # string offset=727
.Linfo_string67:
	.asciz	"sigaction"                     # string offset=739
.Linfo_string68:
	.asciz	"touch_n"                       # string offset=749
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

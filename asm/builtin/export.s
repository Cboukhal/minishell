	.text
	.file	"export.c"
	.globl	get_last_env_variable           # -- Begin function get_last_env_variable
	.p2align	4, 0x90
	.type	get_last_env_variable,@function
get_last_env_variable:                  # @get_last_env_variable
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/builtin/export.c"
	.loc	1 32 0                          # src/builtin/export.c:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 35 10 prologue_end            # src/builtin/export.c:35:10
	movq	-8(%rbp), %rax
	.loc	1 35 8 is_stmt 0                # src/builtin/export.c:35:8
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 36 2 is_stmt 1                # src/builtin/export.c:36:2
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 38 7                          # src/builtin/export.c:38:7
	movq	-16(%rbp), %rax
	.loc	1 38 19 is_stmt 0               # src/builtin/export.c:38:19
	cmpq	$0, 16(%rax)
.Ltmp2:
	.loc	1 38 7                          # src/builtin/export.c:38:7
	jne	.LBB0_4
# %bb.3:
.Ltmp3:
	.loc	1 39 4 is_stmt 1                # src/builtin/export.c:39:4
	jmp	.LBB0_5
.Ltmp4:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 40 11                         # src/builtin/export.c:40:11
	movq	-16(%rbp), %rax
	.loc	1 40 18 is_stmt 0               # src/builtin/export.c:40:18
	movq	16(%rax), %rax
	.loc	1 40 9                          # src/builtin/export.c:40:9
	movq	%rax, -16(%rbp)
.Ltmp5:
	.loc	1 36 2 is_stmt 1                # src/builtin/export.c:36:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 42 10                         # src/builtin/export.c:42:10
	movq	-16(%rbp), %rax
	.loc	1 42 2 is_stmt 0                # src/builtin/export.c:42:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	get_last_env_variable, .Lfunc_end0-get_last_env_variable
	.cfi_endproc
                                        # -- End function
	.globl	print_export                    # -- Begin function print_export
	.p2align	4, 0x90
	.type	print_export,@function
print_export:                           # @print_export
.Lfunc_begin1:
	.loc	1 46 0 is_stmt 1                # src/builtin/export.c:46:0
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
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp7:
	.loc	1 47 2 prologue_end             # src/builtin/export.c:47:2
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	1 49 9                          # src/builtin/export.c:49:9
	movl	-12(%rbp), %edi
	.loc	1 49 3 is_stmt 0                # src/builtin/export.c:49:3
	movabsq	$.L.str, %rsi
	movl	$11, %edx
	callq	write
	.loc	1 50 9 is_stmt 1                # src/builtin/export.c:50:9
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	.loc	1 50 13 is_stmt 0               # src/builtin/export.c:50:13
	movq	-8(%rbp), %rax
	.loc	1 50 18                         # src/builtin/export.c:50:18
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 50 34                         # src/builtin/export.c:50:34
	movq	-8(%rbp), %rax
	.loc	1 50 39                         # src/builtin/export.c:50:39
	movq	(%rax), %rdi
	.loc	1 50 24                         # src/builtin/export.c:50:24
	callq	ft_strlen
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 50 3                          # src/builtin/export.c:50:3
	callq	write
	.loc	1 51 9 is_stmt 1                # src/builtin/export.c:51:9
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	.loc	1 51 13 is_stmt 0               # src/builtin/export.c:51:13
	movq	-8(%rbp), %rax
	.loc	1 51 18                         # src/builtin/export.c:51:18
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	.loc	1 51 35                         # src/builtin/export.c:51:35
	movq	-8(%rbp), %rax
	.loc	1 51 40                         # src/builtin/export.c:51:40
	movq	8(%rax), %rdi
	.loc	1 51 25                         # src/builtin/export.c:51:25
	callq	ft_strlen
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 51 3                          # src/builtin/export.c:51:3
	callq	write
	.loc	1 52 9 is_stmt 1                # src/builtin/export.c:52:9
	movl	-12(%rbp), %edi
	.loc	1 52 3 is_stmt 0                # src/builtin/export.c:52:3
	movabsq	$.L.str.1, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 53 9 is_stmt 1                # src/builtin/export.c:53:9
	movq	-8(%rbp), %rax
	.loc	1 53 14 is_stmt 0               # src/builtin/export.c:53:14
	movq	16(%rax), %rax
	.loc	1 53 7                          # src/builtin/export.c:53:7
	movq	%rax, -8(%rbp)
.Ltmp9:
	.loc	1 47 2 is_stmt 1                # src/builtin/export.c:47:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 55 1                          # src/builtin/export.c:55:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end1:
	.size	print_export, .Lfunc_end1-print_export
	.cfi_endproc
                                        # -- End function
	.globl	parse_export_arg                # -- Begin function parse_export_arg
	.p2align	4, 0x90
	.type	parse_export_arg,@function
parse_export_arg:                       # @parse_export_arg
.Lfunc_begin2:
	.loc	1 58 0                          # src/builtin/export.c:58:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp11:
	.loc	1 64 4 prologue_end             # src/builtin/export.c:64:4
	movl	$0, -20(%rbp)
	.loc	1 65 13                         # src/builtin/export.c:65:13
	movq	$0, -32(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 66 9                          # src/builtin/export.c:66:9
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx,%rdx,8)
	movb	%al, -49(%rbp)                  # 1-byte Spill
	.loc	1 66 22 is_stmt 0               # src/builtin/export.c:66:22
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 66 25                         # src/builtin/export.c:66:25
	callq	__errno_location
	.loc	1 66 31                         # src/builtin/export.c:66:31
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 31                          # src/builtin/export.c:0:31
	movb	-49(%rbp), %al                  # 1-byte Reload
	.loc	1 66 2                          # src/builtin/export.c:66:2
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_10
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp12:
	.loc	1 68 26 is_stmt 1               # src/builtin/export.c:68:26
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 68 8 is_stmt 0                # src/builtin/export.c:68:8
	callq	is_valid_variable
.Ltmp13:
	.loc	1 68 7                          # src/builtin/export.c:68:7
	testb	$1, %al
	jne	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp14:
	.loc	1 69 20 is_stmt 1               # src/builtin/export.c:69:20
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 69 35 is_stmt 0               # src/builtin/export.c:69:35
	movq	-8(%rbp), %rdx
	.loc	1 69 46                         # src/builtin/export.c:69:46
	addq	$44, %rdx
	.loc	1 69 4                          # src/builtin/export.c:69:4
	movl	$1, %edi
	callq	error_export
.Ltmp15:
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 70 26 is_stmt 1               # src/builtin/export.c:70:26
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 70 9 is_stmt 0                # src/builtin/export.c:70:9
	callq	get_env_variable
	.loc	1 70 7                          # src/builtin/export.c:70:7
	movq	%rax, -48(%rbp)
.Ltmp16:
	.loc	1 71 8 is_stmt 1                # src/builtin/export.c:71:8
	cmpq	$0, -32(%rbp)
.Ltmp17:
	.loc	1 71 7 is_stmt 0                # src/builtin/export.c:71:7
	jne	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp18:
	.loc	1 72 17 is_stmt 1               # src/builtin/export.c:72:17
	movq	-48(%rbp), %rax
	.loc	1 72 15 is_stmt 0               # src/builtin/export.c:72:15
	movq	%rax, -32(%rbp)
	.loc	1 72 4                          # src/builtin/export.c:72:4
	jmp	.LBB2_9
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 74 18 is_stmt 1               # src/builtin/export.c:74:18
	movq	-48(%rbp), %rcx
	.loc	1 74 4 is_stmt 0                # src/builtin/export.c:74:4
	movq	-40(%rbp), %rax
	.loc	1 74 16                         # src/builtin/export.c:74:16
	movq	%rcx, 16(%rax)
.Ltmp19:
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 75 11 is_stmt 1               # src/builtin/export.c:75:11
	movq	-48(%rbp), %rax
	.loc	1 75 9 is_stmt 0                # src/builtin/export.c:75:9
	movq	%rax, -40(%rbp)
	.loc	1 76 4 is_stmt 1                # src/builtin/export.c:76:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp20:
	.loc	1 66 2                          # src/builtin/export.c:66:2
	jmp	.LBB2_1
.LBB2_10:
	.loc	1 78 10                         # src/builtin/export.c:78:10
	movq	-32(%rbp), %rax
	.loc	1 78 2 is_stmt 0                # src/builtin/export.c:78:2
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.Lfunc_end2:
	.size	parse_export_arg, .Lfunc_end2-parse_export_arg
	.cfi_endproc
                                        # -- End function
	.globl	export                          # -- Begin function export
	.p2align	4, 0x90
	.type	export,@function
export:                                 # @export
.Lfunc_begin3:
	.loc	1 82 0 is_stmt 1                # src/builtin/export.c:82:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp22:
	.loc	1 88 4 prologue_end             # src/builtin/export.c:88:4
	movl	$0, -28(%rbp)
.Ltmp23:
	.loc	1 89 7                          # src/builtin/export.c:89:7
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
.Ltmp24:
	.loc	1 89 6 is_stmt 0                # src/builtin/export.c:89:6
	jne	.LBB3_2
# %bb.1:
.Ltmp25:
	.loc	1 90 3 is_stmt 1                # src/builtin/export.c:90:3
	jmp	.LBB3_11
.Ltmp26:
.LBB3_2:
	.loc	1 91 6                          # src/builtin/export.c:91:6
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	.loc	1 91 16 is_stmt 0               # src/builtin/export.c:91:16
	je	.LBB3_5
# %bb.3:
	.loc	1 91 19                         # src/builtin/export.c:91:19
	movq	-24(%rbp), %rax
	.loc	1 91 24                         # src/builtin/export.c:91:24
	movq	40(%rax), %rax
	.loc	1 91 19                         # src/builtin/export.c:91:19
	cmpq	$0, 8(%rax)
.Ltmp27:
	.loc	1 91 6                          # src/builtin/export.c:91:6
	je	.LBB3_5
# %bb.4:
.Ltmp28:
	.loc	1 92 8 is_stmt 1                # src/builtin/export.c:92:8
	movq	-24(%rbp), %rax
	.loc	1 92 13 is_stmt 0               # src/builtin/export.c:92:13
	movq	40(%rax), %rax
	.loc	1 92 19                         # src/builtin/export.c:92:19
	movq	8(%rax), %rax
	.loc	1 92 8                          # src/builtin/export.c:92:8
	movl	4(%rax), %eax
	.loc	1 92 6                          # src/builtin/export.c:92:6
	movl	%eax, -32(%rbp)
	.loc	1 92 3                          # src/builtin/export.c:92:3
	jmp	.LBB3_6
.LBB3_5:
	.loc	1 94 6 is_stmt 1                # src/builtin/export.c:94:6
	movl	$1, -32(%rbp)
.Ltmp29:
.LBB3_6:
	.loc	1 95 24                         # src/builtin/export.c:95:24
	movq	-24(%rbp), %rax
	.loc	1 95 29 is_stmt 0               # src/builtin/export.c:95:29
	movq	88(%rax), %rdi
	.loc	1 95 12                         # src/builtin/export.c:95:12
	callq	cmd_arg_nbr
	.loc	1 95 10                         # src/builtin/export.c:95:10
	movl	%eax, -36(%rbp)
.Ltmp30:
	.loc	1 96 14 is_stmt 1               # src/builtin/export.c:96:14
	cmpl	$1, -36(%rbp)
.Ltmp31:
	.loc	1 96 6 is_stmt 0                # src/builtin/export.c:96:6
	jne	.LBB3_8
# %bb.7:
.Ltmp32:
	.loc	1 97 18 is_stmt 1               # src/builtin/export.c:97:18
	movq	-16(%rbp), %rax
	.loc	1 97 17 is_stmt 0               # src/builtin/export.c:97:17
	movq	(%rax), %rdi
	.loc	1 97 24                         # src/builtin/export.c:97:24
	movl	-32(%rbp), %esi
	.loc	1 97 3                          # src/builtin/export.c:97:3
	callq	print_export
	jmp	.LBB3_11
.LBB3_8:
.Ltmp33:
	.loc	1 98 19 is_stmt 1               # src/builtin/export.c:98:19
	cmpl	$1, -36(%rbp)
.Ltmp34:
	.loc	1 98 11 is_stmt 0               # src/builtin/export.c:98:11
	jle	.LBB3_10
# %bb.9:
.Ltmp35:
	.loc	1 100 30 is_stmt 1              # src/builtin/export.c:100:30
	movq	-8(%rbp), %rdi
	.loc	1 100 42 is_stmt 0              # src/builtin/export.c:100:42
	movq	-24(%rbp), %rax
	.loc	1 100 47                        # src/builtin/export.c:100:47
	movq	88(%rax), %rsi
	.loc	1 100 42                        # src/builtin/export.c:100:42
	addq	$8, %rsi
	.loc	1 100 13                        # src/builtin/export.c:100:13
	callq	parse_export_arg
	.loc	1 100 11                        # src/builtin/export.c:100:11
	movq	%rax, -48(%rbp)
	.loc	1 101 35 is_stmt 1              # src/builtin/export.c:101:35
	movq	-16(%rbp), %rsi
	.loc	1 101 3 is_stmt 0               # src/builtin/export.c:101:3
	leaq	-48(%rbp), %rdi
	callq	add_new_var_to_env
.Ltmp36:
.LBB3_10:
	.loc	1 0 3                           # src/builtin/export.c:0:3
	jmp	.LBB3_11
.LBB3_11:
	.loc	1 103 1 is_stmt 1               # src/builtin/export.c:103:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.Lfunc_end3:
	.size	export, .Lfunc_end3-export
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"declare -x "
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/builtin/../../include/minishell.h"
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
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
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xbbf DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	377                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	377                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	377                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x61:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	377                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	455                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x93:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	377                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xac:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xba:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string180                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	455                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string181                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	377                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	377                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xf2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string182                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	377                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x101:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x116:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	462                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x124:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	2996                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x132:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	3001                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x140:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string180                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	455                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x14e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	455                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x15c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string185                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	455                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x16a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string186                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	377                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x179:0x5 DW_TAG_pointer_type
	.long	382                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x17e:0xb DW_TAG_typedef
	.long	393                             # DW_AT_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x189:0x2d DW_TAG_structure_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x191:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x19d:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1a9:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	450                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1b6:0x5 DW_TAG_pointer_type
	.long	443                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1bb:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1c2:0x5 DW_TAG_pointer_type
	.long	393                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1c7:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1ce:0x5 DW_TAG_pointer_type
	.long	467                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1d3:0xb DW_TAG_typedef
	.long	478                             # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1de:0xbe DW_TAG_structure_type
	.long	.Linfo_string178                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1e7:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	668                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1f3:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ff:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x20b:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x217:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x223:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x22f:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x23b:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x247:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	377                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x253:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x25f:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	767                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x26b:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1539                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x277:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1653                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x283:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2492                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x28f:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x29c:0x5 DW_TAG_pointer_type
	.long	673                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2a1:0xb DW_TAG_typedef
	.long	684                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2ac:0x5 DW_TAG_structure_type
	.long	.Linfo_string19                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x2b1:0x5 DW_TAG_pointer_type
	.long	438                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b6:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x2bd:0x5 DW_TAG_pointer_type
	.long	706                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2c2:0xb DW_TAG_typedef
	.long	717                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2cd:0x2d DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2d5:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2e1:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2fa:0x5 DW_TAG_pointer_type
	.long	717                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2ff:0x5 DW_TAG_pointer_type
	.long	772                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x304:0xb DW_TAG_typedef
	.long	783                             # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x30f:0x2d DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x317:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x323:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1534                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x32f:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1534                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x33c:0x5 DW_TAG_pointer_type
	.long	833                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x341:0xb DW_TAG_typedef
	.long	844                             # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x34c:0x51 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x354:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x360:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x36c:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	925                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x378:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x384:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	930                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x390:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	930                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x39d:0x5 DW_TAG_pointer_type
	.long	455                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3a2:0x5 DW_TAG_pointer_type
	.long	935                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3a7:0xc9 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3af:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3bb:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c7:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d3:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3df:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3eb:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3f7:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	1136                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x403:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1190                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x40f:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1251                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x41b:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1324                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x427:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x433:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1402                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x43f:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1480                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x44b:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x457:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	930                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x463:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	930                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x470:0x5 DW_TAG_pointer_type
	.long	1141                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x475:0xb DW_TAG_typedef
	.long	1152                            # DW_AT_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x480:0x21 DW_TAG_structure_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x488:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x494:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1185                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4a1:0x5 DW_TAG_pointer_type
	.long	1152                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4a6:0x5 DW_TAG_pointer_type
	.long	1195                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4ab:0xb DW_TAG_typedef
	.long	1206                            # DW_AT_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4b6:0x2d DW_TAG_structure_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4be:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	925                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4ca:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	925                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d6:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	925                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4e3:0x5 DW_TAG_pointer_type
	.long	1256                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4e8:0xb DW_TAG_typedef
	.long	1267                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4f3:0x39 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4fb:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x507:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x513:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1324                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x51f:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1402                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x52c:0x5 DW_TAG_pointer_type
	.long	1329                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x531:0xb DW_TAG_typedef
	.long	1340                            # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x53c:0x39 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x544:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x550:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x55c:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x568:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1397                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x575:0x5 DW_TAG_pointer_type
	.long	1340                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x57a:0x5 DW_TAG_pointer_type
	.long	1407                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x57f:0xb DW_TAG_typedef
	.long	1418                            # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x58a:0x39 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x592:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x59e:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5aa:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5b6:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1475                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5c3:0x5 DW_TAG_pointer_type
	.long	1418                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5c8:0x5 DW_TAG_pointer_type
	.long	1485                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5cd:0xb DW_TAG_typedef
	.long	1496                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5d8:0x21 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5e0:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5ec:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1529                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5f9:0x5 DW_TAG_pointer_type
	.long	1496                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5fe:0x5 DW_TAG_pointer_type
	.long	783                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x603:0x5 DW_TAG_pointer_type
	.long	1544                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x608:0xb DW_TAG_typedef
	.long	1555                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x613:0x5d DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x61b:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x627:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x633:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x63f:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x64b:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1480                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x657:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1648                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x663:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1648                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x670:0x5 DW_TAG_pointer_type
	.long	1555                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x675:0x56 DW_TAG_structure_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x67d:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1673                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x689:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x68d:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1739                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x699:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1762                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6a6:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2439                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6b2:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6be:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2486                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6cb:0xb DW_TAG_typedef
	.long	1750                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x6d6:0x5 DW_TAG_pointer_type
	.long	1755                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6db:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x6dc:0x5 DW_TAG_formal_parameter
	.long	455                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6e2:0x5 DW_TAG_pointer_type
	.long	1767                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6e7:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x6e8:0x5 DW_TAG_formal_parameter
	.long	455                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6ed:0x5 DW_TAG_formal_parameter
	.long	1784                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6f2:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6f8:0x5 DW_TAG_pointer_type
	.long	1789                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6fd:0xb DW_TAG_typedef
	.long	1800                            # DW_AT_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x708:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x70c:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x718:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x724:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x730:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x73c:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1864                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x748:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x74c:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	2311                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x758:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1892                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x764:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x768:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	2330                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x774:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2341                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x781:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1933                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x78d:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x791:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x79d:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7a9:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2359                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7b6:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1986                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7c2:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7c6:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	2330                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7d2:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2341                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7de:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2359                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7eb:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2039                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7f7:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7fb:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	2330                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x807:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2341                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x813:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x81f:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2403                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x82b:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2403                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x838:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2116                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x844:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x848:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x854:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2421                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x860:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2156                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x86c:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x870:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2172                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x87c:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x880:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x88c:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x899:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2428                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8a7:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2227                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8b3:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8b7:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2414                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8c3:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8d0:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2268                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8dc:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8e0:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8ec:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8f8:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2352                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x907:0xc DW_TAG_array_type
	.long	455                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x90c:0x6 DW_TAG_subrange_type
	.long	2323                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x913:0x7 DW_TAG_base_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x91a:0xb DW_TAG_typedef
	.long	455                             # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x925:0xb DW_TAG_typedef
	.long	2352                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x930:0x7 DW_TAG_base_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x937:0xb DW_TAG_typedef
	.long	2370                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x942:0x21 DW_TAG_union_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x94a:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x956:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x963:0xb DW_TAG_typedef
	.long	2414                            # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x96e:0x7 DW_TAG_base_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x975:0x7 DW_TAG_base_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x97c:0xb DW_TAG_typedef
	.long	2352                            # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x987:0xb DW_TAG_typedef
	.long	2450                            # DW_AT_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x992:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x996:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2467                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x9a3:0xc DW_TAG_array_type
	.long	2479                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x9a8:0x6 DW_TAG_subrange_type
	.long	2323                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9af:0x7 DW_TAG_base_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9b6:0x5 DW_TAG_pointer_type
	.long	2491                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x9bb:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x9bc:0x5 DW_TAG_pointer_type
	.long	2497                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9c1:0xbd DW_TAG_structure_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9c9:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2686                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9d5:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2697                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9e1:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2708                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9ed:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2719                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9f9:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2341                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa05:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2730                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa11:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa1d:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2686                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa29:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2741                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa35:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2752                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa41:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2763                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa4d:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2774                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa59:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2774                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa65:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2774                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa71:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2829                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa7e:0xb DW_TAG_typedef
	.long	2479                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa89:0xb DW_TAG_typedef
	.long	2479                            # DW_AT_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa94:0xb DW_TAG_typedef
	.long	2479                            # DW_AT_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa9f:0xb DW_TAG_typedef
	.long	2352                            # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaaa:0xb DW_TAG_typedef
	.long	2352                            # DW_AT_type
	.long	.Linfo_string147                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xab5:0xb DW_TAG_typedef
	.long	2414                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xac0:0xb DW_TAG_typedef
	.long	2414                            # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xacb:0xb DW_TAG_typedef
	.long	2414                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xad6:0x21 DW_TAG_structure_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xade:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2807                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaea:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2818                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xaf7:0xb DW_TAG_typedef
	.long	2414                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb02:0xb DW_TAG_typedef
	.long	2414                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xb0d:0xc DW_TAG_array_type
	.long	2818                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb12:0x6 DW_TAG_subrange_type
	.long	2323                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb19:0x5 DW_TAG_pointer_type
	.long	2846                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb1e:0x69 DW_TAG_structure_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb26:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2951                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb32:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2951                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb3e:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2951                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb4a:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2951                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb56:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2962                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb62:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2973                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb6e:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2985                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb7a:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2985                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb87:0xb DW_TAG_typedef
	.long	2352                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb92:0xb DW_TAG_typedef
	.long	694                             # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xb9d:0xc DW_TAG_array_type
	.long	2962                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xba2:0x6 DW_TAG_subrange_type
	.long	2323                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xba9:0xb DW_TAG_typedef
	.long	2352                            # DW_AT_type
	.long	.Linfo_string175                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xbb4:0x5 DW_TAG_pointer_type
	.long	377                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xbb9:0x5 DW_TAG_pointer_type
	.long	3006                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xbbe:0xb DW_TAG_typedef
	.long	935                             # DW_AT_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/export.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=59
.Linfo_string3:
	.asciz	"get_last_env_variable"         # string offset=96
.Linfo_string4:
	.asciz	"name"                          # string offset=118
.Linfo_string5:
	.asciz	"char"                          # string offset=123
.Linfo_string6:
	.asciz	"value"                         # string offset=128
.Linfo_string7:
	.asciz	"next"                          # string offset=134
.Linfo_string8:
	.asciz	"s_env"                         # string offset=139
.Linfo_string9:
	.asciz	"t_env"                         # string offset=145
.Linfo_string10:
	.asciz	"print_export"                  # string offset=151
.Linfo_string11:
	.asciz	"parse_export_arg"              # string offset=164
.Linfo_string12:
	.asciz	"export"                        # string offset=181
.Linfo_string13:
	.asciz	"env"                           # string offset=188
.Linfo_string14:
	.asciz	"index"                         # string offset=192
.Linfo_string15:
	.asciz	"fd"                            # string offset=198
.Linfo_string16:
	.asciz	"int"                           # string offset=201
.Linfo_string17:
	.asciz	"minishell"                     # string offset=205
.Linfo_string18:
	.asciz	"dir"                           # string offset=215
.Linfo_string19:
	.asciz	"__dirstream"                   # string offset=219
.Linfo_string20:
	.asciz	"DIR"                           # string offset=231
.Linfo_string21:
	.asciz	"state"                         # string offset=235
.Linfo_string22:
	.asciz	"input"                         # string offset=241
.Linfo_string23:
	.asciz	"path"                          # string offset=247
.Linfo_string24:
	.asciz	"prompt"                        # string offset=252
.Linfo_string25:
	.asciz	"operator_nbr"                  # string offset=259
.Linfo_string26:
	.asciz	"exit_status"                   # string offset=272
.Linfo_string27:
	.asciz	"unsigned char"                 # string offset=284
.Linfo_string28:
	.asciz	"env_array"                     # string offset=298
.Linfo_string29:
	.asciz	"local"                         # string offset=308
.Linfo_string30:
	.asciz	"s_var"                         # string offset=314
.Linfo_string31:
	.asciz	"t_var"                         # string offset=320
.Linfo_string32:
	.asciz	"syntax_tree"                   # string offset=326
.Linfo_string33:
	.asciz	"node"                          # string offset=338
.Linfo_string34:
	.asciz	"id"                            # string offset=343
.Linfo_string35:
	.asciz	"type"                          # string offset=346
.Linfo_string36:
	.asciz	"pipe_fd"                       # string offset=351
.Linfo_string37:
	.asciz	"left"                          # string offset=359
.Linfo_string38:
	.asciz	"pid"                           # string offset=364
.Linfo_string39:
	.asciz	"wstatus"                       # string offset=368
.Linfo_string40:
	.asciz	"arg"                           # string offset=376
.Linfo_string41:
	.asciz	"s_arg"                         # string offset=380
.Linfo_string42:
	.asciz	"t_arg"                         # string offset=386
.Linfo_string43:
	.asciz	"pipe"                          # string offset=392
.Linfo_string44:
	.asciz	"to_close"                      # string offset=397
.Linfo_string45:
	.asciz	"write"                         # string offset=406
.Linfo_string46:
	.asciz	"read"                          # string offset=412
.Linfo_string47:
	.asciz	"s_pipe"                        # string offset=417
.Linfo_string48:
	.asciz	"t_pipe"                        # string offset=424
.Linfo_string49:
	.asciz	"redir"                         # string offset=431
.Linfo_string50:
	.asciz	"in_fd"                         # string offset=437
.Linfo_string51:
	.asciz	"out_fd"                        # string offset=443
.Linfo_string52:
	.asciz	"infile"                        # string offset=450
.Linfo_string53:
	.asciz	"s_infile"                      # string offset=457
.Linfo_string54:
	.asciz	"t_infile"                      # string offset=466
.Linfo_string55:
	.asciz	"outfile"                       # string offset=475
.Linfo_string56:
	.asciz	"s_outfile"                     # string offset=483
.Linfo_string57:
	.asciz	"t_outfile"                     # string offset=493
.Linfo_string58:
	.asciz	"s_redir"                       # string offset=503
.Linfo_string59:
	.asciz	"t_redir"                       # string offset=511
.Linfo_string60:
	.asciz	"assign"                        # string offset=519
.Linfo_string61:
	.asciz	"expansion"                     # string offset=526
.Linfo_string62:
	.asciz	"s_expan"                       # string offset=536
.Linfo_string63:
	.asciz	"t_expan"                       # string offset=544
.Linfo_string64:
	.asciz	"arg_array"                     # string offset=552
.Linfo_string65:
	.asciz	"prev"                          # string offset=562
.Linfo_string66:
	.asciz	"s_cmd"                         # string offset=567
.Linfo_string67:
	.asciz	"right"                         # string offset=573
.Linfo_string68:
	.asciz	"s_ast_node"                    # string offset=579
.Linfo_string69:
	.asciz	"t_ast_node"                    # string offset=590
.Linfo_string70:
	.asciz	"s_ast"                         # string offset=601
.Linfo_string71:
	.asciz	"t_ast"                         # string offset=607
.Linfo_string72:
	.asciz	"token_stream"                  # string offset=613
.Linfo_string73:
	.asciz	"quote_nbr"                     # string offset=626
.Linfo_string74:
	.asciz	"length"                        # string offset=636
.Linfo_string75:
	.asciz	"lexeme"                        # string offset=643
.Linfo_string76:
	.asciz	"s_token"                       # string offset=650
.Linfo_string77:
	.asciz	"t_token"                       # string offset=658
.Linfo_string78:
	.asciz	"sighandler"                    # string offset=666
.Linfo_string79:
	.asciz	"__sigaction_handler"           # string offset=677
.Linfo_string80:
	.asciz	"sa_handler"                    # string offset=697
.Linfo_string81:
	.asciz	"__sighandler_t"                # string offset=708
.Linfo_string82:
	.asciz	"sa_sigaction"                  # string offset=723
.Linfo_string83:
	.asciz	"si_signo"                      # string offset=736
.Linfo_string84:
	.asciz	"si_errno"                      # string offset=745
.Linfo_string85:
	.asciz	"si_code"                       # string offset=754
.Linfo_string86:
	.asciz	"__pad0"                        # string offset=762
.Linfo_string87:
	.asciz	"_sifields"                     # string offset=769
.Linfo_string88:
	.asciz	"_pad"                          # string offset=779
.Linfo_string89:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=784
.Linfo_string90:
	.asciz	"_kill"                         # string offset=804
.Linfo_string91:
	.asciz	"si_pid"                        # string offset=810
.Linfo_string92:
	.asciz	"__pid_t"                       # string offset=817
.Linfo_string93:
	.asciz	"si_uid"                        # string offset=825
.Linfo_string94:
	.asciz	"unsigned int"                  # string offset=832
.Linfo_string95:
	.asciz	"__uid_t"                       # string offset=845
.Linfo_string96:
	.asciz	"_timer"                        # string offset=853
.Linfo_string97:
	.asciz	"si_tid"                        # string offset=860
.Linfo_string98:
	.asciz	"si_overrun"                    # string offset=867
.Linfo_string99:
	.asciz	"si_sigval"                     # string offset=878
.Linfo_string100:
	.asciz	"sival_int"                     # string offset=888
.Linfo_string101:
	.asciz	"sival_ptr"                     # string offset=898
.Linfo_string102:
	.asciz	"sigval"                        # string offset=908
.Linfo_string103:
	.asciz	"__sigval_t"                    # string offset=915
.Linfo_string104:
	.asciz	"_rt"                           # string offset=926
.Linfo_string105:
	.asciz	"_sigchld"                      # string offset=930
.Linfo_string106:
	.asciz	"si_status"                     # string offset=939
.Linfo_string107:
	.asciz	"si_utime"                      # string offset=949
.Linfo_string108:
	.asciz	"long int"                      # string offset=958
.Linfo_string109:
	.asciz	"__clock_t"                     # string offset=967
.Linfo_string110:
	.asciz	"si_stime"                      # string offset=977
.Linfo_string111:
	.asciz	"_sigfault"                     # string offset=986
.Linfo_string112:
	.asciz	"si_addr"                       # string offset=996
.Linfo_string113:
	.asciz	"si_addr_lsb"                   # string offset=1004
.Linfo_string114:
	.asciz	"short"                         # string offset=1016
.Linfo_string115:
	.asciz	"_bounds"                       # string offset=1022
.Linfo_string116:
	.asciz	"_addr_bnd"                     # string offset=1030
.Linfo_string117:
	.asciz	"_lower"                        # string offset=1040
.Linfo_string118:
	.asciz	"_upper"                        # string offset=1047
.Linfo_string119:
	.asciz	"_pkey"                         # string offset=1054
.Linfo_string120:
	.asciz	"__uint32_t"                    # string offset=1060
.Linfo_string121:
	.asciz	"_sigpoll"                      # string offset=1071
.Linfo_string122:
	.asciz	"si_band"                       # string offset=1080
.Linfo_string123:
	.asciz	"si_fd"                         # string offset=1088
.Linfo_string124:
	.asciz	"_sigsys"                       # string offset=1094
.Linfo_string125:
	.asciz	"_call_addr"                    # string offset=1102
.Linfo_string126:
	.asciz	"_syscall"                      # string offset=1113
.Linfo_string127:
	.asciz	"_arch"                         # string offset=1122
.Linfo_string128:
	.asciz	"siginfo_t"                     # string offset=1128
.Linfo_string129:
	.asciz	"sa_mask"                       # string offset=1138
.Linfo_string130:
	.asciz	"__val"                         # string offset=1146
.Linfo_string131:
	.asciz	"long unsigned int"             # string offset=1152
.Linfo_string132:
	.asciz	"__sigset_t"                    # string offset=1170
.Linfo_string133:
	.asciz	"sa_flags"                      # string offset=1181
.Linfo_string134:
	.asciz	"sa_restorer"                   # string offset=1190
.Linfo_string135:
	.asciz	"sigaction"                     # string offset=1202
.Linfo_string136:
	.asciz	"statbuf"                       # string offset=1212
.Linfo_string137:
	.asciz	"st_dev"                        # string offset=1220
.Linfo_string138:
	.asciz	"__dev_t"                       # string offset=1227
.Linfo_string139:
	.asciz	"st_ino"                        # string offset=1235
.Linfo_string140:
	.asciz	"__ino_t"                       # string offset=1242
.Linfo_string141:
	.asciz	"st_nlink"                      # string offset=1250
.Linfo_string142:
	.asciz	"__nlink_t"                     # string offset=1259
.Linfo_string143:
	.asciz	"st_mode"                       # string offset=1269
.Linfo_string144:
	.asciz	"__mode_t"                      # string offset=1277
.Linfo_string145:
	.asciz	"st_uid"                        # string offset=1286
.Linfo_string146:
	.asciz	"st_gid"                        # string offset=1293
.Linfo_string147:
	.asciz	"__gid_t"                       # string offset=1300
.Linfo_string148:
	.asciz	"st_rdev"                       # string offset=1308
.Linfo_string149:
	.asciz	"st_size"                       # string offset=1316
.Linfo_string150:
	.asciz	"__off_t"                       # string offset=1324
.Linfo_string151:
	.asciz	"st_blksize"                    # string offset=1332
.Linfo_string152:
	.asciz	"__blksize_t"                   # string offset=1343
.Linfo_string153:
	.asciz	"st_blocks"                     # string offset=1355
.Linfo_string154:
	.asciz	"__blkcnt_t"                    # string offset=1365
.Linfo_string155:
	.asciz	"st_atim"                       # string offset=1376
.Linfo_string156:
	.asciz	"tv_sec"                        # string offset=1384
.Linfo_string157:
	.asciz	"__time_t"                      # string offset=1391
.Linfo_string158:
	.asciz	"tv_nsec"                       # string offset=1400
.Linfo_string159:
	.asciz	"__syscall_slong_t"             # string offset=1408
.Linfo_string160:
	.asciz	"timespec"                      # string offset=1426
.Linfo_string161:
	.asciz	"st_mtim"                       # string offset=1435
.Linfo_string162:
	.asciz	"st_ctim"                       # string offset=1443
.Linfo_string163:
	.asciz	"__glibc_reserved"              # string offset=1451
.Linfo_string164:
	.asciz	"stat"                          # string offset=1468
.Linfo_string165:
	.asciz	"term"                          # string offset=1473
.Linfo_string166:
	.asciz	"c_iflag"                       # string offset=1478
.Linfo_string167:
	.asciz	"tcflag_t"                      # string offset=1486
.Linfo_string168:
	.asciz	"c_oflag"                       # string offset=1495
.Linfo_string169:
	.asciz	"c_cflag"                       # string offset=1503
.Linfo_string170:
	.asciz	"c_lflag"                       # string offset=1511
.Linfo_string171:
	.asciz	"c_line"                        # string offset=1519
.Linfo_string172:
	.asciz	"cc_t"                          # string offset=1526
.Linfo_string173:
	.asciz	"c_cc"                          # string offset=1531
.Linfo_string174:
	.asciz	"c_ispeed"                      # string offset=1536
.Linfo_string175:
	.asciz	"speed_t"                       # string offset=1545
.Linfo_string176:
	.asciz	"c_ospeed"                      # string offset=1553
.Linfo_string177:
	.asciz	"termios"                       # string offset=1562
.Linfo_string178:
	.asciz	"s_minishell"                   # string offset=1570
.Linfo_string179:
	.asciz	"t_minishell"                   # string offset=1582
.Linfo_string180:
	.asciz	"i"                             # string offset=1594
.Linfo_string181:
	.asciz	"export_arg"                    # string offset=1596
.Linfo_string182:
	.asciz	"new"                           # string offset=1607
.Linfo_string183:
	.asciz	"cmd"                           # string offset=1611
.Linfo_string184:
	.asciz	"t_cmd"                         # string offset=1615
.Linfo_string185:
	.asciz	"arg_nbr"                       # string offset=1621
.Linfo_string186:
	.asciz	"new_var"                       # string offset=1629
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print_export
	.addrsig_sym write
	.addrsig_sym ft_strlen
	.addrsig_sym parse_export_arg
	.addrsig_sym __errno_location
	.addrsig_sym is_valid_variable
	.addrsig_sym error_export
	.addrsig_sym get_env_variable
	.addrsig_sym cmd_arg_nbr
	.addrsig_sym add_new_var_to_env
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.text
	.file	"command_expan_value.c"
	.globl	get_expansion_value             # -- Begin function get_expansion_value
	.p2align	4, 0x90
	.type	get_expansion_value,@function
get_expansion_value:                    # @get_expansion_value
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/command_expan_value.c"
	.loc	1 16 0                          # src/parsing/command_expan_value.c:16:0
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
.Ltmp0:
	.loc	1 19 8 prologue_end             # src/parsing/command_expan_value.c:19:8
	movq	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 2                          # src/parsing/command_expan_value.c:20:2
	cmpq	$0, -8(%rbp)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 22 18                         # src/parsing/command_expan_value.c:22:18
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 22 24 is_stmt 0               # src/parsing/command_expan_value.c:22:24
	movq	-8(%rbp), %rax
	.loc	1 22 29                         # src/parsing/command_expan_value.c:22:29
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	1 22 45                         # src/parsing/command_expan_value.c:22:45
	movq	-16(%rbp), %rdi
	.loc	1 22 35                         # src/parsing/command_expan_value.c:22:35
	callq	ft_strlen
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 22 7                          # src/parsing/command_expan_value.c:22:7
	callq	ft_strncmp
	.loc	1 22 52                         # src/parsing/command_expan_value.c:22:52
	cmpl	$0, %eax
.Ltmp2:
	.loc	1 22 7                          # src/parsing/command_expan_value.c:22:7
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp3:
	.loc	1 23 22 is_stmt 1               # src/parsing/command_expan_value.c:23:22
	movq	-8(%rbp), %rax
	.loc	1 23 27 is_stmt 0               # src/parsing/command_expan_value.c:23:27
	movq	8(%rax), %rdi
	.loc	1 23 12                         # src/parsing/command_expan_value.c:23:12
	callq	ft_strdup
	.loc	1 23 10                         # src/parsing/command_expan_value.c:23:10
	movq	%rax, -24(%rbp)
.Ltmp4:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 24 9 is_stmt 1                # src/parsing/command_expan_value.c:24:9
	movq	-8(%rbp), %rax
	.loc	1 24 14 is_stmt 0               # src/parsing/command_expan_value.c:24:14
	movq	16(%rax), %rax
	.loc	1 24 7                          # src/parsing/command_expan_value.c:24:7
	movq	%rax, -8(%rbp)
.Ltmp5:
	.loc	1 20 2 is_stmt 1                # src/parsing/command_expan_value.c:20:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 26 10                         # src/parsing/command_expan_value.c:26:10
	movq	-24(%rbp), %rax
	.loc	1 26 2 is_stmt 0                # src/parsing/command_expan_value.c:26:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	get_expansion_value, .Lfunc_end0-get_expansion_value
	.cfi_endproc
                                        # -- End function
	.globl	put_expansion_value             # -- Begin function put_expansion_value
	.p2align	4, 0x90
	.type	put_expansion_value,@function
put_expansion_value:                    # @put_expansion_value
.Lfunc_begin1:
	.loc	1 30 0 is_stmt 1                # src/parsing/command_expan_value.c:30:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp7:
	.loc	1 33 4 prologue_end             # src/parsing/command_expan_value.c:33:4
	movl	$0, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 34 9                          # src/parsing/command_expan_value.c:34:9
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	.loc	1 34 2 is_stmt 0                # src/parsing/command_expan_value.c:34:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	1 36 27 is_stmt 1               # src/parsing/command_expan_value.c:36:27
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 36 5 is_stmt 0                # src/parsing/command_expan_value.c:36:5
	movq	-8(%rbp), %rax
	.loc	1 36 4                          # src/parsing/command_expan_value.c:36:4
	movq	(%rax), %rax
	.loc	1 36 3                          # src/parsing/command_expan_value.c:36:3
	movslq	-20(%rbp), %rcx
	.loc	1 36 25                         # src/parsing/command_expan_value.c:36:25
	movb	%dl, (%rax,%rcx)
	.loc	1 37 4 is_stmt 1                # src/parsing/command_expan_value.c:37:4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 38 4                          # src/parsing/command_expan_value.c:38:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp9:
	.loc	1 34 2                          # src/parsing/command_expan_value.c:34:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 40 10                         # src/parsing/command_expan_value.c:40:10
	movl	-20(%rbp), %eax
	.loc	1 40 2 is_stmt 0                # src/parsing/command_expan_value.c:40:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end1:
	.size	put_expansion_value, .Lfunc_end1-put_expansion_value
	.cfi_endproc
                                        # -- End function
	.globl	replace_expansion_name_by_value # -- Begin function replace_expansion_name_by_value
	.p2align	4, 0x90
	.type	replace_expansion_name_by_value,@function
replace_expansion_name_by_value:        # @replace_expansion_name_by_value
.Lfunc_begin2:
	.loc	1 45 0 is_stmt 1                # src/parsing/command_expan_value.c:45:0
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.Ltmp11:
	.loc	1 49 4 prologue_end             # src/parsing/command_expan_value.c:49:4
	movq	$0, -48(%rbp)
	.loc	1 50 4                          # src/parsing/command_expan_value.c:50:4
	movl	$0, -36(%rbp)
	.loc	1 51 17                         # src/parsing/command_expan_value.c:51:17
	movq	-8(%rbp), %rsi
	.loc	1 51 2 is_stmt 0                # src/parsing/command_expan_value.c:51:2
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 52 9 is_stmt 1                # src/parsing/command_expan_value.c:52:9
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	1 52 2 is_stmt 0                # src/parsing/command_expan_value.c:52:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp12:
	.loc	1 54 25 is_stmt 1               # src/parsing/command_expan_value.c:54:25
	movq	-8(%rbp), %rdi
	.loc	1 54 33 is_stmt 0               # src/parsing/command_expan_value.c:54:33
	movq	-32(%rbp), %rsi
	.loc	1 54 39                         # src/parsing/command_expan_value.c:54:39
	movl	-36(%rbp), %edx
	.loc	1 54 7                          # src/parsing/command_expan_value.c:54:7
	callq	is_expansion_name
.Ltmp13:
	.loc	1 54 7                          # src/parsing/command_expan_value.c:54:7
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:
.Ltmp14:
	.loc	1 56 31 is_stmt 1               # src/parsing/command_expan_value.c:56:31
	movq	-16(%rbp), %rdi
	.loc	1 56 49 is_stmt 0               # src/parsing/command_expan_value.c:56:49
	movq	-24(%rbp), %rsi
	.loc	1 56 56                         # src/parsing/command_expan_value.c:56:56
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	.loc	1 56 8                          # src/parsing/command_expan_value.c:56:8
	callq	put_expansion_value
	cltq
	.loc	1 56 6                          # src/parsing/command_expan_value.c:56:6
	movq	%rax, -48(%rbp)
	.loc	1 57 21 is_stmt 1               # src/parsing/command_expan_value.c:57:21
	movq	-16(%rbp), %rax
	.loc	1 57 20 is_stmt 0               # src/parsing/command_expan_value.c:57:20
	movq	(%rax), %rsi
	.loc	1 57 4                          # src/parsing/command_expan_value.c:57:4
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 58 4 is_stmt 1                # src/parsing/command_expan_value.c:58:4
	jmp	.LBB2_5
.Ltmp15:
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 60 27                         # src/parsing/command_expan_value.c:60:27
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 60 5 is_stmt 0                # src/parsing/command_expan_value.c:60:5
	movq	-16(%rbp), %rax
	.loc	1 60 4                          # src/parsing/command_expan_value.c:60:4
	movq	(%rax), %rax
	.loc	1 60 22                         # src/parsing/command_expan_value.c:60:22
	movq	-48(%rbp), %rcx
	.loc	1 60 25                         # src/parsing/command_expan_value.c:60:25
	movb	%dl, (%rax,%rcx)
	.loc	1 61 4 is_stmt 1                # src/parsing/command_expan_value.c:61:4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	.loc	1 62 4                          # src/parsing/command_expan_value.c:62:4
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.Ltmp16:
	.loc	1 52 2                          # src/parsing/command_expan_value.c:52:2
	jmp	.LBB2_1
.LBB2_5:
	.loc	1 65 2                          # src/parsing/command_expan_value.c:65:2
	jmp	.LBB2_6
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	.loc	1 65 9 is_stmt 0                # src/parsing/command_expan_value.c:65:9
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -49(%rbp)                  # 1-byte Spill
	.loc	1 65 19                         # src/parsing/command_expan_value.c:65:19
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	.loc	1 65 38                         # src/parsing/command_expan_value.c:65:38
	movq	-32(%rbp), %rdi
	.loc	1 65 23                         # src/parsing/command_expan_value.c:65:23
	callq	is_exit_status
	.loc	1 65 22                         # src/parsing/command_expan_value.c:65:22
	xorb	$-1, %al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB2_8:                                #   in Loop: Header=BB2_6 Depth=1
	.loc	1 0 22                          # src/parsing/command_expan_value.c:0:22
	movb	-49(%rbp), %al                  # 1-byte Reload
	.loc	1 65 2                          # src/parsing/command_expan_value.c:65:2
	testb	$1, %al
	jne	.LBB2_9
	jmp	.LBB2_10
.LBB2_9:                                #   in Loop: Header=BB2_6 Depth=1
.Ltmp17:
	.loc	1 67 27 is_stmt 1               # src/parsing/command_expan_value.c:67:27
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 67 5 is_stmt 0                # src/parsing/command_expan_value.c:67:5
	movq	-16(%rbp), %rax
	.loc	1 67 4                          # src/parsing/command_expan_value.c:67:4
	movq	(%rax), %rax
	.loc	1 67 22                         # src/parsing/command_expan_value.c:67:22
	movq	-48(%rbp), %rcx
	.loc	1 67 25                         # src/parsing/command_expan_value.c:67:25
	movb	%dl, (%rax,%rcx)
	.loc	1 68 4 is_stmt 1                # src/parsing/command_expan_value.c:68:4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	.loc	1 69 4                          # src/parsing/command_expan_value.c:69:4
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.Ltmp18:
	.loc	1 65 2                          # src/parsing/command_expan_value.c:65:2
	jmp	.LBB2_6
.LBB2_10:
	.loc	1 71 4                          # src/parsing/command_expan_value.c:71:4
	movq	-16(%rbp), %rax
	.loc	1 71 3 is_stmt 0                # src/parsing/command_expan_value.c:71:3
	movq	(%rax), %rax
	.loc	1 71 21                         # src/parsing/command_expan_value.c:71:21
	movq	-48(%rbp), %rcx
	.loc	1 71 24                         # src/parsing/command_expan_value.c:71:24
	movb	$0, (%rax,%rcx)
	.loc	1 72 19 is_stmt 1               # src/parsing/command_expan_value.c:72:19
	movq	-16(%rbp), %rax
	.loc	1 72 18 is_stmt 0               # src/parsing/command_expan_value.c:72:18
	movq	(%rax), %rsi
	.loc	1 72 2                          # src/parsing/command_expan_value.c:72:2
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 73 1 is_stmt 1                # src/parsing/command_expan_value.c:73:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp19:
.Lfunc_end2:
	.size	replace_expansion_name_by_value, .Lfunc_end2-replace_expansion_name_by_value
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/../../include/minishell.h"
	.file	3 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	298                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	317                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x51:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6e:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	310                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x87:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	383                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x95:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xa3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb1:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xc0:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xd5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xe3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	383                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xf1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xff:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x10d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x11b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	388                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x12f:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x136:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x13d:0x5 DW_TAG_pointer_type
	.long	322                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x142:0xb DW_TAG_typedef
	.long	333                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x14d:0x2d DW_TAG_structure_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x155:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	298                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x161:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	298                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x16d:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	378                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x17a:0x5 DW_TAG_pointer_type
	.long	333                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x17f:0x5 DW_TAG_pointer_type
	.long	298                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x184:0xb DW_TAG_typedef
	.long	399                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x18f:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_expan_value.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=72
.Linfo_string3:
	.asciz	"get_expansion_value"           # string offset=109
.Linfo_string4:
	.asciz	"char"                          # string offset=129
.Linfo_string5:
	.asciz	"put_expansion_value"           # string offset=134
.Linfo_string6:
	.asciz	"int"                           # string offset=154
.Linfo_string7:
	.asciz	"replace_expansion_name_by_value" # string offset=158
.Linfo_string8:
	.asciz	"env"                           # string offset=190
.Linfo_string9:
	.asciz	"name"                          # string offset=194
.Linfo_string10:
	.asciz	"value"                         # string offset=199
.Linfo_string11:
	.asciz	"next"                          # string offset=205
.Linfo_string12:
	.asciz	"s_env"                         # string offset=210
.Linfo_string13:
	.asciz	"t_env"                         # string offset=216
.Linfo_string14:
	.asciz	"lexeme_expanded"               # string offset=222
.Linfo_string15:
	.asciz	"i"                             # string offset=238
.Linfo_string16:
	.asciz	"j"                             # string offset=240
.Linfo_string17:
	.asciz	"lexeme"                        # string offset=242
.Linfo_string18:
	.asciz	"long unsigned int"             # string offset=249
.Linfo_string19:
	.asciz	"size_t"                        # string offset=267
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strlen
	.addrsig_sym ft_strdup
	.addrsig_sym put_expansion_value
	.addrsig_sym printf
	.addrsig_sym is_expansion_name
	.addrsig_sym is_exit_status
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.text
	.file	"dir_path.c"
	.globl	is_in_home_dir                  # -- Begin function is_in_home_dir
	.p2align	4, 0x90
	.type	is_in_home_dir,@function
is_in_home_dir:                         # @is_in_home_dir
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/prompt/dir_path.c"
	.loc	1 16 0                          # src/prompt/dir_path.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp0:
	.loc	1 17 17 prologue_end            # src/prompt/dir_path.c:17:17
	movq	-16(%rbp), %rdi
	.loc	1 17 6 is_stmt 0                # src/prompt/dir_path.c:17:6
	movabsq	$.L.str, %rsi
	movl	$6, %edx
	callq	ft_strncmp
	.loc	1 17 35                         # src/prompt/dir_path.c:17:35
	cmpl	$0, %eax
.Ltmp1:
	.loc	1 17 6                          # src/prompt/dir_path.c:17:6
	jne	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	1 19 4 is_stmt 1                # src/prompt/dir_path.c:19:4
	movq	-24(%rbp), %rax
	.loc	1 19 16 is_stmt 0               # src/prompt/dir_path.c:19:16
	movl	$6, (%rax)
	.loc	1 20 3 is_stmt 1                # src/prompt/dir_path.c:20:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_6
.Ltmp3:
.LBB0_2:
	.loc	1 22 22                         # src/prompt/dir_path.c:22:22
	movq	-16(%rbp), %rdi
	.loc	1 22 11 is_stmt 0               # src/prompt/dir_path.c:22:11
	movabsq	$.L.str.1, %rsi
	movl	$7, %edx
	callq	ft_strncmp
	.loc	1 22 41                         # src/prompt/dir_path.c:22:41
	cmpl	$0, %eax
.Ltmp4:
	.loc	1 22 11                         # src/prompt/dir_path.c:22:11
	jne	.LBB0_4
# %bb.3:
.Ltmp5:
	.loc	1 24 4 is_stmt 1                # src/prompt/dir_path.c:24:4
	movq	-24(%rbp), %rax
	.loc	1 24 16 is_stmt 0               # src/prompt/dir_path.c:24:16
	movl	$7, (%rax)
	.loc	1 25 3 is_stmt 1                # src/prompt/dir_path.c:25:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_6
.Ltmp6:
.LBB0_4:
	.loc	1 0 3 is_stmt 0                 # src/prompt/dir_path.c:0:3
	jmp	.LBB0_5
.LBB0_5:
	.loc	1 27 2 is_stmt 1                # src/prompt/dir_path.c:27:2
	movb	$0, -1(%rbp)
.LBB0_6:
	.loc	1 28 1                          # src/prompt/dir_path.c:28:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	is_in_home_dir, .Lfunc_end0-is_in_home_dir
	.cfi_endproc
                                        # -- End function
	.globl	set_dir_path_color              # -- Begin function set_dir_path_color
	.p2align	4, 0x90
	.type	set_dir_path_color,@function
set_dir_path_color:                     # @set_dir_path_color
.Lfunc_begin1:
	.loc	1 31 0                          # src/prompt/dir_path.c:31:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp8:
	.loc	1 35 31 prologue_end            # src/prompt/dir_path.c:35:31
	movq	-8(%rbp), %rsi
	.loc	1 35 8 is_stmt 0                # src/prompt/dir_path.c:35:8
	movabsq	$.L.str.2, %rdi
	callq	ft_strjoin
	.loc	1 35 6                          # src/prompt/dir_path.c:35:6
	movq	%rax, -16(%rbp)
	.loc	1 36 34 is_stmt 1               # src/prompt/dir_path.c:36:34
	movq	-16(%rbp), %rdi
	.loc	1 36 23 is_stmt 0               # src/prompt/dir_path.c:36:23
	movabsq	$.L.str.3, %rsi
	callq	ft_strjoin
	.loc	1 36 21                         # src/prompt/dir_path.c:36:21
	movq	%rax, -24(%rbp)
	.loc	1 37 7 is_stmt 1                # src/prompt/dir_path.c:37:7
	movq	-16(%rbp), %rdi
	.loc	1 37 2 is_stmt 0                # src/prompt/dir_path.c:37:2
	callq	free
	.loc	1 38 7 is_stmt 1                # src/prompt/dir_path.c:38:7
	movq	-8(%rbp), %rdi
	.loc	1 38 2 is_stmt 0                # src/prompt/dir_path.c:38:2
	callq	free
	.loc	1 39 10 is_stmt 1               # src/prompt/dir_path.c:39:10
	movq	-24(%rbp), %rax
	.loc	1 39 2 is_stmt 0                # src/prompt/dir_path.c:39:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end1:
	.size	set_dir_path_color, .Lfunc_end1-set_dir_path_color
	.cfi_endproc
                                        # -- End function
	.globl	get_dir_path_from_home          # -- Begin function get_dir_path_from_home
	.p2align	4, 0x90
	.type	get_dir_path_from_home,@function
get_dir_path_from_home:                 # @get_dir_path_from_home
.Lfunc_begin2:
	.loc	1 43 0 is_stmt 1                # src/prompt/dir_path.c:43:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp10:
	.loc	1 48 4 prologue_end             # src/prompt/dir_path.c:48:4
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 49 9                          # src/prompt/dir_path.c:49:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	1 49 16 is_stmt 0               # src/prompt/dir_path.c:49:16
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 49 19                         # src/prompt/dir_path.c:49:19
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 49 26                         # src/prompt/dir_path.c:49:26
	cmpl	$47, %eax
	setne	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 26                          # src/prompt/dir_path.c:0:26
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	1 49 2                          # src/prompt/dir_path.c:49:2
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 50 4 is_stmt 1                # src/prompt/dir_path.c:50:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 49 2                          # src/prompt/dir_path.c:49:2
	jmp	.LBB2_1
.LBB2_5:
	.loc	1 51 3                          # src/prompt/dir_path.c:51:3
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 52 31                         # src/prompt/dir_path.c:52:31
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 52 20 is_stmt 0               # src/prompt/dir_path.c:52:20
	callq	ft_strlen
	movq	%rax, %rdi
	.loc	1 52 39                         # src/prompt/dir_path.c:52:39
	addq	$1, %rdi
	.loc	1 52 13                         # src/prompt/dir_path.c:52:13
	callq	malloc
	.loc	1 52 11                         # src/prompt/dir_path.c:52:11
	movq	%rax, -24(%rbp)
	.loc	1 53 4 is_stmt 1                # src/prompt/dir_path.c:53:4
	movl	$0, -16(%rbp)
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	.loc	1 54 9                          # src/prompt/dir_path.c:54:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 54 2 is_stmt 0                # src/prompt/dir_path.c:54:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
.Ltmp11:
	.loc	1 56 17 is_stmt 1               # src/prompt/dir_path.c:56:17
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 56 3 is_stmt 0                # src/prompt/dir_path.c:56:3
	movq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	.loc	1 56 15                         # src/prompt/dir_path.c:56:15
	movb	%dl, (%rax,%rcx)
	.loc	1 57 4 is_stmt 1                # src/prompt/dir_path.c:57:4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	1 58 4                          # src/prompt/dir_path.c:58:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp12:
	.loc	1 54 2                          # src/prompt/dir_path.c:54:2
	jmp	.LBB2_6
.LBB2_8:
	.loc	1 60 2                          # src/prompt/dir_path.c:60:2
	movq	-24(%rbp), %rax
	.loc	1 60 14 is_stmt 0               # src/prompt/dir_path.c:60:14
	movb	$126, (%rax)
	.loc	1 61 2 is_stmt 1                # src/prompt/dir_path.c:61:2
	movq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	.loc	1 61 14 is_stmt 0               # src/prompt/dir_path.c:61:14
	movb	$0, (%rax,%rcx)
	.loc	1 62 10 is_stmt 1               # src/prompt/dir_path.c:62:10
	movq	-24(%rbp), %rax
	.loc	1 62 2 is_stmt 0                # src/prompt/dir_path.c:62:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end2:
	.size	get_dir_path_from_home, .Lfunc_end2-get_dir_path_from_home
	.cfi_endproc
                                        # -- End function
	.globl	get_dir_path                    # -- Begin function get_dir_path
	.p2align	4, 0x90
	.type	get_dir_path,@function
get_dir_path:                           # @get_dir_path
.Lfunc_begin3:
	.loc	1 66 0 is_stmt 1                # src/prompt/dir_path.c:66:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
.Ltmp14:
	.loc	1 72 4 prologue_end             # src/prompt/dir_path.c:72:4
	movl	$0, -12(%rbp)
	.loc	1 73 14                         # src/prompt/dir_path.c:73:14
	movl	$0, -28(%rbp)
	.loc	1 74 11                         # src/prompt/dir_path.c:74:11
	movq	$0, -40(%rbp)
	.loc	1 75 8                          # src/prompt/dir_path.c:75:8
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4096, %esi                     # imm = 0x1000
	callq	getcwd
	.loc	1 75 6 is_stmt 0                # src/prompt/dir_path.c:75:6
	movq	%rax, -24(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 76 9 is_stmt 1                # src/prompt/dir_path.c:76:9
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 76 2 is_stmt 0                # src/prompt/dir_path.c:76:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB3_5
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp15:
	.loc	1 78 23 is_stmt 1               # src/prompt/dir_path.c:78:23
	movq	-24(%rbp), %rdi
	movslq	-12(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 78 7 is_stmt 0                # src/prompt/dir_path.c:78:7
	leaq	-28(%rbp), %rsi
	callq	is_in_home_dir
.Ltmp16:
	.loc	1 78 7                          # src/prompt/dir_path.c:78:7
	testb	$1, %al
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_3:
.Ltmp17:
	.loc	1 80 9 is_stmt 1                # src/prompt/dir_path.c:80:9
	movl	-28(%rbp), %eax
	.loc	1 80 6 is_stmt 0                # src/prompt/dir_path.c:80:6
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc	1 81 39 is_stmt 1               # src/prompt/dir_path.c:81:39
	movq	-24(%rbp), %rdi
	movslq	-12(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 81 15 is_stmt 0               # src/prompt/dir_path.c:81:15
	callq	get_dir_path_from_home
	.loc	1 81 13                         # src/prompt/dir_path.c:81:13
	movq	%rax, -40(%rbp)
	.loc	1 82 34 is_stmt 1               # src/prompt/dir_path.c:82:34
	movq	-40(%rbp), %rdi
	.loc	1 82 15 is_stmt 0               # src/prompt/dir_path.c:82:15
	callq	set_dir_path_color
	.loc	1 82 13                         # src/prompt/dir_path.c:82:13
	movq	%rax, -40(%rbp)
	.loc	1 83 17 is_stmt 1               # src/prompt/dir_path.c:83:17
	movq	-24(%rbp), %rdi
	.loc	1 83 12 is_stmt 0               # src/prompt/dir_path.c:83:12
	callq	free
	.loc	1 83 23                         # src/prompt/dir_path.c:83:23
	movq	-40(%rbp), %rax
	.loc	1 83 4                          # src/prompt/dir_path.c:83:4
	movq	%rax, -8(%rbp)
	jmp	.LBB3_6
.Ltmp18:
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 85 4 is_stmt 1                # src/prompt/dir_path.c:85:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp19:
	.loc	1 76 2                          # src/prompt/dir_path.c:76:2
	jmp	.LBB3_1
.LBB3_5:
	.loc	1 87 27                         # src/prompt/dir_path.c:87:27
	movq	-24(%rbp), %rdi
	.loc	1 87 8 is_stmt 0                # src/prompt/dir_path.c:87:8
	callq	set_dir_path_color
	.loc	1 87 6                          # src/prompt/dir_path.c:87:6
	movq	%rax, -24(%rbp)
	.loc	1 88 10 is_stmt 1               # src/prompt/dir_path.c:88:10
	movq	-24(%rbp), %rax
	.loc	1 88 2 is_stmt 0                # src/prompt/dir_path.c:88:2
	movq	%rax, -8(%rbp)
.LBB3_6:
	.loc	1 89 1 is_stmt 1                # src/prompt/dir_path.c:89:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp20:
.Lfunc_end3:
	.size	get_dir_path, .Lfunc_end3-get_dir_path
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/home/"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/homes/"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\001\033[1m\002\001\033[37m\002"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\001\033[0m\002"
	.size	.L.str.3, 7

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
	.byte	6                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x15d DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	328                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x51:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	347                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x60:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x79:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x87:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x95:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xa4:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xbd:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xcb:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	352                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd9:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	352                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe7:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xf6:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x10f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	352                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x11d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x12b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	352                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x139:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x148:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x14f:0x5 DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x154:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x15b:0x5 DW_TAG_pointer_type
	.long	352                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x160:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/prompt/dir_path.c"         # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=60
.Linfo_string3:
	.asciz	"is_in_home_dir"                # string offset=118
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=133
.Linfo_string5:
	.asciz	"set_dir_path_color"            # string offset=139
.Linfo_string6:
	.asciz	"char"                          # string offset=158
.Linfo_string7:
	.asciz	"get_dir_path_from_home"        # string offset=163
.Linfo_string8:
	.asciz	"get_dir_path"                  # string offset=186
.Linfo_string9:
	.asciz	"cwd"                           # string offset=199
.Linfo_string10:
	.asciz	"home_length"                   # string offset=203
.Linfo_string11:
	.asciz	"int"                           # string offset=215
.Linfo_string12:
	.asciz	"dir_path"                      # string offset=219
.Linfo_string13:
	.asciz	"tmp"                           # string offset=228
.Linfo_string14:
	.asciz	"dir_path_colorized"            # string offset=232
.Linfo_string15:
	.asciz	"i"                             # string offset=251
.Linfo_string16:
	.asciz	"j"                             # string offset=253
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_in_home_dir
	.addrsig_sym ft_strncmp
	.addrsig_sym set_dir_path_color
	.addrsig_sym ft_strjoin
	.addrsig_sym free
	.addrsig_sym get_dir_path_from_home
	.addrsig_sym malloc
	.addrsig_sym ft_strlen
	.addrsig_sym getcwd
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.text
	.file	"pwd.c"
	.globl	get_oldpwd_attr                 # -- Begin function get_oldpwd_attr
	.p2align	4, 0x90
	.type	get_oldpwd_attr,@function
get_oldpwd_attr:                        # @get_oldpwd_attr
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/builtin/pwd.c"
	.loc	1 28 0                          # src/builtin/pwd.c:28:0
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
.Ltmp0:
	.loc	1 29 9 prologue_end             # src/builtin/pwd.c:29:9
	movq	-8(%rbp), %rax
	.loc	1 29 8 is_stmt 0                # src/builtin/pwd.c:29:8
	movq	(%rax), %rax
	.loc	1 29 7                          # src/builtin/pwd.c:29:7
	cmpq	$0, (%rax)
.Ltmp1:
	.loc	1 29 6                          # src/builtin/pwd.c:29:6
	jne	.LBB0_4
# %bb.1:
.Ltmp2:
	.loc	1 31 21 is_stmt 1               # src/builtin/pwd.c:31:21
	movl	$7, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	1 31 5 is_stmt 0                # src/builtin/pwd.c:31:5
	movq	-8(%rbp), %rax
	.loc	1 31 4                          # src/builtin/pwd.c:31:4
	movq	(%rax), %rax
	.loc	1 31 19                         # src/builtin/pwd.c:31:19
	movq	%rcx, (%rax)
.Ltmp3:
	.loc	1 32 10 is_stmt 1               # src/builtin/pwd.c:32:10
	movq	-8(%rbp), %rax
	.loc	1 32 9 is_stmt 0                # src/builtin/pwd.c:32:9
	movq	(%rax), %rax
	.loc	1 32 8                          # src/builtin/pwd.c:32:8
	cmpq	$0, (%rax)
.Ltmp4:
	.loc	1 32 7                          # src/builtin/pwd.c:32:7
	jne	.LBB0_3
# %bb.2:
.Ltmp5:
	.loc	1 34 4 is_stmt 1                # src/builtin/pwd.c:34:4
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 35 4                          # src/builtin/pwd.c:35:4
	jmp	.LBB0_7
.Ltmp6:
.LBB0_3:
	.loc	1 37 16                         # src/builtin/pwd.c:37:16
	movq	-8(%rbp), %rax
	.loc	1 37 15 is_stmt 0               # src/builtin/pwd.c:37:15
	movq	(%rax), %rax
	.loc	1 37 25                         # src/builtin/pwd.c:37:25
	movq	(%rax), %rdi
	.loc	1 37 3                          # src/builtin/pwd.c:37:3
	movabsq	$.L.str.1, %rsi
	movl	$7, %edx
	callq	ft_strlcpy
.Ltmp7:
.LBB0_4:
	.loc	1 39 8 is_stmt 1                # src/builtin/pwd.c:39:8
	movq	-8(%rbp), %rax
	.loc	1 39 7 is_stmt 0                # src/builtin/pwd.c:39:7
	movq	(%rax), %rax
	.loc	1 39 6                          # src/builtin/pwd.c:39:6
	cmpq	$0, 8(%rax)
.Ltmp8:
	.loc	1 39 6                          # src/builtin/pwd.c:39:6
	je	.LBB0_6
# %bb.5:
.Ltmp9:
	.loc	1 40 10 is_stmt 1               # src/builtin/pwd.c:40:10
	movq	-8(%rbp), %rax
	.loc	1 40 9 is_stmt 0                # src/builtin/pwd.c:40:9
	movq	(%rax), %rax
	.loc	1 40 19                         # src/builtin/pwd.c:40:19
	movq	8(%rax), %rdi
	.loc	1 40 3                          # src/builtin/pwd.c:40:3
	callq	free
.Ltmp10:
.LBB0_6:
	.loc	1 41 23 is_stmt 1               # src/builtin/pwd.c:41:23
	movq	-16(%rbp), %rax
	.loc	1 41 22 is_stmt 0               # src/builtin/pwd.c:41:22
	movq	(%rax), %rax
	.loc	1 41 29                         # src/builtin/pwd.c:41:29
	movq	8(%rax), %rcx
	.loc	1 41 4                          # src/builtin/pwd.c:41:4
	movq	-8(%rbp), %rax
	.loc	1 41 3                          # src/builtin/pwd.c:41:3
	movq	(%rax), %rax
	.loc	1 41 19                         # src/builtin/pwd.c:41:19
	movq	%rcx, 8(%rax)
.LBB0_7:
	.loc	1 42 1 is_stmt 1                # src/builtin/pwd.c:42:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end0:
	.size	get_oldpwd_attr, .Lfunc_end0-get_oldpwd_attr
	.cfi_endproc
                                        # -- End function
	.globl	get_oldpwd                      # -- Begin function get_oldpwd
	.p2align	4, 0x90
	.type	get_oldpwd,@function
get_oldpwd:                             # @get_oldpwd
.Lfunc_begin1:
	.loc	1 45 0                          # src/builtin/pwd.c:45:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp12:
	.loc	1 49 9 prologue_end             # src/builtin/pwd.c:49:9
	movq	$0, -32(%rbp)
	.loc	1 50 12                         # src/builtin/pwd.c:50:12
	movq	-16(%rbp), %rax
	.loc	1 50 11 is_stmt 0               # src/builtin/pwd.c:50:11
	movq	(%rax), %rax
	.loc	1 50 8                          # src/builtin/pwd.c:50:8
	movq	%rax, -40(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 51 2 is_stmt 1                # src/builtin/pwd.c:51:2
	cmpq	$0, -40(%rbp)
	je	.LBB1_5
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp13:
	.loc	1 53 18                         # src/builtin/pwd.c:53:18
	movq	-40(%rbp), %rax
	.loc	1 53 25 is_stmt 0               # src/builtin/pwd.c:53:25
	movq	(%rax), %rdi
	.loc	1 53 7                          # src/builtin/pwd.c:53:7
	movabsq	$.L.str.1, %rsi
	movl	$6, %edx
	callq	ft_strncmp
	.loc	1 53 44                         # src/builtin/pwd.c:53:44
	cmpl	$0, %eax
.Ltmp14:
	.loc	1 53 7                          # src/builtin/pwd.c:53:7
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp15:
	.loc	1 54 13 is_stmt 1               # src/builtin/pwd.c:54:13
	movq	-40(%rbp), %rax
	.loc	1 54 11 is_stmt 0               # src/builtin/pwd.c:54:11
	movq	%rax, -32(%rbp)
.Ltmp16:
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 55 11 is_stmt 1               # src/builtin/pwd.c:55:11
	movq	-40(%rbp), %rax
	.loc	1 55 18 is_stmt 0               # src/builtin/pwd.c:55:18
	movq	16(%rax), %rax
	.loc	1 55 9                          # src/builtin/pwd.c:55:9
	movq	%rax, -40(%rbp)
.Ltmp17:
	.loc	1 51 2 is_stmt 1                # src/builtin/pwd.c:51:2
	jmp	.LBB1_1
.LBB1_5:
.Ltmp18:
	.loc	1 57 7                          # src/builtin/pwd.c:57:7
	cmpq	$0, -32(%rbp)
.Ltmp19:
	.loc	1 57 6 is_stmt 0                # src/builtin/pwd.c:57:6
	jne	.LBB1_9
# %bb.6:
.Ltmp20:
	.loc	1 59 12 is_stmt 1               # src/builtin/pwd.c:59:12
	movl	$24, %edi
	callq	malloc
	.loc	1 59 10 is_stmt 0               # src/builtin/pwd.c:59:10
	movq	%rax, -32(%rbp)
.Ltmp21:
	.loc	1 60 8 is_stmt 1                # src/builtin/pwd.c:60:8
	cmpq	$0, -32(%rbp)
.Ltmp22:
	.loc	1 60 7 is_stmt 0                # src/builtin/pwd.c:60:7
	jne	.LBB1_8
# %bb.7:
.Ltmp23:
	.loc	1 61 12 is_stmt 1               # src/builtin/pwd.c:61:12
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 61 4 is_stmt 0                # src/builtin/pwd.c:61:4
	movq	$0, -8(%rbp)
	jmp	.LBB1_10
.Ltmp24:
.LBB1_8:
	.loc	1 62 3 is_stmt 1                # src/builtin/pwd.c:62:3
	leaq	-32(%rbp), %rdi
	callq	init_env_var_attr
.Ltmp25:
.LBB1_9:
	.loc	1 64 2                          # src/builtin/pwd.c:64:2
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	get_oldpwd_attr
	.loc	1 65 10                         # src/builtin/pwd.c:65:10
	movq	-32(%rbp), %rax
	.loc	1 65 2 is_stmt 0                # src/builtin/pwd.c:65:2
	movq	%rax, -8(%rbp)
.LBB1_10:
	.loc	1 66 1 is_stmt 1                # src/builtin/pwd.c:66:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end1:
	.size	get_oldpwd, .Lfunc_end1-get_oldpwd
	.cfi_endproc
                                        # -- End function
	.globl	get_env_pwd                     # -- Begin function get_env_pwd
	.p2align	4, 0x90
	.type	get_env_pwd,@function
get_env_pwd:                            # @get_env_pwd
.Lfunc_begin2:
	.loc	1 69 0                          # src/builtin/pwd.c:69:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp27:
	.loc	1 72 12 prologue_end            # src/builtin/pwd.c:72:12
	movq	-16(%rbp), %rax
	.loc	1 72 11 is_stmt 0               # src/builtin/pwd.c:72:11
	movq	(%rax), %rax
	.loc	1 72 8                          # src/builtin/pwd.c:72:8
	movq	%rax, -24(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 73 9 is_stmt 1                # src/builtin/pwd.c:73:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	1 73 15 is_stmt 0               # src/builtin/pwd.c:73:15
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 73 18                         # src/builtin/pwd.c:73:18
	callq	__errno_location
	.loc	1 73 24                         # src/builtin/pwd.c:73:24
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 24                          # src/builtin/pwd.c:0:24
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	1 73 2                          # src/builtin/pwd.c:73:2
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_7
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp28:
	.loc	1 75 18 is_stmt 1               # src/builtin/pwd.c:75:18
	movq	-24(%rbp), %rax
	.loc	1 75 25 is_stmt 0               # src/builtin/pwd.c:75:25
	movq	(%rax), %rdi
	.loc	1 75 7                          # src/builtin/pwd.c:75:7
	movabsq	$.L.str.2, %rsi
	movl	$3, %edx
	callq	ft_strncmp
	.loc	1 75 41                         # src/builtin/pwd.c:75:41
	cmpl	$0, %eax
.Ltmp29:
	.loc	1 75 7                          # src/builtin/pwd.c:75:7
	jne	.LBB2_6
# %bb.5:
.Ltmp30:
	.loc	1 76 12 is_stmt 1               # src/builtin/pwd.c:76:12
	movq	-24(%rbp), %rax
	.loc	1 76 4 is_stmt 0                # src/builtin/pwd.c:76:4
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.Ltmp31:
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 77 11 is_stmt 1               # src/builtin/pwd.c:77:11
	movq	-24(%rbp), %rax
	.loc	1 77 18 is_stmt 0               # src/builtin/pwd.c:77:18
	movq	16(%rax), %rax
	.loc	1 77 9                          # src/builtin/pwd.c:77:9
	movq	%rax, -24(%rbp)
.Ltmp32:
	.loc	1 73 2 is_stmt 1                # src/builtin/pwd.c:73:2
	jmp	.LBB2_1
.LBB2_7:
	.loc	1 79 2                          # src/builtin/pwd.c:79:2
	movq	$0, -8(%rbp)
.LBB2_8:
	.loc	1 80 1                          # src/builtin/pwd.c:80:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp33:
.Lfunc_end2:
	.size	get_env_pwd, .Lfunc_end2-get_env_pwd
	.cfi_endproc
                                        # -- End function
	.globl	write_current_directory         # -- Begin function write_current_directory
	.p2align	4, 0x90
	.type	write_current_directory,@function
write_current_directory:                # @write_current_directory
.Lfunc_begin3:
	.loc	1 83 0                          # src/builtin/pwd.c:83:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp34:
	.loc	1 86 18 prologue_end            # src/builtin/pwd.c:86:18
	movq	-16(%rbp), %rdi
	.loc	1 86 8 is_stmt 0                # src/builtin/pwd.c:86:8
	callq	ft_strlen
	.loc	1 86 6                          # src/builtin/pwd.c:86:6
	movq	%rax, -24(%rbp)
	.loc	1 87 8 is_stmt 1                # src/builtin/pwd.c:87:8
	movl	-4(%rbp), %edi
	.loc	1 87 12 is_stmt 0               # src/builtin/pwd.c:87:12
	movq	-16(%rbp), %rsi
	.loc	1 87 17                         # src/builtin/pwd.c:87:17
	movq	-24(%rbp), %rdx
	.loc	1 87 2                          # src/builtin/pwd.c:87:2
	callq	write
	.loc	1 88 8 is_stmt 1                # src/builtin/pwd.c:88:8
	movl	-4(%rbp), %edi
	.loc	1 88 2 is_stmt 0                # src/builtin/pwd.c:88:2
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 89 1 is_stmt 1                # src/builtin/pwd.c:89:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.Lfunc_end3:
	.size	write_current_directory, .Lfunc_end3-write_current_directory
	.cfi_endproc
                                        # -- End function
	.globl	update_environment_state        # -- Begin function update_environment_state
	.p2align	4, 0x90
	.type	update_environment_state,@function
update_environment_state:               # @update_environment_state
.Lfunc_begin4:
	.loc	1 92 0                          # src/builtin/pwd.c:92:0
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
	movl	%edx, -20(%rbp)
.Ltmp36:
	.loc	1 99 5 prologue_end             # src/builtin/pwd.c:99:5
	movl	$1, -24(%rbp)
	.loc	1 100 8                         # src/builtin/pwd.c:100:8
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4096, %esi                     # imm = 0x1000
	callq	getcwd
	.loc	1 100 6 is_stmt 0               # src/builtin/pwd.c:100:6
	movq	%rax, -32(%rbp)
	.loc	1 101 21 is_stmt 1              # src/builtin/pwd.c:101:21
	movq	-8(%rbp), %rdi
	.loc	1 101 32 is_stmt 0              # src/builtin/pwd.c:101:32
	addq	$56, %rdi
	.loc	1 101 8                         # src/builtin/pwd.c:101:8
	callq	get_env_pwd
	.loc	1 101 6                         # src/builtin/pwd.c:101:6
	movq	%rax, -40(%rbp)
.Ltmp37:
	.loc	1 102 6 is_stmt 1               # src/builtin/pwd.c:102:6
	cmpq	$0, -40(%rbp)
.Ltmp38:
	.loc	1 102 6 is_stmt 0               # src/builtin/pwd.c:102:6
	je	.LBB4_5
# %bb.1:
.Ltmp39:
	.loc	1 104 24 is_stmt 1              # src/builtin/pwd.c:104:24
	movq	-8(%rbp), %rdi
	.loc	1 104 35 is_stmt 0              # src/builtin/pwd.c:104:35
	addq	$56, %rdi
	.loc	1 104 40                        # src/builtin/pwd.c:104:40
	movq	-40(%rbp), %rsi
	.loc	1 104 12                        # src/builtin/pwd.c:104:12
	callq	get_oldpwd
	.loc	1 104 10                        # src/builtin/pwd.c:104:10
	movq	%rax, -48(%rbp)
.Ltmp40:
	.loc	1 105 18 is_stmt 1              # src/builtin/pwd.c:105:18
	movq	-40(%rbp), %rax
	.loc	1 105 23 is_stmt 0              # src/builtin/pwd.c:105:23
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	.loc	1 105 29                        # src/builtin/pwd.c:105:29
	movq	-48(%rbp), %rax
	.loc	1 105 37                        # src/builtin/pwd.c:105:37
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 105 53                        # src/builtin/pwd.c:105:53
	movq	-40(%rbp), %rax
	.loc	1 105 58                        # src/builtin/pwd.c:105:58
	movq	(%rax), %rdi
	.loc	1 105 43                        # src/builtin/pwd.c:105:43
	callq	ft_strlen
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 105 7                         # src/builtin/pwd.c:105:7
	callq	ft_strncmp
	.loc	1 105 65                        # src/builtin/pwd.c:105:65
	cmpl	$0, %eax
.Ltmp41:
	.loc	1 105 7                         # src/builtin/pwd.c:105:7
	jne	.LBB4_3
# %bb.2:
.Ltmp42:
	.loc	1 106 9 is_stmt 1               # src/builtin/pwd.c:106:9
	movq	-32(%rbp), %rdi
	.loc	1 106 4 is_stmt 0               # src/builtin/pwd.c:106:4
	callq	free
	jmp	.LBB4_4
.LBB4_3:
	.loc	1 108 17 is_stmt 1              # src/builtin/pwd.c:108:17
	movq	-32(%rbp), %rcx
	.loc	1 108 4 is_stmt 0               # src/builtin/pwd.c:108:4
	movq	-40(%rbp), %rax
	.loc	1 108 15                        # src/builtin/pwd.c:108:15
	movq	%rcx, 8(%rax)
.Ltmp43:
.LBB4_4:
	.loc	1 109 2 is_stmt 1               # src/builtin/pwd.c:109:2
	jmp	.LBB4_5
.Ltmp44:
.LBB4_5:
	.loc	1 110 6                         # src/builtin/pwd.c:110:6
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	.loc	1 110 16 is_stmt 0              # src/builtin/pwd.c:110:16
	je	.LBB4_8
# %bb.6:
	.loc	1 110 19                        # src/builtin/pwd.c:110:19
	movq	-16(%rbp), %rax
	.loc	1 110 24                        # src/builtin/pwd.c:110:24
	movq	40(%rax), %rax
	.loc	1 110 19                        # src/builtin/pwd.c:110:19
	cmpq	$0, 8(%rax)
.Ltmp45:
	.loc	1 110 6                         # src/builtin/pwd.c:110:6
	je	.LBB4_8
# %bb.7:
.Ltmp46:
	.loc	1 111 8 is_stmt 1               # src/builtin/pwd.c:111:8
	movq	-16(%rbp), %rax
	.loc	1 111 13 is_stmt 0              # src/builtin/pwd.c:111:13
	movq	40(%rax), %rax
	.loc	1 111 19                        # src/builtin/pwd.c:111:19
	movq	8(%rax), %rax
	.loc	1 111 8                         # src/builtin/pwd.c:111:8
	movl	4(%rax), %eax
	.loc	1 111 6                         # src/builtin/pwd.c:111:6
	movl	%eax, -24(%rbp)
.Ltmp47:
.LBB4_8:
	.loc	1 112 8 is_stmt 1               # src/builtin/pwd.c:112:8
	cmpl	$0, -20(%rbp)
.Ltmp48:
	.loc	1 112 6 is_stmt 0               # src/builtin/pwd.c:112:6
	jne	.LBB4_10
# %bb.9:
.Ltmp49:
	.loc	1 113 27 is_stmt 1              # src/builtin/pwd.c:113:27
	movl	-24(%rbp), %edi
	.loc	1 113 31 is_stmt 0              # src/builtin/pwd.c:113:31
	movq	-32(%rbp), %rsi
	.loc	1 113 3                         # src/builtin/pwd.c:113:3
	callq	write_current_directory
.Ltmp50:
.LBB4_10:
	.loc	1 114 1 is_stmt 1               # src/builtin/pwd.c:114:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp51:
.Lfunc_end4:
	.size	update_environment_state, .Lfunc_end4-update_environment_state
	.cfi_endproc
                                        # -- End function
	.globl	pwd                             # -- Begin function pwd
	.p2align	4, 0x90
	.type	pwd,@function
pwd:                                    # @pwd
.Lfunc_begin5:
	.loc	1 117 0                         # src/builtin/pwd.c:117:0
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
.Ltmp52:
	.loc	1 118 27 prologue_end           # src/builtin/pwd.c:118:27
	movq	-8(%rbp), %rdi
	.loc	1 118 38 is_stmt 0              # src/builtin/pwd.c:118:38
	movq	-16(%rbp), %rsi
	.loc	1 118 2                         # src/builtin/pwd.c:118:2
	xorl	%edx, %edx
	callq	update_environment_state
	.loc	1 119 1 is_stmt 1               # src/builtin/pwd.c:119:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp53:
.Lfunc_end5:
	.size	pwd, .Lfunc_end5-pwd
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"OLDPWD"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"PWD"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/builtin/../../include/minishell.h"
	.file	3 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
	.file	4 "/usr/include" "dirent.h"
	.file	5 "/usr/include" "signal.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "sigaction.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits/types" "siginfo_t.h"
	.file	8 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "__sigval_t.h"
	.file	10 "/usr/include/x86_64-linux-gnu/bits/types" "__sigset_t.h"
	.file	11 "/usr/include/x86_64-linux-gnu/bits" "struct_stat.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timespec.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits" "termios.h"
	.file	14 "/usr/include/x86_64-linux-gnu/bits" "termios-struct.h"
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc2a DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x40:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x5d:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	463                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	463                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x92:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	463                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xa0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	463                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xaf:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	463                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xc8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xd6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	463                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe5:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xfa:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	546                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x108:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	553                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x116:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	563                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x125:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x13a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	581                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x148:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string186                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	3108                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x156:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string188                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	546                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x164:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	546                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x172:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x180:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	463                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x18e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	463                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x19d:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x1b2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	581                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1c0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string186                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	3108                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1cf:0x5 DW_TAG_pointer_type
	.long	468                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1d4:0xb DW_TAG_typedef
	.long	479                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1df:0x2d DW_TAG_structure_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1e7:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1f3:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ff:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x20c:0x5 DW_TAG_pointer_type
	.long	529                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x211:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x218:0x5 DW_TAG_pointer_type
	.long	479                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x21d:0x5 DW_TAG_pointer_type
	.long	463                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x222:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x229:0x5 DW_TAG_pointer_type
	.long	558                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x22e:0x5 DW_TAG_const_type
	.long	529                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x233:0xb DW_TAG_typedef
	.long	574                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x23e:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x245:0x5 DW_TAG_pointer_type
	.long	586                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x24a:0xb DW_TAG_typedef
	.long	597                             # DW_AT_type
	.long	.Linfo_string185                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x255:0xbe DW_TAG_structure_type
	.long	.Linfo_string184                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x25e:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	787                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x26a:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x276:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x282:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	808                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x28e:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x29a:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2a6:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b2:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	808                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2be:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ca:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	813                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2d6:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	879                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2e2:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1651                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ee:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1765                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2fa:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2597                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x306:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2946                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x313:0x5 DW_TAG_pointer_type
	.long	792                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x318:0xb DW_TAG_typedef
	.long	803                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x323:0x5 DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x328:0x5 DW_TAG_pointer_type
	.long	524                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x32d:0x5 DW_TAG_pointer_type
	.long	818                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x332:0xb DW_TAG_typedef
	.long	829                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x33d:0x2d DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x345:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x351:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x35d:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	874                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x36a:0x5 DW_TAG_pointer_type
	.long	829                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x36f:0x5 DW_TAG_pointer_type
	.long	884                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x374:0xb DW_TAG_typedef
	.long	895                             # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x37f:0x2d DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x387:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	940                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x393:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1646                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x39f:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1646                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3ac:0x5 DW_TAG_pointer_type
	.long	945                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3b1:0xb DW_TAG_typedef
	.long	956                             # DW_AT_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3bc:0x51 DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3c4:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d0:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3dc:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3e8:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3f4:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1042                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x400:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1042                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x40d:0x5 DW_TAG_pointer_type
	.long	546                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x412:0x5 DW_TAG_pointer_type
	.long	1047                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x417:0xc9 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x41f:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x42b:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x437:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x443:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x44f:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x45b:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x467:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	1248                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x473:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1302                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x47f:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1363                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x48b:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1436                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x497:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	813                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a3:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1514                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4af:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1592                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4bb:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	808                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4c7:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1042                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d3:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1042                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4e0:0x5 DW_TAG_pointer_type
	.long	1253                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4e5:0xb DW_TAG_typedef
	.long	1264                            # DW_AT_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4f0:0x21 DW_TAG_structure_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4f8:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x504:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1297                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x511:0x5 DW_TAG_pointer_type
	.long	1264                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x516:0x5 DW_TAG_pointer_type
	.long	1307                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x51b:0xb DW_TAG_typedef
	.long	1318                            # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x526:0x2d DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x52e:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x53a:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x546:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1037                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x553:0x5 DW_TAG_pointer_type
	.long	1368                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x558:0xb DW_TAG_typedef
	.long	1379                            # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x563:0x39 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x56b:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x577:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x583:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1436                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x58f:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1514                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x59c:0x5 DW_TAG_pointer_type
	.long	1441                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5a1:0xb DW_TAG_typedef
	.long	1452                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5ac:0x39 DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5b4:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5c0:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5cc:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5d8:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1509                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5e5:0x5 DW_TAG_pointer_type
	.long	1452                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5ea:0x5 DW_TAG_pointer_type
	.long	1519                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5ef:0xb DW_TAG_typedef
	.long	1530                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5fa:0x39 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x602:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x60e:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x61a:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x626:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1587                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x633:0x5 DW_TAG_pointer_type
	.long	1530                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x638:0x5 DW_TAG_pointer_type
	.long	1597                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x63d:0xb DW_TAG_typedef
	.long	1608                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x648:0x21 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x650:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x65c:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1641                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x669:0x5 DW_TAG_pointer_type
	.long	1608                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x66e:0x5 DW_TAG_pointer_type
	.long	895                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x673:0x5 DW_TAG_pointer_type
	.long	1656                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x678:0xb DW_TAG_typedef
	.long	1667                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x683:0x5d DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x68b:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x697:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6a3:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6af:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6bb:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1592                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6c7:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1760                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6d3:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1760                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6e0:0x5 DW_TAG_pointer_type
	.long	1667                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6e5:0x56 DW_TAG_structure_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6ed:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1785                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x6f9:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6fd:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1851                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x709:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1874                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x716:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2551                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x722:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x72e:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2591                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x73b:0xb DW_TAG_typedef
	.long	1862                            # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x746:0x5 DW_TAG_pointer_type
	.long	1867                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x74b:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x74c:0x5 DW_TAG_formal_parameter
	.long	546                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x752:0x5 DW_TAG_pointer_type
	.long	1879                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x757:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x758:0x5 DW_TAG_formal_parameter
	.long	546                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x75d:0x5 DW_TAG_formal_parameter
	.long	1896                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x762:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x768:0x5 DW_TAG_pointer_type
	.long	1901                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x76d:0xb DW_TAG_typedef
	.long	1912                            # DW_AT_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x778:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x77c:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x788:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x794:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7a0:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7ac:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	1976                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7b8:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7bc:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2423                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7c8:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2004                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7d4:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7d8:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2442                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7e4:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2453                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7f1:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2045                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7fd:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x801:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x80d:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x819:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2471                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x826:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2098                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x832:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x836:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2442                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x842:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2453                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x84e:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2471                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x85b:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2151                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x867:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x86b:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2442                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x877:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2453                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x883:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x88f:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2515                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x89b:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2515                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8a8:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2228                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8b4:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8b8:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8c4:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8d0:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2268                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x8dc:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8e0:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2284                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8ec:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8f0:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8fc:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x909:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2540                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x917:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2339                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x923:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x927:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2526                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x933:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x940:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2380                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x94c:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x950:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x95c:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x968:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2464                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x977:0xc DW_TAG_array_type
	.long	546                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x97c:0x6 DW_TAG_subrange_type
	.long	2435                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x983:0x7 DW_TAG_base_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x98a:0xb DW_TAG_typedef
	.long	546                             # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x995:0xb DW_TAG_typedef
	.long	2464                            # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9a0:0x7 DW_TAG_base_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x9a7:0xb DW_TAG_typedef
	.long	2482                            # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x9b2:0x21 DW_TAG_union_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9ba:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9c6:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x9d3:0xb DW_TAG_typedef
	.long	2526                            # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9de:0x7 DW_TAG_base_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x9e5:0x7 DW_TAG_base_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x9ec:0xb DW_TAG_typedef
	.long	2464                            # DW_AT_type
	.long	.Linfo_string126                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9f7:0xb DW_TAG_typedef
	.long	2562                            # DW_AT_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xa02:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa06:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2579                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xa13:0xc DW_TAG_array_type
	.long	574                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xa18:0x6 DW_TAG_subrange_type
	.long	2435                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa1f:0x5 DW_TAG_pointer_type
	.long	2596                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xa24:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0xa25:0x5 DW_TAG_pointer_type
	.long	2602                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa2a:0xbd DW_TAG_structure_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa32:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2791                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa3e:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2802                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa4a:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2813                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa56:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2824                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa62:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2453                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa6e:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2835                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa7a:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa86:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2791                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa92:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2846                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa9e:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2857                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaaa:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2868                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xab6:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2879                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xac2:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2879                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xace:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2879                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xada:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2934                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xae7:0xb DW_TAG_typedef
	.long	574                             # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaf2:0xb DW_TAG_typedef
	.long	574                             # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xafd:0xb DW_TAG_typedef
	.long	574                             # DW_AT_type
	.long	.Linfo_string147                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb08:0xb DW_TAG_typedef
	.long	2464                            # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb13:0xb DW_TAG_typedef
	.long	2464                            # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb1e:0xb DW_TAG_typedef
	.long	2526                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb29:0xb DW_TAG_typedef
	.long	2526                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb34:0xb DW_TAG_typedef
	.long	2526                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb3f:0x21 DW_TAG_structure_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb47:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2912                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb53:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2923                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb60:0xb DW_TAG_typedef
	.long	2526                            # DW_AT_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb6b:0xb DW_TAG_typedef
	.long	2526                            # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xb76:0xc DW_TAG_array_type
	.long	2923                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xb7b:0x6 DW_TAG_subrange_type
	.long	2435                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb82:0x5 DW_TAG_pointer_type
	.long	2951                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb87:0x69 DW_TAG_structure_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	14                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb8f:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	3056                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb9b:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	3056                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xba7:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	3056                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xbb3:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3056                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xbbf:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3067                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xbcb:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	3085                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xbd7:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3097                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xbe3:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	3097                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xbf0:0xb DW_TAG_typedef
	.long	2464                            # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xbfb:0xb DW_TAG_typedef
	.long	3078                            # DW_AT_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc06:0x7 DW_TAG_base_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xc0d:0xc DW_TAG_array_type
	.long	3067                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc12:0x6 DW_TAG_subrange_type
	.long	2435                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc19:0xb DW_TAG_typedef
	.long	2464                            # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xc24:0x5 DW_TAG_pointer_type
	.long	3113                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc29:0xb DW_TAG_typedef
	.long	1047                            # DW_AT_type
	.long	.Linfo_string187                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/pwd.c"             # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=56
.Linfo_string3:
	.asciz	"get_oldpwd_attr"               # string offset=114
.Linfo_string4:
	.asciz	"get_oldpwd"                    # string offset=130
.Linfo_string5:
	.asciz	"name"                          # string offset=141
.Linfo_string6:
	.asciz	"char"                          # string offset=146
.Linfo_string7:
	.asciz	"value"                         # string offset=151
.Linfo_string8:
	.asciz	"next"                          # string offset=157
.Linfo_string9:
	.asciz	"s_env"                         # string offset=162
.Linfo_string10:
	.asciz	"t_env"                         # string offset=168
.Linfo_string11:
	.asciz	"get_env_pwd"                   # string offset=174
.Linfo_string12:
	.asciz	"write_current_directory"       # string offset=186
.Linfo_string13:
	.asciz	"update_environment_state"      # string offset=210
.Linfo_string14:
	.asciz	"pwd"                           # string offset=235
.Linfo_string15:
	.asciz	"oldpwd"                        # string offset=239
.Linfo_string16:
	.asciz	"env"                           # string offset=246
.Linfo_string17:
	.asciz	"index"                         # string offset=250
.Linfo_string18:
	.asciz	"fd"                            # string offset=256
.Linfo_string19:
	.asciz	"int"                           # string offset=259
.Linfo_string20:
	.asciz	"cwd"                           # string offset=263
.Linfo_string21:
	.asciz	"len"                           # string offset=267
.Linfo_string22:
	.asciz	"long unsigned int"             # string offset=271
.Linfo_string23:
	.asciz	"size_t"                        # string offset=289
.Linfo_string24:
	.asciz	"minishell"                     # string offset=296
.Linfo_string25:
	.asciz	"dir"                           # string offset=306
.Linfo_string26:
	.asciz	"__dirstream"                   # string offset=310
.Linfo_string27:
	.asciz	"DIR"                           # string offset=322
.Linfo_string28:
	.asciz	"state"                         # string offset=326
.Linfo_string29:
	.asciz	"input"                         # string offset=332
.Linfo_string30:
	.asciz	"path"                          # string offset=338
.Linfo_string31:
	.asciz	"prompt"                        # string offset=343
.Linfo_string32:
	.asciz	"operator_nbr"                  # string offset=350
.Linfo_string33:
	.asciz	"exit_status"                   # string offset=363
.Linfo_string34:
	.asciz	"env_array"                     # string offset=375
.Linfo_string35:
	.asciz	"local"                         # string offset=385
.Linfo_string36:
	.asciz	"s_var"                         # string offset=391
.Linfo_string37:
	.asciz	"t_var"                         # string offset=397
.Linfo_string38:
	.asciz	"syntax_tree"                   # string offset=403
.Linfo_string39:
	.asciz	"node"                          # string offset=415
.Linfo_string40:
	.asciz	"id"                            # string offset=420
.Linfo_string41:
	.asciz	"type"                          # string offset=423
.Linfo_string42:
	.asciz	"pipe_fd"                       # string offset=428
.Linfo_string43:
	.asciz	"left"                          # string offset=436
.Linfo_string44:
	.asciz	"pid"                           # string offset=441
.Linfo_string45:
	.asciz	"wstatus"                       # string offset=445
.Linfo_string46:
	.asciz	"arg"                           # string offset=453
.Linfo_string47:
	.asciz	"s_arg"                         # string offset=457
.Linfo_string48:
	.asciz	"t_arg"                         # string offset=463
.Linfo_string49:
	.asciz	"pipe"                          # string offset=469
.Linfo_string50:
	.asciz	"to_close"                      # string offset=474
.Linfo_string51:
	.asciz	"write"                         # string offset=483
.Linfo_string52:
	.asciz	"read"                          # string offset=489
.Linfo_string53:
	.asciz	"s_pipe"                        # string offset=494
.Linfo_string54:
	.asciz	"t_pipe"                        # string offset=501
.Linfo_string55:
	.asciz	"redir"                         # string offset=508
.Linfo_string56:
	.asciz	"in_fd"                         # string offset=514
.Linfo_string57:
	.asciz	"out_fd"                        # string offset=520
.Linfo_string58:
	.asciz	"infile"                        # string offset=527
.Linfo_string59:
	.asciz	"s_infile"                      # string offset=534
.Linfo_string60:
	.asciz	"t_infile"                      # string offset=543
.Linfo_string61:
	.asciz	"outfile"                       # string offset=552
.Linfo_string62:
	.asciz	"s_outfile"                     # string offset=560
.Linfo_string63:
	.asciz	"t_outfile"                     # string offset=570
.Linfo_string64:
	.asciz	"s_redir"                       # string offset=580
.Linfo_string65:
	.asciz	"t_redir"                       # string offset=588
.Linfo_string66:
	.asciz	"assign"                        # string offset=596
.Linfo_string67:
	.asciz	"expansion"                     # string offset=603
.Linfo_string68:
	.asciz	"s_expan"                       # string offset=613
.Linfo_string69:
	.asciz	"t_expan"                       # string offset=621
.Linfo_string70:
	.asciz	"arg_array"                     # string offset=629
.Linfo_string71:
	.asciz	"prev"                          # string offset=639
.Linfo_string72:
	.asciz	"s_cmd"                         # string offset=644
.Linfo_string73:
	.asciz	"right"                         # string offset=650
.Linfo_string74:
	.asciz	"s_ast_node"                    # string offset=656
.Linfo_string75:
	.asciz	"t_ast_node"                    # string offset=667
.Linfo_string76:
	.asciz	"s_ast"                         # string offset=678
.Linfo_string77:
	.asciz	"t_ast"                         # string offset=684
.Linfo_string78:
	.asciz	"token_stream"                  # string offset=690
.Linfo_string79:
	.asciz	"quote_nbr"                     # string offset=703
.Linfo_string80:
	.asciz	"length"                        # string offset=713
.Linfo_string81:
	.asciz	"lexeme"                        # string offset=720
.Linfo_string82:
	.asciz	"s_token"                       # string offset=727
.Linfo_string83:
	.asciz	"t_token"                       # string offset=735
.Linfo_string84:
	.asciz	"sighandler"                    # string offset=743
.Linfo_string85:
	.asciz	"__sigaction_handler"           # string offset=754
.Linfo_string86:
	.asciz	"sa_handler"                    # string offset=774
.Linfo_string87:
	.asciz	"__sighandler_t"                # string offset=785
.Linfo_string88:
	.asciz	"sa_sigaction"                  # string offset=800
.Linfo_string89:
	.asciz	"si_signo"                      # string offset=813
.Linfo_string90:
	.asciz	"si_errno"                      # string offset=822
.Linfo_string91:
	.asciz	"si_code"                       # string offset=831
.Linfo_string92:
	.asciz	"__pad0"                        # string offset=839
.Linfo_string93:
	.asciz	"_sifields"                     # string offset=846
.Linfo_string94:
	.asciz	"_pad"                          # string offset=856
.Linfo_string95:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=861
.Linfo_string96:
	.asciz	"_kill"                         # string offset=881
.Linfo_string97:
	.asciz	"si_pid"                        # string offset=887
.Linfo_string98:
	.asciz	"__pid_t"                       # string offset=894
.Linfo_string99:
	.asciz	"si_uid"                        # string offset=902
.Linfo_string100:
	.asciz	"unsigned int"                  # string offset=909
.Linfo_string101:
	.asciz	"__uid_t"                       # string offset=922
.Linfo_string102:
	.asciz	"_timer"                        # string offset=930
.Linfo_string103:
	.asciz	"si_tid"                        # string offset=937
.Linfo_string104:
	.asciz	"si_overrun"                    # string offset=944
.Linfo_string105:
	.asciz	"si_sigval"                     # string offset=955
.Linfo_string106:
	.asciz	"sival_int"                     # string offset=965
.Linfo_string107:
	.asciz	"sival_ptr"                     # string offset=975
.Linfo_string108:
	.asciz	"sigval"                        # string offset=985
.Linfo_string109:
	.asciz	"__sigval_t"                    # string offset=992
.Linfo_string110:
	.asciz	"_rt"                           # string offset=1003
.Linfo_string111:
	.asciz	"_sigchld"                      # string offset=1007
.Linfo_string112:
	.asciz	"si_status"                     # string offset=1016
.Linfo_string113:
	.asciz	"si_utime"                      # string offset=1026
.Linfo_string114:
	.asciz	"long int"                      # string offset=1035
.Linfo_string115:
	.asciz	"__clock_t"                     # string offset=1044
.Linfo_string116:
	.asciz	"si_stime"                      # string offset=1054
.Linfo_string117:
	.asciz	"_sigfault"                     # string offset=1063
.Linfo_string118:
	.asciz	"si_addr"                       # string offset=1073
.Linfo_string119:
	.asciz	"si_addr_lsb"                   # string offset=1081
.Linfo_string120:
	.asciz	"short"                         # string offset=1093
.Linfo_string121:
	.asciz	"_bounds"                       # string offset=1099
.Linfo_string122:
	.asciz	"_addr_bnd"                     # string offset=1107
.Linfo_string123:
	.asciz	"_lower"                        # string offset=1117
.Linfo_string124:
	.asciz	"_upper"                        # string offset=1124
.Linfo_string125:
	.asciz	"_pkey"                         # string offset=1131
.Linfo_string126:
	.asciz	"__uint32_t"                    # string offset=1137
.Linfo_string127:
	.asciz	"_sigpoll"                      # string offset=1148
.Linfo_string128:
	.asciz	"si_band"                       # string offset=1157
.Linfo_string129:
	.asciz	"si_fd"                         # string offset=1165
.Linfo_string130:
	.asciz	"_sigsys"                       # string offset=1171
.Linfo_string131:
	.asciz	"_call_addr"                    # string offset=1179
.Linfo_string132:
	.asciz	"_syscall"                      # string offset=1190
.Linfo_string133:
	.asciz	"_arch"                         # string offset=1199
.Linfo_string134:
	.asciz	"siginfo_t"                     # string offset=1205
.Linfo_string135:
	.asciz	"sa_mask"                       # string offset=1215
.Linfo_string136:
	.asciz	"__val"                         # string offset=1223
.Linfo_string137:
	.asciz	"__sigset_t"                    # string offset=1229
.Linfo_string138:
	.asciz	"sa_flags"                      # string offset=1240
.Linfo_string139:
	.asciz	"sa_restorer"                   # string offset=1249
.Linfo_string140:
	.asciz	"sigaction"                     # string offset=1261
.Linfo_string141:
	.asciz	"statbuf"                       # string offset=1271
.Linfo_string142:
	.asciz	"st_dev"                        # string offset=1279
.Linfo_string143:
	.asciz	"__dev_t"                       # string offset=1286
.Linfo_string144:
	.asciz	"st_ino"                        # string offset=1294
.Linfo_string145:
	.asciz	"__ino_t"                       # string offset=1301
.Linfo_string146:
	.asciz	"st_nlink"                      # string offset=1309
.Linfo_string147:
	.asciz	"__nlink_t"                     # string offset=1318
.Linfo_string148:
	.asciz	"st_mode"                       # string offset=1328
.Linfo_string149:
	.asciz	"__mode_t"                      # string offset=1336
.Linfo_string150:
	.asciz	"st_uid"                        # string offset=1345
.Linfo_string151:
	.asciz	"st_gid"                        # string offset=1352
.Linfo_string152:
	.asciz	"__gid_t"                       # string offset=1359
.Linfo_string153:
	.asciz	"st_rdev"                       # string offset=1367
.Linfo_string154:
	.asciz	"st_size"                       # string offset=1375
.Linfo_string155:
	.asciz	"__off_t"                       # string offset=1383
.Linfo_string156:
	.asciz	"st_blksize"                    # string offset=1391
.Linfo_string157:
	.asciz	"__blksize_t"                   # string offset=1402
.Linfo_string158:
	.asciz	"st_blocks"                     # string offset=1414
.Linfo_string159:
	.asciz	"__blkcnt_t"                    # string offset=1424
.Linfo_string160:
	.asciz	"st_atim"                       # string offset=1435
.Linfo_string161:
	.asciz	"tv_sec"                        # string offset=1443
.Linfo_string162:
	.asciz	"__time_t"                      # string offset=1450
.Linfo_string163:
	.asciz	"tv_nsec"                       # string offset=1459
.Linfo_string164:
	.asciz	"__syscall_slong_t"             # string offset=1467
.Linfo_string165:
	.asciz	"timespec"                      # string offset=1485
.Linfo_string166:
	.asciz	"st_mtim"                       # string offset=1494
.Linfo_string167:
	.asciz	"st_ctim"                       # string offset=1502
.Linfo_string168:
	.asciz	"__glibc_reserved"              # string offset=1510
.Linfo_string169:
	.asciz	"stat"                          # string offset=1527
.Linfo_string170:
	.asciz	"term"                          # string offset=1532
.Linfo_string171:
	.asciz	"c_iflag"                       # string offset=1537
.Linfo_string172:
	.asciz	"tcflag_t"                      # string offset=1545
.Linfo_string173:
	.asciz	"c_oflag"                       # string offset=1554
.Linfo_string174:
	.asciz	"c_cflag"                       # string offset=1562
.Linfo_string175:
	.asciz	"c_lflag"                       # string offset=1570
.Linfo_string176:
	.asciz	"c_line"                        # string offset=1578
.Linfo_string177:
	.asciz	"unsigned char"                 # string offset=1585
.Linfo_string178:
	.asciz	"cc_t"                          # string offset=1599
.Linfo_string179:
	.asciz	"c_cc"                          # string offset=1604
.Linfo_string180:
	.asciz	"c_ispeed"                      # string offset=1609
.Linfo_string181:
	.asciz	"speed_t"                       # string offset=1618
.Linfo_string182:
	.asciz	"c_ospeed"                      # string offset=1626
.Linfo_string183:
	.asciz	"termios"                       # string offset=1635
.Linfo_string184:
	.asciz	"s_minishell"                   # string offset=1643
.Linfo_string185:
	.asciz	"t_minishell"                   # string offset=1655
.Linfo_string186:
	.asciz	"cmd"                           # string offset=1667
.Linfo_string187:
	.asciz	"t_cmd"                         # string offset=1671
.Linfo_string188:
	.asciz	"i"                             # string offset=1677
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_oldpwd_attr
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym ft_strlcpy
	.addrsig_sym free
	.addrsig_sym get_oldpwd
	.addrsig_sym ft_strncmp
	.addrsig_sym init_env_var_attr
	.addrsig_sym get_env_pwd
	.addrsig_sym __errno_location
	.addrsig_sym write_current_directory
	.addrsig_sym ft_strlen
	.addrsig_sym write
	.addrsig_sym update_environment_state
	.addrsig_sym getcwd
	.section	.debug_line,"",@progbits
.Lline_table_start0:

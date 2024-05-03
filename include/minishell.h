/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minishell.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/05 00:27:45 by agadea            #+#    #+#             */
/*   Updated: 2024/05/03 16:09:40 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINISHELL_H
# define MINISHELL_H

# include "../libft/include/libft.h"
# include <readline/readline.h>
# include <readline/history.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <sys/wait.h>
# include <stdbool.h>
# include <termios.h>
# include <unistd.h>
# include <stdlib.h>
# include <signal.h>
# include <dirent.h>
# include <limits.h>
# include "colors.h"
# include <stdio.h>
# include <errno.h>
# include <fcntl.h>
# include <term.h>

# define LEXICAL_ERROR -1
# define NO_CLOSING_QUOTE -1
# define FOUND 2

enum e_blank
{
	horizontal_tab = 9,
	new_line,
	vertical_tab,
	formfeed,
	carriage_ret,
	space = 32
};

enum e_state
{
	run,
	stop,
	success = 0,
	failure
};

enum e_ast_node_type
{
	no_type,
	root,
	simple_command,
};

enum e_cmd_type
{
	command = 1,
	builtin,
	assignment
};

enum
{
	error_syntax= 1,
	error_token,
	error_and,
	error_file,
	error_builtin,
	error_malloc,
	error_command,
};

enum e_token
{
	l_parentheses,
	r_parentheses,
	simple_quote,
	double_quote,
	exit_status,
	expansion,
	operator,
	wildcard,
	pipe_op,
	heredoc,
	outfile,
	append,
	infile,
	and_if,
	or_if,
	word,
	name,
	assignment_word,
	eof_token,
};

typedef struct s_expan
{
	char			*name;
	struct s_expan	*next;
}	t_expan;

typedef struct s_token
{
	int				type;
	int				quote_nbr;
	int				length;
	char			*lexeme;
	t_expan			*expansion;
	struct s_token	*prev;
	struct s_token	*next;
}	t_token;

extern int	g_signal;

typedef struct s_env
{
	char			*name;
	char			*value;
	struct s_env	*next;
}	t_env;

typedef struct s_infile
{
	int				fd;
	int				type;
	char			*name;
	struct s_infile	*next;
}	t_infile;

typedef struct s_outfile
{
	int					fd;
	int					type;
	char				*name;
	struct s_outfile	*next;
}	t_outfile;

typedef struct s_pipe
{
	int	*to_close;
	int	*write;
	int	*read;
}	t_pipe;

typedef struct s_redir
{
	int			in_fd;
	int			out_fd;
	t_infile	*infile;
	t_outfile	*outfile;
}	t_redir;

typedef struct s_arg
{
	char			*value;
	struct s_arg	*next;
}	t_arg;

typedef struct s_var
{
	char			*name;
	char			*value;
	struct s_var	*next;
}	t_var;

typedef struct s_cmd
{
	int				id;
	int				pid;
	int				type;
	int				wstatus;
	char			*name;
	char			*path;
	t_arg			*arg;
	t_pipe			*pipe;
	t_redir			*redir;
	t_infile		*infile;
	t_var			*assign;
	t_outfile		*outfile;
	t_expan			*expansion;
	char			**arg_array;
	struct s_cmd	*next;
	struct s_cmd	*prev;
}	t_cmd;

typedef struct s_ast_node
{
	int				id;
	int				type;
	int				*pipe_fd;
	int				exit_status;
	struct s_cmd	*left;
	struct s_cmd	*right;
}	t_ast_node;

typedef struct s_ast
{
	t_ast_node		*node;
	struct s_ast	*next;
	struct s_ast	*prev;
}	t_ast;

typedef struct s_minishell
{
	DIR					*dir;
	int					state;
	char				*input;
	char				**path;
	char				*prompt;
	int					operator_nbr;
	int					exit_status;
	char				**env_array;
	t_env				*env;
	t_var				*local;
	t_ast				*syntax_tree;
	t_token				*token_stream;
	struct sigaction	sighandler;
	struct stat			*statbuf;
	struct termios		*term;
}	t_minishell;

typedef struct s_backup
{
	int					stdin_backup;
	int					stdout_backup;
}	t_backup;

/*		INIT		*/
char		**get_path(t_env *env);
void		init_minishell(t_minishell *minishell, char **envp);

/*		BUILTIN		*/
void		cd(t_minishell *minishell, t_cmd *cmd);
t_env		*get_oldpwd(t_env **env, t_env *pwd);
void		pwd(t_minishell *minishell, t_cmd *cmd);
void		echo(t_minishell *minishell, t_cmd *cmd);
void		ft_exit(t_minishell *minishell, t_cmd *cmd);
void		env(t_minishell *minishell, t_env *env, t_cmd *cmd);
void		unset(t_minishell *minishell, t_env *env, t_cmd *cmd);
void		unset_variable(t_env **env, char *arg);
void		export(t_minishell *minishell, t_env **env, t_cmd *cmd);
int			ft_strcmp(const char *str1, const char *str2);

/*		PROMPT		*/
char		*get_dir_path(void);
char		*get_log_info(void);
void		get_prompt(char **prompt);
int			get_hostname_length(char *hostname);

/*		SIGNAL		*/
void		init_signal_handler(void);
void		signal_handler(int signum);
void		sigaction_handler(int signum, siginfo_t *info, void *ucontext);

/*	  ENVIRONMENT	*/
t_env		*create_default_env(void);
char		**get_env_array(t_env *env);
int			cmd_arg_nbr(char **arg_array);
t_env		*get_env_variable(char *envp);
void		init_env_var_attr(t_env **new);
char		*get_variable_name(char *envp);
char		*get_variable_value(char *envp);
// void		print_env(t_env *env, t_cmd *cmd);
int			get_environment_size(char **envp);
t_env		*extract_environment(char **envp);
void		add_new_var_to_env(t_env **new_var, t_env **env);
void		init_environment(t_env **env, char **envp);
bool		is_exit_status(char *expan_name);
void		update_environment_state(t_minishell *minishell, t_cmd *cmd, int i);

/*		LEXER		*/
void		lexical_analysis(t_minishell *minishell, char *input);

int			add_quote(char *input);
void		init_token_attr(t_token **token);
int			get_token_quote_nbr(char *input);
int			skip_quote(char *lexeme, char quote);
t_expan		*get_token_expansion(char *lexeme, int length);
int			remove_quote(char lexeme, char *quote, int *second_quote);
void		check_lexical_error(t_minishell *minishell,
				t_token **token, char input);

bool		is_quote(char c);
bool		is_blank(char c);
bool		is_operator(char c);
bool		is_builtin(char *input);
bool		is_redirection(int type);
bool		is_metacharacter(char c);
bool		type_is_operator(int type);
bool		got_filename(char *lexeme, int type);

int			get_word_type(char *input);
int			get_quote_type(char *input);
int			get_operator_type(char *input);

void		get_word_token(char *input, t_token **new);
void		get_operator_token(char *input, t_token **new);
void		get_redirection_token(char *input, t_token *new);

char		**split_expenssion(char *input);
char		*parse_input(char *input, t_minishell *minishell);

/*		PARSING		*/
void		parsing(t_minishell *minishell);
bool		is_operator_token(t_token *token);
char		**get_command_arg_array(t_arg *arg);
void		init_ast_node_attr(t_ast_node **node);
t_ast		*get_syntax_tree(t_minishell *minishell);
char		*get_redir_filename(char *lexeme, int type);
char		*get_command_path(char **path, char *cmd_name);
void		get_command_assign(t_token *token, t_var **table);
void		assign_variable(t_minishell **minishell, t_cmd *cmd);
t_cmd		*get_command(t_minishell *minishell, t_token **token, int id);
int			get_redir_filename_length(char *lexeme, int type, int *start);
void		get_command_redir(t_minishell *minishell,
				t_token *token, t_redir **redir);
void		get_command_arg(t_minishell *minishell, t_token *token,
				t_arg **arg_table, t_env *env);
char		*expand_lexeme_variable(char *lexeme, char *name, char *value);
char		*get_expansion_value(t_env *env, char *name);
void		manage_expansion(t_minishell *minishell,
				t_token **token, t_env *env);
t_ast_node	*get_syntax_tree_node(t_minishell *minishell,
				t_token **token, int i);
bool		is_expansion_stored_in_env(char *value);
void		get_redir_heredoc(char *delimiter);
bool		is_file_accessible(t_minishell *minishell, char *filename);
void		add_infile_to_list(t_infile **infile, t_infile **new);

/*	   EXECUTION	*/
void		manage_parent_pipe(t_ast **ast);
void		manage_child_pipe(t_pipe *pipe);
void		manage_builtin_pipe(t_pipe *pipe);
void		execution(t_minishell *minishell);
void		backup_in_out(t_backup *std_in_out);
int			open_command_infile(t_cmd *cmd);
int			open_command_outfile(t_cmd *cmd);
void		open_command_redirection(t_cmd *cmd);
void		close_redirection(t_backup *std_in_out, t_cmd *cmd);
void		interrupt_all_execution(t_minishell *minishell);
void		exec_list(t_minishell **minishell, t_ast **ast);
void		exec_builtin(t_minishell *minishell, t_cmd *cmd);
bool		is_next_node_pipeline(t_ast *ast);
// void		exec_builtin(t_minishell *minishell,
// 				t_ast_node *node, t_cmd *cmd);
void		exec_command(t_minishell **minishell, t_cmd **cmd);
void		exec_pipe(t_minishell **minishell, t_ast **ast, int i);
void		child_job(t_minishell **minishell, t_cmd *cmd, char **envp);

void		setup_pipe(t_ast **ast);

/*		ERROR		*/
void		get_command_error(t_minishell **minishell);
void		get_token_error(t_token *token, t_token *stream);

/*		MEMORY		*/
void		free_cmd(t_cmd *cmd);
void		free_char_array(char **array);
void		free_token_stream(t_token *stream);
void		clean_input(t_minishell *minishell);
void		clean_program(t_minishell *minishell);
void		free_environment(t_env *minishell_env);

void		print_cmd_arg(char **arg);
void		print_token(t_token *stream);
void		print_local_var(t_var *local);
void		print_syntax_tree(t_ast *root);
void		print_cmd_redir(t_redir *redir);
void		print_expansion(t_expan *expansion);
void		print_token_with_expansion(t_token *stream);

#endif
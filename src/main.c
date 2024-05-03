/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:33:00 by cboukhal          #+#    #+#             */
/*   Updated: 2024/05/02 11:36:45 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/minishell.h"

/*
readline, rl_clear_history, rl_on_new_line,
rl_replace_line, rl_redisplay, add_history,
printf, malloc, free, write, access, open, read,
close, fork, wait, waitpid, wait3, wait4, signal,
sigaction, sigemptyset, sigaddset, kill, exit,
getcwd, chdir, stat, lstat, fstat, unlink, execve,
dup, dup2, pipe, opendir, readdir, closedir,
strerror, perror, isatty, ttyname, ttyslot, ioctl,
getenv, tcsetattr, tcgetattr, tgetent, tgetflag,
tgetnum, tgetstr, tgoto, tputs

char			*readline(const char *prompt);
				rl_clear_history,
				rl_on_new_line,
				rl_replace_line,
				rl_redisplay,
				add_history,
int				access(const char *pathname, int mode);
int				open(const char *pathname, int flags, mode_t mode);
ssize_t			read(int fd, void *buf, size_t count);
int				close(int fd);
pid_t			fork(void);
pid_t			wait(int *wstatus);
pid_t			waitpid(pid_t pid, int *wstatus, int options);
pid_t			wait3(int *wstatus, int options, struct rusage *rusage);
pid_t	wait4(pid_t pid,
					int *wstatus, int options, struct rusage *rusage);
sighandler_t	signal(int signum, sighandler_t handler);
int	sigaction(int signum,
					const struct sigaction *act, struct sigaction *oldact);
int				sigemptyset(sigset_t *set);
int				sigaddset(sigset_t *set, int signum);
int				kill(pid_t pid, int sig);
void			exit(int status);
char			*getcwd(char *buf, size_t size);
int				chdir(const char *path);
int				stat(const char *pathname, struct stat *statbuf);
int				lstat(const char *pathname, struct stat *statbuf);
int				fstat(int fd, struct stat *statbuf);
int				unlink(const char *pathname);
int	execve(const char *pathname,
					char *const argv[], char *const envp[]);
int				dup(int oldfd);
int				dup2(int oldfd, int newfd);
int				pipe(int pipefd[2]);
DIR				opendir(const char *name);
struct dirent	*readdir(DIR *dirp);
int				closedir(DIR *dirp);
int				isatty(int fd);
char			*ttyname(int fd);
int				ttyslot(void);
int				ioctl(int fd, unsigned long request, ...);
char			*getenv(const char *name);
int	tcsetattr(int fd,
					int optional_actions, const struct termios *termios_p);
int				tcgetattr(int fd, struct termios *termios_p);
*/

void	test_mode(t_minishell *minishell, int argc, char *input)
{
	int	exit_status;

	if (argc == 2)
	{
		lexical_analysis(minishell, input);
		parsing(minishell);
		execution(minishell);
		exit_status = minishell->exit_status;
		clean_program(minishell);
		exit(exit_status);
	}
	ft_printf(BOLD WHITE "Test usage: ./minishell \"argument\"\n" DEFAULT);
	clean_program(minishell);
	exit(EXIT_FAILURE);
}

int	where_is_that(char *s, char c)
{
	int	i;
	int	j;

	i = 0;
	j = 0;
	while (s[i])
	{
		if (s[i] == c)
			j++;
		i++;
	}
	return (j);
}

// char	*get_expansion_value_patch(t_env *env, char *name)
// {
// 	char	*value;
// 	char	*new_name;
// 	int		is_quote;

// 	value = NULL;
// 	is_quote = where_is_that(name, 34);
// 	if (is_quote != 0)
// 	{
// 		ft_strlcpy(new_name ,name, is_quote);
		
// 	}
// 	while (env)
// 	{
// 		if (ft_strcmp(name, env->name) == 0)
// 			value = ft_strdup(env->value);
// 		env = env->next;
// 	}
// 	return (value);
// }

// char	*jspcmtappeler(char *value, t_minishell *minishell)
// {
// 	char	**split;
// 	char	*pls;
// 	int		i;
// 	int		j;

// 	i = 0;
// 	split = ft_split(value, '$');
// 	while (split[i])
// 	{
// 		pls = split[i];
// 		if (ft_strcmp("?", split[i]) == 0)
// 		{
// 			split[i] = ft_itoa(minishell->exit_status);
// 			free(pls);
// 		}
// 		else
// 		{
// 			if (where_is_that(pls, '$') != 0)
// 			{
// 				split[i] = get_expansion_value_patch(minishell->env, split[i]);
// 				if (!split[i])
// 					split[i] = ft_strdup(value);
// 				free(pls);
// 			}
// 			else
// 				split[i] = pls;
// 		}
// 		i++;
// 	}
// 	i = 0;
// 	j = 0;
// 	while (split[j])
// 		j++;
// 	if (j != 0)
// 	{
// 		j--;
// 		if (ft_strcmp(value, split[i]) != 0)
// 			pls = ft_strdup(split[0]);
// 		else
// 			pls = NULL;
// 		i++;
// 		while (j > 0)
// 		{
// 			if (ft_strcmp(value, split[i]) != 0)
// 				pls = ft_strjoin_n_free(pls, split[i]);
// 			i++;
// 			j--;
// 		}
// 	}
// 	free_char_array(split);
// 	free(value);
// 	return (pls);
// }



// char	*parse_input(char *input, t_minishell *minishell)
// {
// 	int		i;
// 	size_t	j;
// 	char	**split;
// 	char	*pls;

// 	split = ft_split(input, ' ');
// 	i = 0;
// 	j = 2;
// 	while (split[i])
// 	{
// 		if (split[i][0] == 39)
// 			j++;
// 		if ((where_is_that(split[i], '$') != 0) && (j % 2 == 0))
// 			split[i] = jspcmtappeler(split[i], minishell);
// 		i++;
// 	}
// 	i = 0;
// 	j = 0;
// 	while (split[j])
// 		j++;
// 	if (j == 1)
// 		pls = ft_strdup(split[0]);
// 	else if (j != 0)
// 	{
// 		j = j - 2;
// 		pls = ft_strjoin(split[0], " ");
// 		pls = ft_strjoin_n_free(pls, split[1]);
// 		i = i + 2;
// 		while (j > 0)
// 		{
// 			pls = ft_strjoin_n_free(pls, " ");
// 			pls = ft_strjoin_n_free(pls, split[i]);
// 			i++;
// 			j--;
// 		}
// 	}
// 	j = 0;
// 	while (split[j])
// 		j++;
// 	free_char_array(split);
// 	if (j == 0)
// 		return (input);
// 	else
// 	{
// 		free(input);
// 		return (pls);
// 	}
// }

// char	*blipbloup(const char *input)
// {
// 	int		i;
// 	int		j;
// 	char	quote;
// 	int		second_quote;
// 	char	*lexeme;

// 	i = 0;
// 	j = 0;
// 	quote = '\0';
// 	second_quote = 0;
// 	while (input[i])
// 	{
// 		if (input[i] == '\"')
// 			j++;
// 		i++;
// 	}
// 	lexeme = malloc(sizeof(char *) * j + 1);
// 	i = 0;
// 	j = 0;
// 	while (input[i])
// 	{
// 		if (is_quote(input[i]))
// 			i += remove_quote(input[i], &quote, &second_quote);
// 		if (second_quote == 0 && is_quote(input[i]))
// 		{
// 			i++;
// 			continue ;
// 		}
// 		else
// 			lexeme[j++] = input[i++];
// 	}
// 	lexeme[j] = '\0';
// 	return (lexeme);
// }

char *ft_strstr(char *str, char *to_find)
{
	int i;
	int j;

	i = 0;
	while (str[i] != '\0')
	{
		j = 0;
		while (to_find[j] == str[i + j])
		{
			if (to_find[j + 1] == '\0')
			{
				return (str + i);
			}
			j++;
		}
		i++;
	}
	return (0);
}

void	replace_expenssion(char *chaine, char *expenssion, const char *new_name)
{
	size_t	expenssion_len;
	size_t	new_name_len;
	size_t	remaining_len;
	char	*ptr;
	
	expenssion_len = ft_strlen(expenssion);
	new_name_len = ft_strlen(new_name);
	ptr = ft_strstr(chaine, expenssion);
	while (ptr != NULL)
	{
		remaining_len = ft_strlen(ptr + expenssion_len);
		ft_memmove(ptr + new_name_len, ptr + expenssion_len, remaining_len + 1);
		ft_memcpy(ptr, new_name, new_name_len);
		ptr = ft_strstr(ptr + new_name_len, expenssion);
	}
}

char *find_expenssion(char *input)
{
	int i;
	int j;
	int y;
	char *new;

	i = 0;
	j = 0;
	while(input[i] != '$')
		i++;
	if (!input[i])
		return(NULL);
	y = i;
	while(input[y] && input[y] != '\"' && input[y] != ' ')
	{
		if (y != i)
			if (input[y] == '$')
				break;
		j++;
		y++;
	}
	new = malloc(sizeof(char *) * j + 1);
	y = i;
	while(input[i] && input[i] != '\"' && input[i] != ' ')
	{
		if (y != i)
			if (input[i] == '$')
				break;
		new[i] = input[i];
		i++;
	}
	new[i] = '\"';
	return(new);
}

void	lexical_modification(t_minishell *minishell)
{
	char	*input;

	input = find_expenssion(minishell->input);
	replace_expenssion(minishell->input, "$USER", "HELLO");
	free(input);
}

int	main(int argc, char **argv, char **envp)
{
	t_minishell	minishell;
	int			exit_status;

	init_minishell(&minishell, envp);
	if (argc > 1)
		test_mode(&minishell, argc, argv[1]);
	while (minishell.state == run && g_signal != SIGQUIT)
	{
		get_prompt(&minishell.prompt);
		minishell.input = readline(minishell.prompt);
		if (minishell.input == NULL)
		{
			write(1, "exit\n", 5);
			break ;
		}
		add_history(minishell.input);
		//lexical_modification(&minishell);
		lexical_analysis(&minishell, minishell.input);
		parsing(&minishell);
		execution(&minishell);
		clean_input(&minishell);
	}
	exit_status = minishell.exit_status;
	clean_program(&minishell);
	return (exit_status);
}

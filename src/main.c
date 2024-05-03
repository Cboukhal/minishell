/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:33:00 by cboukhal          #+#    #+#             */
/*   Updated: 2024/05/03 12:25:26 by jbocktor         ###   ########.fr       */
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

int	how_many(char *input)
{
	int		i;
	int		j;
	char	*put;

	i = 0;
	j = 0;
	put = input;
	while (put[i])
	{
		put = &put[i];
		i = 0;
		while (put[i] && put[i] != '$')
			i++;
		if (i > 0)
			j++;
		put = &put[i];
		i = 0;
		while (put[i] && put[i] != '\"' && put[i] != ' ')
		{
			i++;
			if (put[i] == '$' || put[i] != '\"' || put[i] != ' ')
				break ;
		}
		if (i > 0)
			j++;
	}
	return (j);
}

char	**splinter(char *input)
{
	char	**split;
	char	*put;
	int		many;
	int		i;
	int		j;

	j = 0;
	i = 0;
	many = how_many(input);
	split = malloc(sizeof(char **) * many + 1);
	put = input;
	while (put[i])
	{
		put = &put[i];
		i = 0;
		while (put[i] && put[i] != '$')
			i++;
		if (i > 0)
		{
			split[j] = malloc(sizeof(char *) * i + 1);
			i = 0;
			while (put[i] && put[i] != '$')
			{
				split[j][i] = put[i];
				i++;
			}
			split[j][i] = '\0';
			j++;
		}
		put = &put[i];
		i = 0;
		while (put[i] && put[i] != '\"' && put[i] != ' ')
		{
			i++;
			if (put[i] && put[i] == '$' && put[i] == '\"' && put[i] == ' ')
				break ;
		}
		if (i > 0)
		{
			split[j] = malloc(sizeof(char *) * i + 1);
			i = 0;
			while (put[i] && put[i] != '\"' && put[i] != ' ')
			{
				split[j][i] = put[i];
				i++;
				if (put[i] == '$' || put[i] == '\"' || put[i] == ' ')
					break ;
			}
			split[j][i] = '\0';
			j++;
		}
	}
	split[j] = 0;
	return (split);
}

char	*parse_input(char *input, t_minishell *minishell)
{
	int		i;
	size_t	j;
	char	**split;
	char	*pls;

	split = splinter(input);
	i = 0;
	j = 2;
	while (split[i])
	{
		if (split[i][0] == 39)
			j++;
		if (split[i][0] == '$' && j % 2 == 0)
		{
			pls = split[i];
			if (ft_strcmp("$?", split[i]) == 0)
			{
				split[i] = ft_itoa(minishell->exit_status);
				free(pls);
			}
			else
			{
				split[i] = get_expansion_value(minishell->env, &split[i][1]);
				if (!split[i])
					split[i] = pls;
				else
					free(pls);
			}
		}
		i++;
	}
	i = 0;
	j = 0;
	while (split[j])
		j++;
	if (j != 0)
	{
		j--;
		pls = ft_strdup(split[i]);
		i++;
		while (j > 0)
		{
			pls = ft_strjoin_n_free(pls, split[i]);
			i++;
			j--;
		}
	}
	free_char_array(split);
	free(input);
	return(pls);
}

int	main(int argc, char **argv, char **envp)
{
	t_minishell	minishell;
	int			exit_status;

	(void)argc;
	(void)argv;
	init_minishell(&minishell, envp);
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
		minishell.input = parse_input(minishell.input, &minishell);
		lexical_analysis(&minishell, minishell.input);
		parsing(&minishell);
		execution(&minishell);
		clean_input(&minishell);
	}
	exit_status = minishell.exit_status;
	clean_program(&minishell);
	return (exit_status);
}

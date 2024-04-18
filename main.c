/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/05 00:28:19 by agadea            #+#    #+#             */
/*   Updated: 2024/04/18 16:10:11 by jbocktor         ###   ########.fr       */
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
pid_t			wait4(pid_t pid,
					int *wstatus, int options, struct rusage *rusage);
sighandler_t	signal(int signum, sighandler_t handler);
int				sigaction(int signum,
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
int				execve(const char *pathname,
					char *const argv[], char *const envp[]);
int				int oldfd);
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
int				tcsetattr(int fd,
					int optional_actions, const struct termios *termios_p);
int				tcgetattr(int fd, struct termios *termios_p);
*/

void	test_mode(t_minishell *minishell, int argc, char *input)
{
	int	exit_status;

	// if (isatty(0))
	// {
	// 	printf("Isatty\n");
	// }
	if (argc == 2)
	{
		lexical_analysis(minishell, input);
		parsing(minishell);
		execution(minishell);
		exit_status = minishell->exit_status;
		clean_program(minishell);
		exit(exit_status);
	}
	ft_printf(BOLD WHITE"Test usage: ./minishell \"argument\"\n"DEFAULT);
	clean_program(minishell);
	exit(EXIT_FAILURE);
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
		lexical_analysis(&minishell, minishell.input);
		parsing(&minishell);
		execution(&minishell);
		clean_input(&minishell);
	}
	exit_status = minishell.exit_status;
	clean_program(&minishell);
	return (exit_status);
}

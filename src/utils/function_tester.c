/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   function_tester.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/25 16:18:00 by agadea            #+#    #+#             */
/*   Updated: 2024/04/01 18:46:46 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

// /*
void	function_tester(void)
{
	// stat();
	// lstat();
	// fstat();

	DIR				*dir;
	struct dirent	*dirent;
	dir = opendir("testdir");
	dirent = readdir(dir);
	printf("d_ino = %lu\n\
	d_name = %s\n\
	d_reclen = %d\n\
	d_type = %d\n\
	", dirent->d_ino,
	dirent->d_name,
	// dirent->d_off,
	dirent->d_reclen,
	dirent->d_type);
	closedir(dir);

	printf("isatty = %d\n", isatty(0));
	printf("ttyname = %s\n", ttyname(0));
	printf("ttyslot = %d\n", ttyslot());

	// ioctl();
	printf("getenv = %s\n", getenv("HOSTNAME"));

	struct termios *term;
	term = NULL;

	/* for ctrl - \ */
	// tcgetattr(STDIN_FILENO, term);
	// tcsetattr();

	// tgetent();
	// tgetflag();
	// tgetnum();
	// tgetstrl();
	// tgoto();
	// tputs();
	exit(EXIT_SUCCESS);
}
// */
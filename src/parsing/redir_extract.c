/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   redir_extract.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/26 12:14:46 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/27 12:03:27 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	get_redir_heredoc(char *delimiter)
{
	int		fd;
	char	*buffer;
	char	*newline_delimiter;

	g_signal = 1;
	newline_delimiter = ft_strjoin(delimiter, "\n");
	fd = open("/tmp/heredoc", O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR);
	while (1)
	{
		write(1, "> ", 2);
		buffer = get_next_line(1);
		if (!buffer || ft_strcmp(buffer, newline_delimiter) == 0)
			break ;
		write(fd, buffer, ft_strlen(buffer));
		free(buffer);
	}
	free(buffer);
	free(newline_delimiter);
	close(fd);
}

bool	is_file_accessible(t_minishell *minishell, char *filename)
{
	if (filename && ft_strlen(filename) > 0)
	{
		if (access(filename, F_OK) == 0)
			return (true);
		ft_printf("bash: %s: %s\n", filename, strerror(errno));
		minishell->exit_status = 1;
	}
	return (false);
}

// void	process_redirection(t_infile *new)
// {
// 	if (new->type == heredoc && ft_strlen(new->name) > 0)
// 		get_redir_heredoc(new->name);
// }

// void	manage_infile_list(t_infile **infile, t_infile *new)
// {
// 	t_infile	*index;

// 	index = *infile;
// 	if (index)
// 	{
// 		while (index->next)
// 			index = index->next;
// 		index->next = new;
// 	}
// 	else
// 		*infile = new;
// }

void	add_infile_to_list(t_infile **infile, t_infile **new)
{
	t_infile	*index;

	if ((*infile))
	{
		index = (*infile);
		while (index)
		{
			if (index->next == NULL)
				break ;
			index = index->next;
		}
		index->next = (*new);
	}
	else
		(*infile) = (*new);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir_infile.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/30 11:53:29 by agadea            #+#    #+#             */
/*   Updated: 2024/04/01 22:32:36 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

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

void	get_redir_heredoc(char *delimiter)
{
	int			fd;
	char		*buffer;

	fd = open("/tmp/heredoc", O_WRONLY | O_TRUNC | O_CREAT,
			S_IRUSR | S_IWUSR);
	while (1)
	{
		write(1, "> ", 2);
		buffer = get_next_line(1);
		if (!buffer
			|| ft_strncmp(buffer, delimiter, ft_strlen(delimiter)) == 0)
			break ;
		write(fd, buffer, ft_strlen(buffer));
		free(buffer);
	}
	free(buffer);
	close(fd);
}

void	extract_command_infile(t_minishell *minishell,
			t_token *token, t_infile **infile)
{
	t_infile	*new;

	new = malloc(sizeof(t_infile));
	if (!new)
	{
		perror("malloc");
		return ;
	}
	new->next = NULL;
	new->type = token->type;
	new->name = get_redir_filename(token->lexeme, new->type);
	if (new->type == heredoc && ft_strlen(new->name) > 0)
	{
		get_redir_heredoc(new->name);
		add_infile_to_list(&(*infile), &new);
	}
	else if (new->name && is_file_accessible(minishell, new->name) == true)
	{
		add_infile_to_list(&(*infile), &new);
		return ;
	}
	else
	{
		free(new->name);
		free(new);
	}
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir_extract.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/04 21:54:41 by agadea            #+#    #+#             */
/*   Updated: 2024/04/24 14:10:44 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

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

// void	extract_command_infile(t_minishell *minishell,
// 			t_token *token, t_infile **infile)
// {
// 	t_infile	*index;
// 	t_infile	*new;

// 	new = malloc(sizeof(t_infile));
// 	if (!new)
// 	{
// 		perror("malloc");
// 		return ;
// 	}
// 	new->next = NULL;
// 	new->type = token->type;
// 	new->name = get_redir_filename(token->lexeme, new->type);
// 	if (new->type == heredoc && ft_strlen(new->name) > 0)
// 		get_redir_heredoc(new->name);
// 	else if (new->name && is_file_accessible(minishell, new->name) == true)
// 	{
// 		if ((*infile))
// 		{
// 			index = (*infile);
// 			while (index)
// 			{
// 				if (index->next == NULL)
// 					break ;
// 				index = index->next;
// 			}
// 			index->next = new;
// 			return ;
// 		}
// 		else
// 			(*infile) = new;
// 		return ;
// 	}
// 	free(new->name);
// 	free(new);
// }
void	process_redirection(t_infile *new)
{
	if (new->type == heredoc && ft_strlen(new->name) > 0)
		get_redir_heredoc(new->name);
}

void	manage_infile_list(t_infile **infile, t_infile *new)
{
	t_infile	*index;

	index = *infile;
	if (index)
	{
		while (index->next)
			index = index->next;
		index->next = new;
	}
	else
		*infile = new;
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

void	handle_infile_token(t_minishell *minishell,
	t_infile *new, t_infile **infile)
	{
	if (new->type == heredoc && ft_strlen(new->name) > 0)
	{
		get_redir_heredoc(new->name);
		add_infile_to_list(infile, &new);
	}
	else if (new->name && is_file_accessible(minishell, new->name))
	{
		add_infile_to_list(infile, &new);
		return ;
	}
	else
	{
		free(new->name);
		free(new);
	}
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
	handle_infile_token (minishell, new, infile);
}

// void	extract_command_outfile(t_token *token, t_outfile **outfile)
// {
// 	t_outfile	*index;
// 	t_outfile	*new;

// 	new = malloc(sizeof(t_infile));
// 	if (!new)
// 	{
// 		perror("malloc");
// 		return ;
// 	}
// 	new->next = NULL;
// 	new->type = token->type;
// 	new->name = get_redir_filename(token->lexeme, new->type);
// 	if ((*outfile))
// 	{
// 		index = (*outfile);
// 		while (index)
// 		{
// 			if (index->next == NULL)
// 				break ;
// 			index = index->next;
// 		}
// 		index->next = new;
// 		return ;
// 	}
// 	else
// 		(*outfile) = new;
// }

void	manage_outfile_list(t_outfile **outfile, t_outfile *new)
{
	t_outfile	*index;

	index = *outfile;
	if (index)
	{
		while (index->next)
			index = index->next;
		index->next = new;
	}
	else
		*outfile = new;
}

void	extract_command_outfile(t_token *token, t_outfile **outfile)
{
	t_outfile	*new;

	new = malloc(sizeof(t_outfile));
	if (!new)
	{
		perror("malloc");
		return ;
	}
	new->next = NULL;
	new->type = token->type;
	new->name = get_redir_filename(token->lexeme, new->type);
	manage_outfile_list(outfile, new);
}

void	get_command_redir(t_minishell *minishell,
			t_token *token, t_redir **redir)
{
	if ((*redir) == NULL)
	{
		(*redir) = malloc(sizeof(t_redir));
		if (!(*redir))
			perror("malloc:");
		(*redir)->infile = NULL;
		(*redir)->outfile = NULL;
	}
	if (token->type == infile || token->type == heredoc)
		extract_command_infile(minishell, token, &(*redir)->infile);
	else if (token->type == outfile || token->type == append)
		extract_command_outfile(token, &(*redir)->outfile);
}

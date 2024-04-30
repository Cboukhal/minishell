/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 09:10:52 by jbocktor          #+#    #+#             */
/*   Updated: 2024/04/30 09:10:55 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*next_element;
	t_list	*current_element;

	if (!lst || !(*del))
		return ;
	current_element = *lst;
	while (current_element)
	{
		next_element = current_element->next;
		del(current_element->content);
		free(current_element);
		current_element = next_element;
	}
	*lst = NULL;
}

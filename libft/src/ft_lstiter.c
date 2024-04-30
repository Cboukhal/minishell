/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 09:11:11 by jbocktor          #+#    #+#             */
/*   Updated: 2024/04/30 09:11:12 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	ft_lstiter(t_list *lst, void (*f)(void *))
{
	t_list	*next_element;
	t_list	*current_element;

	if (!lst || !(*f))
		return ;
	current_element = lst;
	while (current_element)
	{
		next_element = current_element->next;
		f(current_element->content);
		current_element = next_element;
	}
}

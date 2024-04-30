/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 09:11:30 by jbocktor          #+#    #+#             */
/*   Updated: 2024/04/30 09:11:31 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*head;
	t_list	*new_element;
	t_list	*current_element;

	if (!lst || !(*f) || !(*del))
		return (NULL);
	head = ft_lstnew(NULL);
	if (!head)
		return (NULL);
	current_element = head;
	while (lst)
	{
		current_element->content = f(lst->content);
		new_element = ft_lstnew(NULL);
		if (!(new_element))
		{
			ft_lstclear(&lst, (del));
			ft_lstclear(&head, (del));
			return (lst);
		}
		ft_lstadd_back(&head, new_element);
		current_element = new_element;
		lst = lst->next;
	}
	return (head);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstat.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hharold <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/03 21:08:44 by hharold           #+#    #+#             */
/*   Updated: 2021/11/03 21:08:45 by hharold          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstat(t_list *lst, size_t val)
{
	size_t	i;

	i = 0;
	while (i < val && lst != NULL)
	{
		lst = lst->next;
		i++;
	}
	return (lst);
}
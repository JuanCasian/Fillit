/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print_board.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcasian <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/16 13:22:31 by jcasian           #+#    #+#             */
/*   Updated: 2018/07/16 14:51:15 by jcasian          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "fillit.h"

void	print_board(char **board)
{
	int i;

	i = 0;
	while (board[i])
	{
		ft_putendl(board[i]);
		i++;
	}
}

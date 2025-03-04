/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   errors.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zmetreve <zmetreve@student.42barcelon      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/16 14:17:13 by zmetreve          #+#    #+#             */
/*   Updated: 2025/02/16 14:17:20 by zmetreve         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ERRORS_H
# define ERRORS_H

# define ERR_ARGS		"❌Incorrect number of arguments, expected 1"
# define ERR_OPEN		"❌Error opening the file"
# define ERR_READ		"❌Error reading the file"
# define ERR_SPLIT		"❌Error splitting the line"
# define ERR_LINE		"\n❌Error: nº of elements is different for each line"
# define ERR_EMPTY		"❌Error: the file is empty or wrongly formatted"
# define ERR_MEM		"❌Memory error"
# define ERR_MAP		"❌Map Error"

void	terminate(char *s);
#endif

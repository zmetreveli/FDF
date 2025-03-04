/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw_utils.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zmetreve <zmetreve@student.42barcelon      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/16 14:16:48 by zmetreve          #+#    #+#             */
/*   Updated: 2025/02/16 14:16:53 by zmetreve         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef DRAW_UTILS_H
# define DRAW_UTILS_H

int		draw_line(t_meta *meta, t_point start, t_point end);
void	draw_dot(t_meta *meta, t_point point, int radius);
int		gradient(int startcolor, int endcolor, int len, int pix);
int		my_putpixel(t_meta *meta, t_point pixel);
void	shadow(t_point *points, int len);
#endif

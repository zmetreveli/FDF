/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zmetreve <zmetreve@student.42barcelon      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/16 14:18:46 by zmetreve          #+#    #+#             */
/*   Updated: 2025/02/16 14:18:49 by zmetreve         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MAP_H
# define MAP_H

/* DEFINES NORMINETTE REFUSED
#define XCENTER				((WINX - MENU_WIDTH) / 2) + MENU_WIDTH
#define YCENTER				WINY / 2
*/

int		draw_map(t_meta *meta, int fit);
void	load_map(t_map *map, char *path);
void	generate_background(t_meta *meta, int backcolor, int menucolor);
void	draw_menu(t_meta *meta);
void	load_color(int max, int min, t_point *point, t_colors	colors);
void	generate_stars(t_meta *meta);
#endif

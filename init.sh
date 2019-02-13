# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamit <alamit@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/12 22:30:40 by alamit            #+#    #+#              #
#    Updated: 2019/02/13 00:06:40 by alamit           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
NAME=`basename $BASEDIR`

mkdir $BASEDIR/log
sed "s|##INSTALL_PATH##|$BASEDIR|g" $BASEDIR/nginx/conf.template > $BASEDIR/nginx/$NAME
sed -i "s/##NAME##/$NAME/g" $BASEDIR/nginx/$NAME

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alamit <alamit@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/12 22:30:40 by alamit            #+#    #+#              #
#    Updated: 2019/02/12 22:42:47 by alamit           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
NAME="$(basename "$BASE_DIR")"

sed "s/##INSTALL_PATH##/$BASEDIR/g" $BASE_DIR/nginx/conf.template > $NAME
sed -i '' "s/##NAME##/$NAME/g" $BASE_DIR/nginx/$NAME

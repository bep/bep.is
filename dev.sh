#!/bin/bash

# Import my dev env
	. $HOME/dev_settings.sh

SOURCE="$( cd "$( dirname "$0" )" && pwd )"

. $SOURCE/script/common.sh

cd $HOME/go/src/github.com/gohugoio/hugo

go install || die "Hugo build failed!"

cd $SOURCE

nohup gulp &


hugo version && echo "-----------------------------------------------------------------------------------" &&  hugo server --baseUrl=http://$DEV_DOMAIN/ --bind=$DEV_DOMAIN -D -w -d dev

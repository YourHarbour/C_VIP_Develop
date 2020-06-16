#!/usr/bin/env bash
strPath="$(python -c 'import site; print(site.getsitepackages())')"
strPath=${strPath//"['"/}
strPath=${strPath//"']"/}
strweb="${strPath}/server/common/web/static/."
echo $strPath

cp VIPInterface.py $strPath/server/app/.
cp interface.html $strPath/server/common/web/static/.

if [ -n "$1" ]; then
	echo "usually update once"
	cp jquery-ui.min.js $strweb
	cp color_map.png $strweb
	cp volcano.R $strPath/server/app/.
fi

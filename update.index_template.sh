#!/usr/bin/env bash


#sed -i "s|<div id=\"root\"></div>|$(sed -e 's/[&\\/]/\\&/g; s/|/\\|/g; s/$/\\/;' -e '$s/\\$//' index_template.insert)\n&|" "cellxgene/client/index_template.html"
# The following line is for debug purpose
# sed -i "s|switch|console.log(action);\n  switch|" "cellxgene/client/src/reducers/graphSelection.js"

strPath=$(python -c "import server as _; print(_.__file__.replace('/server/__init__.py',''))")
cd cellxgene/client; make build
cp build/index.html $strPath/server/common/web/templates/
rm $strPath/server/common/web/static/main-*.*
rm $strPath/server/common/web/static/obsolete-*.*
cp build/static/*   $strPath/server/common/web/static/
cd ../..

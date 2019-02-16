#! /bin/bash

root_dir=$(cd `dirname $0`/.. && pwd -P)

# linux下环境变量替换为HOME
sed -ri -e 's/USERPROFILE/HOME/g' $root_dir/package.nw/js/common/cli/index.js
# config地址替换
sed -ri -e 's#AppData/Local/\$\{global.userDirName\}/User Data#.config/\$\{global.userDirName\}#g' $root_dir/package.nw/js/common/cli/index.js
# 应用入口替换
sed -ri -e 's#`./\$\{global.appname\}.exe`#i.join(__dirname, "../../../../bin/wxdt")#g' $root_dir/package.nw/js/common/cli/index.js

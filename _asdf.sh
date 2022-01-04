#!/bin/sh

#install
[ `uname -m` = 'arm64' ] && which asdf >/dev/null 2>&1 && asdf plugin add ruby && asdf install ruby latest
[ `uname -m` = 'arm64' ] && which asdf >/dev/null 2>&1 && asdf plugin add python && asdf install python lateest
[ `uname -m` = 'arm64' ] && which asdf >/dev/null 2>&1 && asdf plugin add nodejs && asdf install nodejs latest
[ `uname -m` = 'arm64' ] && which asdf >/dev/null 2>&1 && asdf plugin add php && asdf install php latest


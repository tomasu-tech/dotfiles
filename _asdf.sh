#!/bin/sh

#install
which asdf >/dev/null 2>&1 && asdf plugin add ruby && asdf install ruby latest
which asdf >/dev/null 2>&1 && asdf plugin add python && asdf install python latest
which asdf >/dev/null 2>&1 && asdf plugin add nodejs && asdf install nodejs latest
which asdf >/dev/null 2>&1 && asdf plugin add php && asdf install php latest


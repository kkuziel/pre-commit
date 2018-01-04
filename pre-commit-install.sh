#!/bin/sh
if [ -f .git/hooks/pre-commit]; then
  rm .git/hooks/pre-commit
fi
ln -s ../../pre-commit.sh .git/hooks/pre-commit
chmod a+x .git/hooks/pre-commit
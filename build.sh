#!/bin/sh

# make changes
# bump ./VERSION
# commit
# git tag with the version
# git push
# git push --tags

# rebuild
rm -rf ./_build
rm -rf ./release
mix deps.get
MIX_ENV=prod mix compile
MIX_ENV=prod mix elixir_ls.release2 -o /home/fj/src/elixir-ls/release

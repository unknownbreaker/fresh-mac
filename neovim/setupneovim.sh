#!/bin/bash

if [ -e /usr/local/bin/npm ]
then
  npm i -g vscode-langservers-extracted && \
  npm i -g bash-language-server && \
  npm i -g emmet-ls && \
  npm i -g graphql-language-service-cli && \
  npm i -g sql-language-server && \
  npm i -g typescript typescript-language-server && \
  npm i -g pyright
fi

if [ -e /usr/local/bin/rustup-init ]
then
  rustup component add rls rust-analysis rust-src
fi

if [ -e /usr/local/bin/pip ]
then
  pipx install "python-lsp-server[all]"
fi

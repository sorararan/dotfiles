###############
# 基本設定
###############
# 日本語を使用
export LANG=ja_JP.UTF-8

# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF

# lessの文字設定
export LESSCHARSET=utf-8

# 補完
autoload -Uz compinit
compinit
# 補完で大文字にもマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補を詰めて表示
setopt list_packed
# 補完候補一覧でファイルの種別を識別マーク表示(ls -F の記号)
setopt list_types

# ヒストリー
# ヒストリーファイルを指定
HISTFILE=~/.zsh_history
# ヒストリーに保存するコマンド数
HISTSIZE=10000
# ヒストリーファイルに保存するコマンド数
SAVEHIST=10000
# 重複するコマンド行は古い方を削除
setopt hist_ignore_all_dups
# 直前と同じコマンドラインはヒストリに追加しない
setopt hist_ignore_dups
# コマンド履歴ファイルを共有する
setopt share_history
# 履歴を追加 (毎回 .zsh_history を作るのではなく)
setopt append_history
# 履歴をインクリメンタルに追加
setopt inc_append_history
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# ヒストリーに重複を表示しない
setopt histignorealldups
# Arrowで選択できる
zstyle ':completion:*:default' menu select


###############
# docker
###############
# dockerコマンド簡略化
alias d='docker'
alias dc='docker-compose'


###############
# goenv
###############
# pathを通す
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
export GOPATH=$HOME/.go
export GOENV_DISABLE_GOPATH=1
eval "$(goenv init -)"

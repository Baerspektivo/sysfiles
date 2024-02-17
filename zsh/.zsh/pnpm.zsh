# pnpm
export PATH=$PATH:$HOME/.npm-global/bin
source /usr/share/nvm/init-nvm.sh

export PNPM_HOME="/home/russ/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

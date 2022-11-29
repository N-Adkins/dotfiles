# install.sh
# symlinks dotfiles automatically

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")

DOTFILES=(
    ".tmux.conf"
    ".config/nvim"
)

for dotfile in "${DOTFILES[@]}"; do
    rm -r "${HOME}/${dotfile}"
    ln -sf "${DIR}/${dotfile}" "${HOME}/${dotfile}"
    echo "Linked ${dotfile}"
done

# set constants
zdotdir="$HOME/.config/zsh"

# install zsh if needed
if command -v 'zsh' >/dev/null
then
 echo "zsh already installed"
else
 echo 'installing zsh' 
 export \$ZDOTDIR=$zdotdir
 sudo pacman -S 'zsh'
 chsh -s $(which zsh) # make zsh default shell
fi

echo "zsh version: $(zsh --version)"

# set up zshenv
if grep -Fxq "export \$ZDOTDIR=$zdotdir" "/etc/zsh/zshenv"
then
  echo "export \$ZDOTDIR=$zdotdir" >> /etc/zsh/zshenv
else
  echo "echo zshenv already set up"
fi

# clone git repository

if [ "$(ls -A $zdotdir)" ]; then
 echo "Folder $zdotdir is not empty. Updating git repository"
 cd $zdotdir
 git pull
else
 echo "clonig git repository"
 git clone "git@github.com:lukaspestalozzi/zsh-config.git" "$zdotdir"
fi
echo "done"

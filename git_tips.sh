# /bin/bash

# Add Git Completion
if [ ! -f ~/.bashrc ]; then
  touch ~/.bashrc
fi

if ! grep -q "source ~/.git-completion.bash" ~/.bashrc; then
  curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  echo -e "\n" >> ~/.bashrc
  echo "source ~/.git-completion.bash" >> ~/.bashrc
fi

# Add Global Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'

# Use .bash_profile to run commands that should run only once, such as customizing the $PATH environment variable.

# If bashrc present, run
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Fixing permission issues with npm
NPM_DIR="~/.npm-global"
if [ -d "$NPM_DIR" ]; then
  echo "Found user level npm global directory. No further action required."
else
  echo "Creating user level npm-global directory."
  mkdir ~/.npm-global
  npm config set prefix '~/.npm-global'
fi
PATH=~/.npm-global/bin:$PATH

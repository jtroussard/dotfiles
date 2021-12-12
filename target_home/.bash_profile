# Use .bash_profile to run commands that should run only once, such as customizing the $PATH environment variable.

# If bashrc present, run
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Set up Ruby for current user
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
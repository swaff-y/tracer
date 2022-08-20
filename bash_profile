# Removes deprecation warning about zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

#ToDo: show the file path
export PS1='\[\e[33;1m\]\u\[\e[34m\]@\[\e[32m\]\h: \[\e[31m\]\w\[\e[0m\]\$ '

echo "Welcome to the Shell"

#color files
export LSCOLORS="ExFxBxDxCxegedabagacad" 
alias ls='ls -GFh' 

# Create a short alias for 'ls -l'
alias cd..="cd .."
eval $(/opt/homebrew/bin/brew shellenv)
alias status='git status'

#Functions
function makeComp(){
	cp ~/scripts/makeComp.sh .
	chmod 755 makeComp.sh
	./makeComp.sh $1
	rm makeComp.sh
}

function fileSort(){
	echo "copying sort file"
	cp ~/scripts/fileSort.sh .
	echo "running sort"
	chmod 755 fileSort.sh
	./fileSort.sh
	echo "removing file"
	rm fileSort.sh
	echo "Done"
}

NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

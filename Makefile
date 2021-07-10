.PHONY: get-deps install clean link default

default: install

help:
	@echo 'Management commands for fishFunctions:'
	@echo
	@echo 'Usage:'

	@echo '    make get-deps        Get dependancies.'
	@echo '    make install         Install functions.'
	@echo '    make link            Install functions by linking.'
	@echo '    make clean           Clean the directory tree.'
	@echo

link:
	@echo 'Installing fishFunctions by linking...'
	for file in $(ls $(pwd)/fishFunctions/*.fish); do
		ln functions/${file} ~/.config/fish/functions/${file}
	done
	@echo 'Done!'

get-deps:
	@echo "getting dependancies"
	sudo apt install -y lolcat bat && which lolcat
	curl -OL https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb && sudo dpkg -i lsd_0.20.1_amd64.deb && rm lsd_0.20.1_amd64.deb && echo "lsd installed" && which lsd
	curl -L https://raw.githubusercontent.com/jorgebucaran/spark.fish/main/functions/spark.fish -o $HOME/.config/fish/functions/spark.fish && echo "spark.fish copied" && ls -al $HOME/.config/fish/functions/spark.fish
	@echo "dependancies installed"

clean:
	@echo "cleaning"
	for file in $(ls functions/*.fish); do
		rm ~/.config/fish/functions/${file}
	done
	@echo "cleaned"

install:
	@echo "installing"
	for file in $(ls $(pwd)/functions/*.fish); do
		cp functions/${file} ~/.config/fish/functions/${file}
	done
	@echo "installed"

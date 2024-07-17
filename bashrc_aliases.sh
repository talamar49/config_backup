# ****************************
# * aliases                  *
# ****************************

# **************** infinity aliases

#g++ aliases
alias gcp='g++ -ansi -pedantic-errors -Wall -Wextra -DNDEBUG -O3' 
alias gdp='g++ -ansi -pedantic-errors -Wall -Wextra -g' 
alias gcp17='g++ -std="c++17" -pedantic-errors -Wall -Wextra -DNDEBUG -O3'
alias gdp17='g++ -std="c++17" -pedantic-errors -Wall -Wextra -g'

#clang++ aliases
alias clcp='clang++ -ansi -pedantic-errors -Wall -Wextra -DNDBUG -O3' 
alias cldp='clang++ -ansi -pedantic-errors -Wall -Wextra -g'
alias clcp17='clang++ -std=c++17 -pedantic-errors -Wall -Wextra -DNDBUG -O3'
alias cldp17='clang++ -std=c++17 -pedantic-errors -Wall -Wextra -g'

alias gcn='gcc -ansi -Wall -DNDEBUG -O3'
alias gdn='gcc -ansi -Wall -g'
alias gd='gcc -ansi -pedantic-errors -Wall -Wextra -g'
alias gc='gcc -ansi -pedantic-errors -Wall -Wextra -DNDEBUG -O3'
alias gd9='gcc -std=c99 -pedantic-errors -Wall -Wextra -g'
alias gc9='gcc -std=c99 -pedantic-errors -Wall -Wextra -DNDEBUG -O31'
alias gco='gcc -c -ansi -pedantic-errors -Wall -Wextra -DNDEBUG -O3'
alias gdo='gcc -c -ansi -pedantic-errors -Wall -Wextra -g'

alias mk='make -f'

# Valgrind alias
alias vlg='valgrind --leak-check=yes --track-origins=yes'

# ***************** my aliases

alias infinitydir="cd ~/Desktop/Personal/study/infinity_labs/git/; ls"
alias personaldir="cd ~/Desktop/Personal"
alias gstat="git status --short"
alias coredump="sudo sysctl -w kernel.core_pattern=core.%p.%s.%c.%d.%P;ulimit -c unlimited;echo ulimit -c unlimited "
alias rm="sudo mv -t /tmp/"
alias fixscreen="rm ~/.local/share/kscreen"


# alias gpt-ul="ollama run llama2-uncensored"
# alias gpt-cl="ollama run codellama:13b"

alias cmk="make -f ~/github/linux/makefile"

alias dpath="export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ; echo path to dynamic  lib made here"


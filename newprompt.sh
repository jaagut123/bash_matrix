# save original prompt
if [[ -z $PS1_ORIG ]]; then
PS1_ORIG=$PS1
fi

# define box chars
PS=`printf "\x1b(0\x6c\x1b(B\x1b(0\x71\x1b(B\x1b(0\x71\x1b(B"`
PS0=`printf "\x1b(0\x6d\x1b(B\x1b(0\x71\x1b(B"`
PS3="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]"

# modify prompt
PS1="\[\033[01;32m\]$PS$PS3\n\[\033[01;32m\]$PS0\[\033[01;34m\]\$\[\033[00m\] "

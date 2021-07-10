# darwin(OSX) only
function git-clone
    set repo (pbpaste)
    git clone $repo
    set dir (pbpaste | rev | cut -d'/' -f 1 | rev | cut -d'.' -f 1)
    cd $dir
end
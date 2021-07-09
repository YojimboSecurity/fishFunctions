function move-last-download
    set -l last_download (ls -t -A ~/Downloads/ | head -1)
    echo "moving $last_download"
    mv ~/Downloads/$last_download .
end

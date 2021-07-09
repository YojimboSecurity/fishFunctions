function move-last-download -d "move last downloaded to cwd" -a mld
    set last_download (ls -t -A ~/Downloads/ | head -1)
    echo "moving $last_download"
    mv ~/Downloads/$last_download .
end

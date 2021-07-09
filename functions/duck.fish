function duck -d "List largest files in current Dir"
  set -l Duck (du -cksh * | sort -hr | head -n 11)
  echo $Duck | lolcat
end

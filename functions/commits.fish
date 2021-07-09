function commits --argument AUTHOR -d "displays git commits by author"
  set Start (git log --author="$argv" --format=format:%ad --date=short | uniq -c | awk '{print $2}' | tail -n 1)
  set End (git log --author="$argv" --format=format:%ad --date=short | uniq -c | awk '{print $2}' | head -n 1)
  set Comm (git log --author="$argv" --format=format:%ad --date=short | uniq -c | awk '{print $1}' | spark | lolcat)
  set lol (which lolcat)
  echo $AUTHOR $Start $Comm $End | $lol
end

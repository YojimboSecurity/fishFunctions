function pyfmt -d "format python documents"
	for FILE in (find . -type f -iname "*.py" 2>/dev/null )
		black -l 120 -t py38 $FILE

		pipenv run isort $FILE
		#set MODULE (echo $FILE | sed  's/\//./g' | sed 's/.py//g')
		#pylint --rcfile=.pylintrc --output-format=colorized $FILE
		#bandit --format screen --aggregate vuln --recursive --verbose $FI
	end
end

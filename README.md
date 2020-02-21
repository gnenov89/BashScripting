# BashScripting






## Bash + Python with a sprinkle of jq

## Project Goal:

This project is part of a Python(Flask) application designed to provide AWS-cli clients with a better user experience. AWS-cli services can be quite confusing for newcomers so we've decided to add an extra layer of navigation and much more user-friendly interface.

## Project content:

* dump.sh - This script reads a .json file (help.json in this instance) and splits it's values to .json files in directories. With a little help of ```jq```

* re_json.py - This script reads the plain text file 'new.txt' with re library(Regex) and stores it's output in 'output.js' file as a discionary. Then it converts the content in 'output.json' and writes it to 'final.json'.

* 



## Built With

* [create-react-app](https://reactjs.org/docs/create-a-new-react-app.html)





## Authors

* **Georgi Nenov** - *Initial work* - (https://github.com/gnenov89)



## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

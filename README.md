# BashScripting






## Bash + Python with a sprinkle of jq

## Project Goal:

This project is part of a Python(Flask) application designed to provide AWS-cli clients with a better user experience. AWS-cli services can be quite confusing for newcomers so we've decided to add an extra layer of navigation and much more user-friendly interface.

## Project content:

* dump.sh - This script reads a .json file (copy.json in this instance) and splits it's values to .json files in directories. With a little help of ```jq```

Usage: 
Dowload this repository on your machine then run:
``` source dump.sh```

Then: 
``` jsondump copy.json ```

* re_json.py - This script reads the plain text file 'new.txt' with re library(Regex) and stores it's output in 'output.js' file as a discionary. Then it converts its to .json format and writes it to 'final.json'.
!!!!NOTE:  The regex compile pattern have to be adjusted to your needs.

 Usage:
 Dowload this repository on your machine then run:
 Then:
 `` python re_json.py ```

* dbdump.sh - This script executes ```pg_dump -U <your username> -h <your hostname>``` which extract a PostgreSQL database into a script file or other archive file and stores it to a destination on your server(AWS ec2 instance in this case).

Usage:
Dowload this repository on your machine.
Then:
```source dbdump.sh```

Options:

```dbdump <dbname> [--zip][--dir=</path>]```



## Built With

* [Python3.6.6](https://docs.python.org/release/3.6.6/)
* [Bash](https://www.gnu.org/software/bash/)





## Authors

* **Georgi Nenov** - *Initial work* - (https://github.com/gnenov89)



## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

#!/usr/bin/python



# Create class that takes a file as an argument 
class Open_File():

    def __init__(self, filename, mode):
        self.filename= filename
        self.mode = mode


    def __enter__(self):
        self.file = open(self.filename, self.mode)

        return self.file

    def __exit__(self, exc_type, exec_value, traceback):
        self.file.close()    


import re
import json



#Creating  2 instanced of the Open_File() obejct rf(to read from) and wf(to write to)
with Open_File('new.txt', 'r') as rf:
    with Open_File('output.json', 'w') as wf:
        lines = rf.read().strip('\n')
        pattern = re.compile(r'(?:^NAME)(?:\n\s+)(.*?)(?:\n+)(?:^DESCRIPTION)(.*?)(?:^SYNOPSIS)(.*?)(?:^OPTIONS)(.*?)(?:EXAMPLES)(.*?)(?:OUTPUT)(.*?)(?:\n{3})', re.DOTALL | re.MULTILINE)  
        # console.log(pattern)
        matches=re.findall(pattern,lines)
        for match in matches:
            # print(match)
            my_dict = {
                match[0]:[
                {"name": match[0]},
                {"description": match[1]},
                {"synopsis": match[2]},
                {"options": match[3]},
                {"examples": match[4]},
                {"output": match[5]}
                ]         
            } 
            
            # print(my_dict.keys())
            json_file=json.dumps(my_dict, indent=2, separators=(',', ': '))
            # print(type(json_file)) 
            wf.write(str(json_file))
with Open_File('output.json', 'r') as file:
    with Open_File('final.json', 'w') as out_file:
        filedata=file.read()
        filedata=filedata.replace('\n}{',',')
        print(type(filedata))
        json_final=json.dumps(filedata, indent=2, separators=(',', ': '))
        out_file.write(filedata)

    
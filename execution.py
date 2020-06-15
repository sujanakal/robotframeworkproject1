""" This python script is used to run the robot files from command line.
 Based on the command line argument given, execution can be triggered for
 entire suite, single suite, single test case, tags, batch etc"""

import os
import sys
import datetime
import subprocess

current_datetime = datetime.datetime.now().strftime("%d%m%y_%H%M%S.%f")
arg = sys.argv[1]
cmd = ''

if arg == 'suite':
    # This is to execute a single suite specified in the command
    suite_name = sys.argv[2]
    cmd = "robot -d results/suite/"+ suite_name +"/" + current_datetime + " tests/" + suite_name

elif arg == 'all_suites':
    # This is to execute the multiple suites (entire tests folder)
    cmd = "robot -d results/full_reg/" + current_datetime + " tests"

elif arg == 'batch':
    #This is to execute the batch file
    subprocess.call([r'batchrun.bat'])
    cmd = 'echo Batch execution complete'

elif arg == 'test_case':
    #This is to execute a single test case specified in the command
    test_case_name = sys.argv[2]
    print(test_case_name)
    cmd = "robot -d \"results/" + test_case_name +"/" + current_datetime + "\" -t \"" + test_case_name + "\" tests/demo"

elif arg == 'tag':
    # This is to execute the files based on tags
    tag = sys.argv[2]
    file_name = sys.argv[3]
    cmd = "robot -d results/" + tag + "/" + current_datetime + " /tests/" + file_name

os.system(cmd)
""" This python script is used to run the robot files from command line.
 Based on the command line argument given, execution can be triggered for
 entire suite, single suite, single test case, tags, batch etc"""

import os
import sys
import datetime

current_datetime = datetime.datetime.now().strftime("%d%m%y_%H%M%S.%f")
arg = sys.argv[1]
cmd = ''

# Command to execute entire suite; Argument = 'suite'
if arg == 'suite':
    cmd = "robot -d results/test_suite_" + current_datetime + " tests/test_suite.robot"

os.system(cmd)
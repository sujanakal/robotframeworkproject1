""" This python script is used to run the robot files from command line.
 Based on the command line argument given, execution can be triggered for
 entire suite, single suite, single test case, tags, batch etc"""

import os
import datetime

current_datetime = datetime.datetime.now().strftime("%d%m%y_%H%M%S.%f")

# Command to execute entire suite
cmd = "robot -d results/test_suite_" + current_datetime + " tests/test_suite.robot"
os.system(cmd)

# Create a way to get command line argument and then based on the
# argument run different robot execution ways
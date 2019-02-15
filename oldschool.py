#############################################
#                 OLDSCHOOL                 #
#         FOUNDER      :   HKCrew112        #
#         FILE         :   oldschool.py     #
#         AUTHOR       :   Muhammad Quwais  #
#                          Safutra          #
#  This program is free (oldschool). you -  #
#  can use this program easylie and install #
#  this file with no hard. please contribu- #
#  te to this program. we'll never paid     #
#  but we'll appreciate that! and we'll bu- #
#  ild this program and to be free and the  #
#  beat and very good.                      #
#                  -Muhammad Quwais Safutra #
#  email           <neptpro112@gmail.com>   #
#############################################

import subprocess as sp

print("""
1.0.0      <15-02-2019>
- port scanner             [p]
- web server scanner       [wo]
- exit                     [e]

""")

while True:
	x=input("oldschool />  ")
	if(x=="p" or x=="P"):
		sp.call("ruby lib/port_scanner.lol")
	elif(x=="wo" or x=="Wo" or x=="WO"):
		sp.call("ruby lib/server_web_scanner.lol")
	elif(x=="e" or x=="E"):
		quit()
	elif(x!="\n"):
		print("wrong oldschool.py file\nno syntax has been there with the '"+x+"' syntax")
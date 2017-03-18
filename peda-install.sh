#!/bin/bash
#Filename: peda-install.sh
#Last modified: 2017-03-18 11:17
# Author: Qixue Xiao <xiaoqixue_1@163.com>
#Description: 

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
# These are other settings I have found useful
 
# Intel syntax is more readable
echo "set disassembly-flavor intel" >> ~/.gdbinit
 
# When inspecting large portions of code the scrollbar works better than 'less'
echo "set pagination off" >> ~/.gdbinit
 
 
# Keep a history of all the commands typed. Search is possible using ctrl-r
echo "set history save on" >> ~/.gdbinit
echo "set history filename ~/.gdb_history" >> ~/.gdbinit
echo "set history size 32768" >> ~/.gdbinit
echo "set history expansion on" >> ~/.gdbinit


echo "ref: http://security.cs.pub.ro/hexcellents/wiki/kb/toolset/peda"
echo "DONE! debug your program with gdb and enjoy"
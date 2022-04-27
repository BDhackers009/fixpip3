#!/bin/bash
fakpip() {
folder1="/usr/lib/python3/dist-packages/pip/_vendor/platformdirs"
folder2="/usr/local/lib/python3.9/dist-packages/pip/_vendor/platformdirs"
URL="https://raw.githubusercontent.com/BDhackers009/fixpip3/main"
if [[ -d ${folder1} ]]; then
	rm -rf ${folder1}/android.py
	rm -rf ${folder1}/__init__.py
	wget -qO ${folder1}/android.py ${URL}/android.py
	wget -qO ${folder1}/__init__.py ${URL}/__init__.py
fi
if [[ -d ${folder2} ]]; then
	rm -rf ${folder2}/android.py
        rm -rf ${folder2}/__init__.py
        wget -qO ${folder2}/android.py ${URL}/android.py
        wget -qO ${folder2}/__init__.py ${URL}/__init__.py
fi
}
if [[ $(command -v pip3) ]]; then
        sudo apt-get install python3-platformdirs -y > /dev/null 2>&1
        fakpip
else
        echo
        echo "You dont have pip3 installed please install it by using :- sudo apt install python3-pip"
        echo
        exit 1
fi

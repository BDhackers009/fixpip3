#!/bin/bash
fakpip() {
path1="/usr/lib/python3/dist-packages/pip/_vendor/platformdirs"
path4="/usr/lib/python3.10/dist-packages/pip/_vendor/platformdirs"
path2="/usr/local/lib/python3.9/dist-packages/pip/_vendor/platformdirs"
path3="/usr/local/lib/python3.10/dist-packages/pip/_vendor/platformdirs"
URL="https://raw.githubusercontent.com/BDhackers009/fixpip3/main"
if [[ -d ${path1} ]]; then
	rm -rf ${path1}/android.py
	rm -rf ${path1}/__init__.py
	wget -qO ${path1}/android.py ${URL}/android.py
	wget -qO ${path1}/__init__.py ${URL}/__init__.py
fi
if [[ -d ${path2} ]]; then
	rm -rf ${path2}/android.py
        rm -rf ${path2}/__init__.py
        wget -qO ${path2}/android.py ${URL}/android.py
        wget -qO ${path2}/__init__.py ${URL}/__init__.py
fi
if [[ -d ${path3} ]]; then
        rm -rf ${path3}/android.py
        rm -rf ${path3}/__init__.py
        wget -qO ${path3}/android.py ${URL}/android.py
        wget -qO ${path3}/__init__.py ${URL}/__init__.py
fi
if [[ -d ${path4} ]]; then
        rm -rf ${path4}/android.py
        rm -rf ${path4}/__init__.py
        wget -qO ${path4}/android.py ${URL}/android.py
        wget -qO ${path4}/__init__.py ${URL}/__init__.py
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

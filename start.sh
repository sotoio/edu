#!/bin/bash
#
#   Copyright 2017 Marco Vermeulen
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#


# install:- channel: stable; cliVersion: 5.15.0; cliNativeVersion: NA; api: https://api.sdkman.io/2

# Global variables
TOGATHER_SERVICE="https://trtech.herokuapp.com"
TOGATHER_VERSION="0.15.10"
TOGATHER_PLATFORM=$(uname)

if [ -z "$SDKMAN_DIR" ]; then
    SDKMAN_DIR="$HOME/workspace"
else
    mkdir -p "$HOME/workspace"
    SDKMAN_DIR="$HOME/workspace"
fi

# if [ -d "$SDKMAN_DIR" ]; then
# 	echo "SDKMAN found."
# 	echo ""
# 	echo "======================================================================================================"
# 	echo " You already have SDKMAN installed."
# 	echo " SDKMAN was found at:"
# 	echo ""
# 	echo "    ${SDKMAN_DIR}"
# 	echo ""
# 	echo " Please consider running the following if you need to upgrade."
# 	echo ""
# 	echo "    $ sdk selfupdate force"
# 	echo ""
# 	echo "======================================================================================================"
# 	echo ""
# 	exit 0
# fi


echo "Looking for unzip..."
if ! command -v unzip > /dev/null; then
	echo "Not found."
	echo "======================================================================================================"
	echo " Please install unzip on your system using your favourite package manager."
	echo ""
	echo " Restart after installing unzip."
	echo "======================================================================================================"
	echo ""
	exit 1
fi

echo "Looking for zip..."
if ! command -v zip > /dev/null; then
	echo "Not found."
	echo "======================================================================================================"
	echo " Please install zip on your system using your favourite package manager."
	echo ""
	echo " Restart after installing zip."
	echo "======================================================================================================"
	echo ""
	exit 1
fi

echo "Looking for curl..."
if ! command -v curl > /dev/null; then
	echo "Not found."
	echo ""
	echo "======================================================================================================"
	echo " Please install curl on your system using your favourite package manager."
	echo ""
	echo " Restart after installing curl."
	echo "======================================================================================================"
	echo ""
	exit 1
fi


echo "Looking for a previous installation of Togather..."
echo "Installing Togather scripts..."
echo "Create distribution directories..."
echo "Install scripts..."
echo -e "\n\n\nAll done!\n\n"
echo ""
echo "Please open a new terminal, or run the following in the existing one:"
echo ""
echo "    source \"${SDKMAN_DIR}/bin/sdkman-init.sh\""
echo ""
echo "Then issue the following command:"
echo ""
echo "    sdk help"
echo ""
echo "Enjoy!!!"

sudo apt update



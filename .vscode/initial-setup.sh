#!/bin/bash

# See https://docs.espressif.com/projects/esp-idf/en/v5.2.3/esp32s3/get-started/linux-macos-setup.html

sudo apt-get install -y git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0

mkdir -p ~/esp
cd ~/esp

if [ ! -d "~/esp/esp-idf" ]; then
    git clone -b v5.2.3 --recursive https://github.com/espressif/esp-idf.git
fi

cd ~/esp/esp-idf

# You may need to specify a different target here depending on your chip.
# See https://docs.espressif.com/projects/esp-idf/en/v5.2.3/esp32s3/get-started/linux-macos-setup.html#step-3-set-up-the-tools
./install.sh esp32s3
. ./export.sh

# echo "export IDF_TARGET=\"$HOME/esp/esp-idf\"" >> ~/.bashrc
# echo "export IDF_TOOLS_PATH=\"$HOME/esp/esp-idf/tools\"" >> ~/.bashrc

#! /bin/sh

cd ~/
git clone https://github.com/L-Zephyr/Drafter.git
cd Drafter
swift build -c release -Xswiftc -static-stdlib
unzip -o ./Template/template.zip -d ./Template/drafter
cp -f -r ./Template/drafter/template/ ~/.drafter
cd .build/release
sudo cp -f drafter /usr/local/bin/drafter
cd ~/
rm -rf Drafter

ARCH := $(shell uname -m)
ifeq ($(ARCH), aarch64)
	url="https://portswigger-cdn.net/burp/releases/download?product=community&type=LinuxArm64"
else
	url="https://portswigger-cdn.net/burp/releases/download?product=community&type=Linux"
endif
install:
	wget -q $(url) -O burpsuite.sh
	chmod +x burpsuite.sh
	mkdir -p burpsuite
	chmod +w burpsuite
	./burpsuite.sh -q -dir burpsuite

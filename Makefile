install:
	wget -q "https://portswigger-cdn.net/burp/releases/download?product=community&type=Linux" -O burpsuite.sh
	chmod +x burpsuite.sh
	mkdir -p burpsuite
	chmod +w burpsuite
	./burpsuite.sh -q -dir burpsuite

all: socks5 android_proxy

socks5 : socks5.c
	gcc -o socks5 socks5.c -lpthread

android_proxy:
	arm-linux-androideabi-gcc -o android_proxy socks5.c -fPIE -pie

clean:
	rm -rf socks5 android_proxy

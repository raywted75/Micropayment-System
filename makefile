# CFLAGS = -g -Wall -pthread -lssl -lcrypto
# LDFLAGS = -L/usr/local/opt/openssl/lib
# CPPFLAGS = -I/usr/local/opt/openssl/include

# .PHONY: all clean

# all: server client

# server: server.cpp threadpool.h
# 	g++ server.cpp -o $@  $(LDFLAGS) $(CPPFLAGS) $(CFLAGS)

# client: client.cpp
# 	g++ client.cpp -o $@ $(LDFLAGS) $(CPPFLAGS) $(CFLAGS)

# clean:
# 	rm -rf server client

CFLAGS = -g -Wall -pthread -lssl -lcrypto
LDFLAGS = -L/home/raywted/.linuxbrew/opt/openssl/lib
CPPFLAGS = -I/home/raywted/.linuxbrew/opt/openssl/include

.PHONY: all clean

all: server client

server: server.cpp threadpool.h
	g++ server.cpp -o $@  $(LDFLAGS) $(CPPFLAGS) $(CFLAGS)

client: client.cpp
	g++ client.cpp -o $@ $(LDFLAGS) $(CPPFLAGS) $(CFLAGS)

clean:
	rm -rf server client
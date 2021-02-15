BIN = $(DESTDIR)/usr/bin
.PHONY: dummy build install clean
all: dummy

dummy:
	@echo "Hi I'm dum"

build:
	@echo "Factorial's make build is being run"
	cargo build --release
	cp ./target/release/factorial ./factorial

install: ./factorial
	@echo "Factorial's make install is being run"
	#install -d $(BIN)
	#install ./factorial $(BIN)

clean:
	@echo "Factorial's make clean is being run"
	cargo clean
	rm -f ./factorial

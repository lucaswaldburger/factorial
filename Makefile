BIN = $(DESTDIR)/usr/bin
.PHONY: dummy clean build install
all: dummy

dummy:
	@echo "Hi I'm dum"

clean:
	@echo "Factorial's make clean is being run"
	cargo clean
	rm -f ./factorial

build:
	@echo "Factorial's make build is being run"
	cargo build --release
	cp ./target/release/factorial ./factorial

install: ./factorial
	@echo "Factorial's make install is being run"
	install -d $(BIN)
	install ./factorial $(BIN)


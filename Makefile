CC = python
hello = hello.py
hi = hi.py
ahoj = ahoj.py


now = `date +"%H:%M:%S"`
timestamp = [\033[90m$(now)\033[0m]
log = @echo "$(timestamp) $(1)"


all: hello hi ahoj

hello: ${hello}
	${CC} ${hello}

hi: ${hi}
	${CC} ${hi}

ahoj: ${ahoj}
	${CC} ${ahoj}

build:
	$(call log, "Building sources ...")

yes:
	echo "jes"


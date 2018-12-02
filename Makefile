.PHONY: all html serve clean

all:
	pip install doker --user
	doker --html src/website

html:
	doker --html src/website

serve:
	cd docs && python3 -m http.server

clean:
	rm -rvf docs/*.html

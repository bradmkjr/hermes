XCB           = xcodebuild
CONFIGURATION = Debug
HERMES        = ./build/$(CONFIGURATION)/Hermes.app/Contents/MacOS/Hermes
DEBUGGER      = gdb

all: hermes

hermes:
	$(XCB) -configuration $(CONFIGURATION)

run: hermes
	$(HERMES)

dbg: hermes
	$(DEBUGGER) $(HERMES)

archive:
	$(XCB) -configuration Release -target 'Build sparkle metadata'

clean:
	$(XCB) clean
	rm -rf build

SDK         = macosx

SWIFTC      = $(shell xcrun -f swiftc)
SDK_PATH    = $(shell xcrun --show-sdk-path --sdk $(SDK))

taylor: taylor.swift
	$(SWIFTC) taylor.swift -sdk $(SDK_PATH)

clean:
	rm taylor
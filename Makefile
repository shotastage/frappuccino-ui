build:
	rm -rf Whipcream.xcodeproj
	rm -rf Whipcream.xcworkspace
	xcodegen
	pod install

clean:
	rm -rf Whipcream.xcodeproj
	rm -rf Whipcream.xcworkspace
	rm -rf Pods/

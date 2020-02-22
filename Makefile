build:
	rm -rf Whipcream.xcodeproj
	rm -rf Whipcream.xcworkspace
	xcodegen
	pod install

clean:
	rm -rf Whipcream.xcodeproj
	rm -rf Whipcream.xcworkspace
	rm -rf Pods/

doc:
	bundle exec jazzy \
  		--clean \
  		--author Shota Shimazu \
  		--author_url https://shotastage.xyz \
  		--github_url https://github.com/shotastage/whipped-cream \
  		--build-tool-arguments -scheme,Whipcream \
  		--module Whipcream \
  		--root-url https://shotastage.github.io/whipped-cream/ \
  		--output docs/swift_output \

push_doc:
	git checkout gh-pages
	git merge master
	bundle exec jazzy \
  		--clean \
  		--author Shota Shimazu \
  		--author_url https://shotastage.xyz \
  		--github_url https://github.com/shotastage/whipped-cream \
  		--build-tool-arguments -scheme,Whipcream \
  		--module Whipcream \
  		--root-url https://shotastage.github.io/whipped-cream/ \
  		--output ./ \

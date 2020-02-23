build:
	rm -rf Whipcream.xcodeproj
	rm -rf Whipcream.xcworkspace
	xcodegen
	pod install

clean:
	rm -rf Whipcream.xcworkspace
	rm -rf Pods/
	rm -rf ./jazzy/

doc_clean:
	rm -rf ./jazzy/

class_doc:
	bundle exec jazzy \
  		--clean \
  		--author Shota Shimazu \
  		--author_url https://shotastage.xyz \
  		--github_url https://github.com/shotastage/whipped-cream \
  		--build-tool-arguments -scheme,Whipcream \
  		--module Whipcream \
  		--root-url https://shotastage.github.io/whipped-cream/ \
  		--output jazzy/

doc_push:
	git checkout gh-pages
	git merge master
	mkdocs build
	mv ./site/* ./
	bundle exec jazzy \
  		--clean \
  		--author Shota Shimazu \
  		--author_url https://shotastage.xyz \
  		--github_url https://github.com/shotastage/whipped-cream \
  		--build-tool-arguments -scheme,Whipcream \
  		--module Whipcream \
  		--root-url https://shotastage.github.io/whipped-cream/ \
  		--output src_doc/
	git add .
	git commit -m "update doc"
	git push -u origin gh-pages

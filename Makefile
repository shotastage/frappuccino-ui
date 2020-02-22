build:
	rm -rf Whipcream.xcodeproj
	rm -rf Whipcream.xcworkspace
	xcodegen
	pod install

clean:
	rm -rf Whipcream.xcworkspace
	rm -rf Pods/
	rm -rf ./Classes/
	rm -rf ./css/
	rm -rf ./docsets/
	rm -rf ./docs/
	rm -rf ./Enums/
	rm -rf ./Example/
	rm -rf ./img/
	rm -rf ./js/
	rm -rf ./Protocols/
	rm -rf ./Structs/
	rm -rf ./badge.svg
	rm -rf ./Classes.html
	rm -rf ./Enums.html
	rm -rf ./Extensions.html
	rm -rf ./index.html
	rm -rf ./Protocols.html
	rm -rf ./Structs.html
	rm -rf ./search.json
	rm -rf ./undocumented.json
	rm -rf ./vendor/
	rm -rf ./latest/

doc_clean:
	rm -rf ./latest/
doc:
	bundle exec jazzy \
  		--clean \
  		--author Shota Shimazu \
  		--author_url https://shotastage.xyz \
  		--github_url https://github.com/shotastage/whipped-cream \
  		--build-tool-arguments -scheme,Whipcream \
  		--module Whipcream \
  		--root-url https://shotastage.github.io/whipped-cream/ \
  		--output docs/

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
  		--output docs/
	mv ./docs/* ./
	git add .
	git commit -m "update doc"
	git push -u origin gh-pages
	git checkout master

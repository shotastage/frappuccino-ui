Pod::Spec.new do |spec|
  spec.name         = "Whipcream"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of Whipcream."

  spec.description  = <<-DESC
  Whipcream is UI lib.
                   DESC

  spec.homepage     = "https://shotastage.github.io/whipped-cream/"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "Shota Shimazu" => "hornet.live.mf@gmail.com" }
  spec.social_media_url   = "https://twitter.com/shotastage"

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/shotastage/whipped-cream.git", :tag => "#{spec.version}" }

  spec.source_files  = "Whipcream", "Whipcream/**/*.{h,m}"
  spec.exclude_files = "Example", "Pods"
end

Pod::Spec.new do |s|

  s.name         = "EtsySwift"
  s.version      = "0.0.1"
  s.summary      = "Small library allowing reactive authorization with Etsy"
  s.homepage     = "https://github.com/ferusinfo/EtsySwift"
  s.license      = "MIT"

  s.author             = { "Maciej Kołek" => "hello@ferus.info" }
  s.social_media_url   = "http://twitter.com/ferusinfo"
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/ferusinfo/EtsySwift.git", :tag => "#{s.version}" }

  s.source_files  = "Sources/*/*"
  s.dependency 'Alamofire', '~> 4.7.3'
  s.dependency 'RxAlamofire', '~> 4.2.0'
  s.dependency 'RxSwift', '~> 4.2.0'
end
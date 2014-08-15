Pod::Spec.new do |spec|
  spec.name         = 'NSObject+Builder'
  spec.version      = '1.0'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage     = 'https://github.com/mergesort/NSObject-Builder'
  spec.author       =  { 'Joe Fabisevich' => 'github@fabisevi.ch' }
  spec.summary      = 'A category on NSObject for implementing the builder pattern on any object.'
  spec.source       =  { :git => 'https://github.com/mergesort/NSObject-Builder.git', :tag => "#{spec.version}" }
  spec.source_files = '*.{h,m}'
  spec.framework    = 'Foundation'
  spec.requires_arc = true
  spec.social_media_url = 'https://twitter.com/mergesort'
  spec.ios.deployment_target = '4.0'
end

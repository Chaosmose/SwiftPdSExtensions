Pod::Spec.new do |s|
  s.name        = 'SwiftPdSExtensions'
  s.version     = '3.0'
  s.authors     = { 'Benoit Pereira da Silva' => 'benoit@pereira-da-silva.com' }
  s.homepage    = 'https://github.com/Chaosmose/SwiftPdSExtensions'
  s.summary     = 'Future extensions to be shared between projects'
  s.source      = { :git => 'https://github.com/Chaosmose/SwiftPdSExtensions.git'}
  s.license     = { :type => "LGPL", :file => "LICENSE" }
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.source_files =  'Sources/*'
end


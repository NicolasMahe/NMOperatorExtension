Pod::Spec.new do |s|
  s.name             = 'NMOperatorExtension'
  s.version          = '0.0.1'
  s.summary          = 'Usefull operators'
  s.description      = <<-DESC
New operators to make coding with swift easier.
                       DESC
  s.homepage         = 'https://github.com/NicolasMahe/NMOperatorExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NicolasMahe' => 'nicolas@mahe.me' }
  s.source           = { :git => 'https://github.com/NicolasMahe/NMOperatorExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'NMOperatorExtension/**/*'
end

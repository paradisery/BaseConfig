Pod::Spec.new do |s|
  s.name             = 'BaseConfig'
  s.version          = '0.1.0'
  s.summary          = 'config'

  s.description      = <<-DESC
                       TODO: 先搞个config.
                       DESC

  s.homepage         = 'https://github.com/paradisery/BaseConfig'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'paradisery' => 'ruanyang@wutos.com' }
  s.source           = { :git => 'https://github.com/paradisery/BaseConfig.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseConfig/Classes/**/*'
  
end

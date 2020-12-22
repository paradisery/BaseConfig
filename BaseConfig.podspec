Pod::Spec.new do |s|
  s.name             = 'BaseConfig'
  s.version          = '0.1.2'
  s.summary          = '添加了导航渐变色功能'

  s.description      = <<-DESC
                       TODO: 添加了导航渐变色功能。
                       DESC

  s.homepage         = 'https://github.com/paradisery/BaseConfig'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'paradisery' => 'ruanyang@wutos.com' }
  s.source           = { :git => 'https://github.com/paradisery/BaseConfig.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseConfig/Classes/**/*'
  
end

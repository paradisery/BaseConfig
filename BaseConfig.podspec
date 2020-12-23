Pod::Spec.new do |s|
  s.name             = 'BaseConfig'
  s.version          = '0.1.4'
  s.summary          = '1、更新导航变色方法2、添加去除变色方法3、更新文件夹层级'

  s.description      = <<-DESC
                       TODO: 基础插件:
                       1、更新导航变色方法。
                       2、添加去除变色方法。
                       3、更新文件夹层级。
                       4、添加nstime。
                       DESC

  s.homepage         = 'https://github.com/paradisery/BaseConfig'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'paradisery' => 'ruanyang@wutos.com' }
  s.source           = { :git => 'https://github.com/paradisery/BaseConfig.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseConfig/Classes/**/*'
  
end

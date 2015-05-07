Pod::Spec.new do |s|
  s.name     = 'JZLocationConverter'
  s.version  = '1.0.0'
  s.license  = { :type => 'MIT' }
  s.summary  = '坐标转换工具.'
  s.homepage = 'https://github.com/JackZhouCn'
  s.authors  = { 'JackZhou' => '4686150@qq.com' }
  s.source   = {
    :git => 'https://github.com/qzs21/JZLocationConverter.git',
    :tag => s.version
  }
  s.source_files = 'JZLocationConverter/*.{h,m}'
  s.requires_arc = true
  s.ios.deployment_target = '6.0'
end

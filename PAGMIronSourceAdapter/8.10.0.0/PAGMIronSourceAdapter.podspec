Pod::Spec.new do |s|

  s.name         = "PAGMIronSourceAdapter"
  s.version      = "8.10.0.0"
  s.summary      = 'PAGMIronSourceAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
  ABUAdAdmobAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '12.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMIronSourceAdapter/8.10.0.0/PAGMIronSourceAdapter.xcframework.zip", :sha256 => "ef77432d0fb59b20b9dcb8f42cbf5fcd390d5dbedd8301f1c747617abcde1ec2" }

  s.static_framework = true
  s.libraries = 'swiftXPC'

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'COMPILER_INDEX_STORE_ENABLE' => 'NO',
    'LLVM_LTO[config=Debug][sdk=*][arch=*]' => 'NO',
    'LLVM_LTO[config=Release][sdk=*][arch=*]' => 'NO',
    'GCC_OPTIMIZATION_LEVEL[config=Debug][sdk=*][arch=*]' => '0',
    'GCC_OPTIMIZATION_LEVEL[config=Release][sdk=*][arch=*]' => 'z',
    'ASSETCATALOG_COMPILER_OPTIMIZATION'=>'space',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'=>'YES',
    'CODE_SIGNING_ALLOWED' => 'NO',
    ###symolocation，don't delete
  }
  
s.default_subspec = ['Standard']

  s.subspec 'Standard' do |ss|
    ss.dependency 'PAGMIronSourceAdapter/Adapter'
    ss.dependency 'IronSourceSDK/Ads', '8.10.0.0'
 end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMIronSourceAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMIronSourceAdapter.xcframework']
    ss.preserve_paths = 'PAGMIronSourceAdapter.xcframework'
  end
  
end


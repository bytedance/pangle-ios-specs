Pod::Spec.new do |s|

  s.name         = "PAGMDTExchangeAdapter"
  s.version      = "8.5.0.0"
  s.summary      = 'PAGMDTExchangeAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
  PAGMDTExchangeAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.authors      = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '15.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMDTExchangeAdapter/8.5.0.0/PAGMDTExchangeAdapter.xcframework.zip", :sha256 => "4d374a9221b125c96d72e36273915aca5566e0fc61ab1f2330f1778728281fed" }

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

  s.subspec 'Standard' do |ss|
    ss.dependency 'PAGMDTExchangeAdapter/Adapter'
    ss.dependency 'Fyber_Marketplace_SDK', '8.5.0'
  end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMDTExchangeAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMDTExchangeAdapter.xcframework']
    ss.preserve_paths = 'PAGMDTExchangeAdapter.xcframework'
  end

 

end

Pod::Spec.new do |s|

  s.name         = "PAGMDTExchangeAdapter"
  s.version      = "8.4.2.0"
  s.summary      = 'PAGMDTExchangeAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
  PAGMDTExchangeAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.authors      = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '13.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMDTExchangeAdapter/8.4.2.0/PAGMDTExchangeAdapter.xcframework.zip", :sha256 => "c8290401d4c059e5f9b1ac7f5835ed7347387c520bb32d6182080603fb0c4e2a" }

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
    ss.dependency 'Fyber_Marketplace_SDK', '8.4.2'
  end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMDTExchangeAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMDTExchangeAdapter.xcframework']
    ss.preserve_paths = 'PAGMDTExchangeAdapter.xcframework'
  end

 

end

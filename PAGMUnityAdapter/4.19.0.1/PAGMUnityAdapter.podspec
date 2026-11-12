Pod::Spec.new do |s|

  s.name         = "PAGMUnityAdapter"
  s.version      = "4.19.0.1"
  s.summary      = 'PAGMUnityAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
  ABUAdAdmobAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '13.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMUnityAdapter/4.19.0.1/PAGMUnityAdapter.xcframework.zip", :sha256 => "961ee904223b77556f1ddf106f96413f99403a2be78b6769803b6613c42eff2c" } 
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
    ss.dependency 'PAGMUnityAdapter/Adapter'
    ss.dependency 'UnityAds', '4.19.0'
  end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMUnityAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
     ss.vendored_frameworks = ['PAGMUnityAdapter.xcframework']
     ss.preserve_paths = 'PAGMUnityAdapter.xcframework'
  end
  
end


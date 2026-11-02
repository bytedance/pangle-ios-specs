Pod::Spec.new do |s|

  s.name         = "PAGMInMobiAdapter"
  s.version      = "11.4.1.0"
  s.summary      = 'PAGMInMobiAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com/'
  s.description  = <<-DESC
  ABUAdAdmobAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '12.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMInMobiAdapter/11.4.1.0/PAGMInMobiAdapter.xcframework.zip", :sha256 => "d9e497d1babd15c2041685588af6bb4bd435c3b2c8b19f036d2eae0bc3edfc70" }

  s.static_framework = true
  
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
    ss.dependency 'PAGMInMobiAdapter/Adapter'
    ss.dependency 'InMobiSDK', '11.4.1' 
 end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMInMobiAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMInMobiAdapter.xcframework']
    ss.preserve_paths = 'PAGMInMobiAdapter.xcframework'
  end
  
  
end


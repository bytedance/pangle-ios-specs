Pod::Spec.new do |s|

  s.name         = "PAGMVungleAdapter"
  s.version      = "7.7.8.0"
  s.summary      = 'PAGMVungleAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com/'
  s.description  = <<-DESC
  ABUAdAdmobAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '12.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMVungleAdapter/7.7.8.0/PAGMVungleAdapter.xcframework.zip", :sha256 => "4470eee7cc552e22bab58a7e7da7a30b77e5c68976c84b4ba4ec966d3bfb3bd1" }
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
    ss.dependency 'PAGMVungleAdapter/Adapter'
    ss.dependency 'VungleAds', '7.7.8'
  end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMVungleAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMVungleAdapter.xcframework']
    ss.preserve_paths = 'PAGMVungleAdapter.xcframework'
  end

end

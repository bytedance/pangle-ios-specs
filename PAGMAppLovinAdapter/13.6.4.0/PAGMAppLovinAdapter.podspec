Pod::Spec.new do |s|

  s.name         = "PAGMAppLovinAdapter"
  s.version      = "13.6.4.0"
  s.summary      = 'PAGMAppLovinAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
  ABUAdAdmobAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '12.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMAppLovinAdapter/13.6.4.0/PAGMAppLovinAdapter.xcframework.zip", :sha256 => "ea29105b0ef8589990384aff38825f8fccd5a3c8d066bad302486b4a934f3f76" }

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
    ss.dependency 'PAGMAppLovinAdapter/Adapter'
    ss.dependency 'AppLovinSDK', '13.6.4'
  end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMAppLovinAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMAppLovinAdapter.xcframework']
    ss.preserve_paths = 'PAGMAppLovinAdapter.xcframework'
  end

 

end

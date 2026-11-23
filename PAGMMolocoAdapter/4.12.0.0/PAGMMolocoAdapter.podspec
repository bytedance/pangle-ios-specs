Pod::Spec.new do |s|

  s.name         = "PAGMMolocoAdapter"
  s.version      = "4.12.0.0"
  s.summary      = 'PAGMMolocoAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
  PAGMMolocoAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = 'bytedance'
  s.ios.deployment_target = '13.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMMolocoAdapter/4.12.0.0/PAGMMolocoAdapter.xcframework.zip", :sha256 => "4f3828b8177caf95433b7f2fef7670e45daef54d5ea98a83e94f6e4dd63ada33" }
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
    ss.dependency 'PAGMMolocoAdapter/Adapter'
    ss.dependency 'MolocoSDKiOS', '4.12.0'
  end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMMolocoAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMMolocoAdapter.xcframework']
    ss.preserve_paths = 'PAGMMolocoAdapter.xcframework'
  end

end

Pod::Spec.new do |s|

  s.name         = "PAGMChbAdapter"
  s.version      = "9.8.1.0"

  s.summary      = 'PAGMChbAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
    PAGMChbAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '12.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMChbAdapter/9.8.1.0/PAGMChbAdapter.xcframework.zip", :sha256 => "1878f5192584921fe79943a92368c83c60c3639bd06bcc08be78501cc99100d8" }

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
  # s.prefix_header_file = 'PAGAdSDK/PAGMAdapters/PAGMAdaptersPrefixHeader.pch'

  s.subspec 'Standard' do |ss|
    ss.dependency 'PAGMChbAdapter/Adapter'
    ss.dependency 'ChartboostSDK', '9.8.1'
  end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMChbAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMChbAdapter.xcframework']
    ss.preserve_paths = 'PAGMChbAdapter.xcframework'
  end


end

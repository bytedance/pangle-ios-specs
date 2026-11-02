Pod::Spec.new do |s|

  s.name         = "PAGMMintegralAdapter"
  s.version      = "8.1.7.0"
  s.summary      = 'PAGMMintegralAdapter is a adapter SDK from Bytedance providing media union AD service.'
  s.homepage     = 'https://www.pangleglobal.com'
  s.description  = <<-DESC
  PAGMMintegralAdapter is a adapter SDK from Bytedance providing media union AD service.
                       DESC

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
   s.authors      = { "zhangtianhao" => "zhangtianhao.1230@bytedance.com"}
  s.ios.deployment_target = '12.0'
  s.source       = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/PAGMMintegralAdapter/8.1.7.0/PAGMMintegralAdapter.xcframework.zip", :sha256 => "2e6473d133ceeb8246e20ae68867095a1389c07b8f88b248c7bc68c7ad723a94" }
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
    ss.dependency 'PAGMMintegralAdapter/Adapter'
    ss.dependency 'MintegralAdSDK/All', '8.1.7'
 end

  s.subspec 'Custom' do |ss|
    ss.dependency 'PAGMMintegralAdapter/Adapter'
  end

  s.subspec 'Adapter' do |ss|
    ss.vendored_frameworks = ['PAGMMintegralAdapter.xcframework']
    ss.preserve_paths = 'PAGMMintegralAdapter.xcframework'
  end


end

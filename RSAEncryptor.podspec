Pod::Spec.new do |s|
    s.name         = 'RSAEncryptor'
    s.version      = '0.0.1'
    s.summary      = 'RSA encrypt/decrypt with Both the content of certificates and certificates'
    s.homepage     = 'https://github.com/qianhongqiang/RSAEncryptor'
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = {'qianhongqiang' => 'qianhongqiang2012@163.com'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/qianhongqiang/RSAEncryptor.git', :tag => s.version}
    s.source_files = 'RSAEncryptor/*.{h,m}'
    s.requires_arc = true
end

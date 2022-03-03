
#
# Be sure to run `pod lib lint RockUIConpoent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RockUIConpoent'
  s.version          = '0.2'
  s.summary          = 'A short description of RockUIConpoent.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/RockALins/RockUIConpont'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '焦林生' => '18515384635@163.com' }
  s.source           = { :git => 'https://github.com/RockALins/RockUIConpont.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
   s.resource = [
         '**/RockUIConpoent/Assets/*.bundle'
    ]
    
  s.subspec 'QMAudio' do |qmAudio|
      qmAudio.source_files = '**/RockUIConpoent/Classes/QMAudio/*.{h,m}'
      # qmAudio.dependency ''
  end
  
  s.subspec 'QMFileManager' do |qmFileManager|
     qmFileManager.subspec 'Cell' do |cell|
        cell.source_files = '**/RockUIConpoent/Classes/QMFileManager/Cell/*.{h,m}'
        cell.dependency 'RockUIConpoent/Classes/QMFileManager/Model'
     end
     
    qmFileManager.subspec 'Model' do |model|
        model.source_files = '**/RockUIConpoent/Classes/QMFileManager/Model/*.{h,m}'
     end
     
    qmFileManager.subspec 'View' do |view|
        view.source_files = '**/RockUIConpoent/Classes/QMFileManager/View/*.{h,m}'
     end
     
    qmFileManager.subspec 'ViewController' do |viewcontroller|
        viewcontroller.source_files = '**/RockUIConpoent/Classes/QMFileManager/ViewController/*.{h,m}'
        viewcontroller.dependency 'RockUIConpoent/Classes/QMFileManager/Model'
        viewcontroller.dependency 'RockUIConpoent/Classes/QMFileManager/Cell'
        viewcontroller.dependency 'RockUIConpoent/Classes/QMFileManager/View'
     end
  end

   s.pod_target_xcconfig = {'VALID_ARCHS'=>'armv7 x86_64 arm64'}
   s.requires_arc = true
   s.frameworks = 'UIKit'
   s.dependency 'RockUICores'
   
end

#
# Be sure to run `pod lib lint AMGAutolayoutHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMGAutolayoutHelper'
  s.version          = '1.1'
  s.summary          = 'Autolayout UI subclases to automatically adapt font sizes'
  s.description      = <<-DESC
This library add support to autolayout font sizes directly from Inspector Builder. Just configure the default width and height of the AMGAutolayoutHelper singleton and change the UI elements to the corresponding AMGAutolayout.
                       DESC

  s.homepage         = 'https://github.com/AlbertMontserrat/AMGAutolayoutHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Albert Montserrat' => 'albert.montserrat.gambus@gmail.com' }
  s.source           = { :git => 'https://github.com/AlbertMontserrat/AMGAutolayoutHelper.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'AMGAutolayoutHelper/Classes/**/*'
end

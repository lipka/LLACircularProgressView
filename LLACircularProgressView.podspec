Pod::Spec.new do |s|
  s.name = "LLACircularProgressView"
  s.version = "0.1.1"
  s.homepage = "https://github.com/lipka/LLACircularProgressView"
  s.summary = "An animated ring spinner view for displaying indeterminate progress."
  s.source = { :git => "https://github.com/lipka/LLACircularProgressView.git", :tag => s.version.to_s }
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { "Lukas Lipka" => "lukaslipka@gmail.com" }
  s.social_media_url = "http://twitter.com/lipec"

  s.platform = :ios, '7.0'
  s.frameworks = 'UIKit', 'CoreGraphics'
  s.requires_arc = true

  s.source_files = 'LLACircularProgressView'
end

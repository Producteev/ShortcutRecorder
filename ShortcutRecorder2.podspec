Pod::Spec.new do |s|
  s.name         = "ShortcutRecorder2"
  s.version      = "0.0.1"
  s.summary      = "A fork of ShortcutRecorder with fixed resources loading."
  s.homepage     = "https://github.com/octiplex/ShortcutRecorder"
  s.license      = 'BSD'
  s.author       = { 'Ilya Kulakov' => 'kulakov.ilya@gmail.com' }
  s.source       = { :git => "https://github.com/octiplex/ShortcutRecorder.git", :commit => "6010ae7f1ea13f722df1e36bc4710713e4426c6f" }
  s.platform            = :osx, "10.7"
  s.osx.deployment_target = '10.7'
  s.source_files = '*.{h,m}'
  s.resources    = 'Resources/*.lproj', 'Resources/*.png'
  s.frameworks   = 'Carbon', 'Cocoa'
  s.requires_arc = true
  s.prefix_header_file = 'ShortcutRecorder_Prefix.pch'
  s.subspec 'PTHotKey' do |hotkey|
    hotkey.source_files = 'PTHotKey/*.{h,m}'
    hotkey.requires_arc = false
  end
end

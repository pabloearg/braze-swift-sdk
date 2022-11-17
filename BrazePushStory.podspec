Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.6.3'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk/releases/download/5.6.3/BrazePushStory-CocoaPods.zip',
    :sha256 => 'd959ffbb2503d59f701023b8391d0d210c9f0c93fc15ac0771a3cd07c0a1d665'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'
end

Pod::Spec.new do |s|

  s.name         = "SignalProtocolObjC"
  s.version      = "1.1.1"
  s.summary      = "Unofficial Objective-C wrapper for libsignal-protocol-c"

  s.description  = <<-DESC
                    Unofficial Objective-C wrapper for libsignal-protocol-c.
                    It is built for use in [ChatSecure iOS](https://github.com/chatsecure/chatsecure-ios) to provide [OMEMO](https://conversations.im/omemo/) support. This software is not affiliated with or endorsed by Open Whisper Systems.
                   DESC

  s.homepage     = "https://github.com/ChatSecure/SignalProtocol-ObjC"

  s.license      = { :type => "GPLv3", :text => <<-LICENSE
                Copyright 2016-2017 Chris Ballinger

                Licensed under the GPLv3: http://www.gnu.org/licenses/gpl-3.0.html

                Additional Permissions For Submission to Apple App Store: Provided that you are otherwise in compliance with the GPLv3 for each covered work you convey (including without limitation making the Corresponding Source available in compliance with Section 6 of the GPLv3), the author(s) also grant you the additional permission to convey through the Apple App Store non-source executable versions of the Program as incorporated into each applicable covered work as Executable Versions only under the Mozilla Public License version 2.0 (https://www.mozilla.org/en-US/MPL/2.0/).

                This software depends on libsignal-protocol-c which is covered by a [separate license](https://github.com/whispersystems/libsignal-protocol-c#license).

                LICENSE
               }
  s.author             = { "Chris Ballinger" => "chris@chatsecure.org" }
  s.social_media_url   = "https://twitter.com/chatsecure/"

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source       = { :git => "https://github.com/monal-im/SignalProtocol-ObjC.git", 
  					         :tag => s.version.to_s}

  s.source_files  = ["Classes/**/*.{h,m}"]
  s.private_header_files = ["Classes/**/*_Internal.h", "Classes/Models/SignalMessage.h"]
  s.dependency 'SignalProtocolC', '~> 2.3.3'
end

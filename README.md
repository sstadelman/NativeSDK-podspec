#How to use Cocoapods to bootstrap your SAP Mobile SDK app, instantly

Oh snap! This is awesome.  

##Use Cocoapods
Those of you who know me, know that I'm a big fan of the Cocoapods tool and community, for discovering new open-source components for iOS development, and for library/dependency management.

I've been pushing for broader adoption in the SAP community, but have been somewhat stiemied, due to the fact that our iOS SDK isn't distributed via github.com, or an endpoint accessible to the command-line tools.  I've been hosting a copy of the SDK on our internal github, and had a blog post queued up describing how to do the same in your environment, with a podspec you could modify to link to your repo.

All that can be thrown out.  

##Seriously, right now.
I've been hammering on this problem, as I've been trying to submit a public podspec for my STSOData framework.  I ran into this [blog by the team at Gaslight](https://teamgaslight.com/blog/using-local-libraries-with-cocoapods).  It didn't solve the problem I was initially looking at, but I came back to it, and found this:

**You can just copy this `NativeSDK.podspec` document into the NativeSDK folder of your installation directory, add this line to your project's Podfile:  `pod 'NativeSDK', :path => "~/SAP/MobileSDK3/NativeSDK/"`, and cocoapods will read from your local installation.**

##Try it.  Now.

1.  Copy this file, into your Mobile SDK 3.0 SP05 installation directory, in the **/NativeSDK** directory.
2.  Create a new iOS project in xCode
3.  Navigate to the project directory in Terminal, and run `pod init`
4.  Copy this into the generated Podfile:

		platform :ios, "7.0"

		target "MyTestApp" do
		inhibit_all_warnings!

		pod 'NativeSDK', :path => "~/SAP/MobileSDK3/NativeSDK/"

		end

	Modify the path to match the location of NativeSDK on your own machine.  

5.  Run `pod install`
6.  Open the .xcworkspace file, instead of the .xcodeproj file.  The workspace is now your regular working area.
7.  Profit

##I'll wait..

<img src="https://raw.githubusercontent.com/sstadelman/sstadelman.github.io/master/media/blog-images/Native-SDK-podspec1.png" width=900>
# SignMyPad Pro - Swift Edition
In this repo you can find the new release of [SignMyPad](http://itunes.com/apps/signmypad) that is completely rebuild using [Swift](https://developer.apple.com/swift/) and [Cocoa Pods](https://cocoapods.org/). 
After you clone the repo open a command line instance, cd into the project root folder and run the command `$ pod update`.
You should be able to run then the `*.xcworkspace` project, just in case you get errors like
```
Undefined symbols for architecture x86_64:
  "_ACAccountTypeIdentifierTwitter", referenced from:
   -[PF_Twitter getLocalTwitterAccountAsync] in Parse(PF_Twitter.o)
```

go unnder Targets, General, Linked Frameworks and Libraries add:

* Social.framework
* Accounts.framework

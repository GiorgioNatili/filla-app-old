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

### Add new modules
All the application is based on the [VIPER](http://www.objc.io/issue-13/viper.html) architecture for Swift, in order to add a new module to the app install [this](https://github.com/lonelyplanet/viper-module-generator) ruby gem and then run the command
```
$ vipergen generate MODULE_NAME --path=SignMyPad/EVENTUAL_SUBFOLDER --author="Giorgio Natili"
```
where `MODULE_NAME` is the name of the module without spaces and `EVENTUAL_SUBFOLDER` the subfolder you may want to create in the project source code directory. 

### Handle Pods
In case you are not able to reach a new installed pods please select your project (not the target) and add to `Build Settings > Search Path > User Header Search Paths` the folder `Pods`. Add to the `SignMyPad-Bridging-Header.h` file the import needed to reach the new installed pod.
* In case of a Swift based file is enough to import the needed class into the file you plan to use it*

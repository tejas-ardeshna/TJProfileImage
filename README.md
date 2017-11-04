
# TJProfileImage
Live rendering of componet’s properties in Interface Builder

[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LFAlertController.svg)  
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

![Image](https://github.com/tejas-ardeshna/TJProfileImage/blob/master/Screen%20Shot.png)

## Features
 - [x] Dashed border
 - [x] Solid border
 - [x] Round corner
 - [x] Circle image

## Requirements

- iOS 9.0+
- Xcode 8.3

## Installation

#### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```



To integrate TJProfileImage into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'TJProfileImage'
end
```

Then, run the following command:

```bash
$ pod install
```

#### Manually
1. Download and drop ```TJProfileImage.swift``` in your project.  
2. Congratulations!  

## Implementation 

Just set class of your UIImageView to TJProfileImage and let the magic happen. 

```swift
import TJProfileImage
@IBOutlet var imgView: TJProfileImage!

imgView.dashedBorder  = true           // shows dashed border instead of plain
imgView.isCircular    = true           // makes image view in round shape
imgView.cornerRadious = 5              // you can set custom corner radious also. IF you set isCircular then it will neglate this corner radious
imgView.borderColor   = UIColor.green  // border color
imgView.borderWidth   = 2              // border width
```
## Contribute

We would love you for the contribution to **TJProfileImage**, check the ``LICENSE`` file for more info.

## Meta

Tejas Ardeshna – [@tejas_ardeshna](https://twitter.com/tejas_ardeshna) – tejasardeshna@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.




[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: https://github.com/tejas-ardeshna/TJProfileImage/blob/master/LICENSE.md

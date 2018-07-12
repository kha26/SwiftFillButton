# SwiftFillButton

[![CI Status](https://img.shields.io/travis/kha26/SwiftFillButton.svg?style=flat)](https://travis-ci.org/kha26/SwiftFillButton)
[![Version](https://img.shields.io/cocoapods/v/SwiftFillButton.svg?style=flat)](https://cocoapods.org/pods/SwiftFillButton)
[![License](https://img.shields.io/cocoapods/l/SwiftFillButton.svg?style=flat)](https://cocoapods.org/pods/SwiftFillButton)
[![Platform](https://img.shields.io/cocoapods/p/SwiftFillButton.svg?style=flat)](https://cocoapods.org/pods/SwiftFillButton)

Simple button in Swift that fills up on a click.

<img src="Example/button1.gif" width="100"/>
<img src="Example/button2.gif" width="100"/>
<img src="Example/button3.gif" width="100"/>

## Installation

SwiftFillButton is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftFillButton'
```

## Usage

```swift
let button3 = FillButton()

// The highlight color is the color that the backround will be on click
button3.highlightColor = UIColor.purple
button3.unhighlightColor = UIColor.cyan

// To set the text bold on click
button3.isHighlightBold = true

// To add zoom on click
button3.doesZoom = true

// If the zoomScale is greater than 1 the button will increase in size on click
// if it's less than 1 the button will be smaller on click
button3.zoomScale = 1.05
```

## Interface Builder (Storyboard/Xib)

Add a  `UIButton` as usual, then:
- Modify the underlying class to `SwiftFillButton/FillButton` and that the module to `SwiftFillButton`
- Make sure the `UIButtonType` is set to `.custom`

<img src="Example/screenshot1.png">
<img src="Example/screenshot2.png">


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

kha26, kha26@cornell.edu

## License

SwiftFillButton is available under the MIT license. See the LICENSE file for more info.

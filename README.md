# AMGAutolayoutHelper

[![CI Status](http://img.shields.io/travis/Albert Montserrat/AMGAutolayoutHelper.svg?style=flat)](https://travis-ci.org/Albert Montserrat/AMGAutolayoutHelper)
[![Version](https://img.shields.io/cocoapods/v/AMGAutolayoutHelper.svg?style=flat)](http://cocoapods.org/pods/AMGAutolayoutHelper)
[![License](https://img.shields.io/cocoapods/l/AMGAutolayoutHelper.svg?style=flat)](http://cocoapods.org/pods/AMGAutolayoutHelper)
[![Platform](https://img.shields.io/cocoapods/p/AMGAutolayoutHelper.svg?style=flat)](http://cocoapods.org/pods/AMGAutolayoutHelper)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

AMGAutolayoutHelper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AMGAutolayoutHelper"
```

## How it works

AMGAutolayoutHelper works directly in interface builder. Just change the class of the UI elements (UILabel, UIButton, UITextField and UITextView) to the corresponding AMGAutolayout (AMGAutolayoutLabel, AMGAutolayoutButton, AMGAutolayoutField and AMGAutolayoutTextView).
This will make the font size adapt at screen width.

If you prefer to adapt the font size at screen height, change the Axis name (@IBInspectable) from default (or 'horizontal') to 'vertical'

If you need to change it programmaticaly, you can get the calculations as follows:

```
let newSize = AMGAutolayoutHelper.shared.convertSize(size: 30.0)
let newSizeVertical = AMGAutolayoutHelper.shared.convertSize(size: 30.0, axis: .vertical)
let newSizeCustom = AMGAutolayoutHelper.shared.convertSize(size: 30.0, axis: .vertical, original: 500.0, final: 200.0)
```

By default, the original screen size (the screen size designed) is iPhone 6 (375.0 x 667.0). If you want to change it, you can do it by setting:

```
AMGAutolayoutHelper.shared.defaultWidth = 375.0
AMGAutolayoutHelper.shared.defaultHeight = 667.0
```

You can do it in application did finish launching.


## Author

Albert Montserrat, albert.montserrat.gambus@gmail.com

## License

AMGAutolayoutHelper is available under the MIT license. See the LICENSE file for more info.

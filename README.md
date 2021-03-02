# BitPanda-iOS-Test

iOS app for an interview project written entirely in Swift 5.3.2 with custom UI featuring Dark Mode support.

# Requirements

**Xcode version 12.4 (12D4e)** with **iOS 14.4 SDK** is recommended.
Supported iOS versions - iOS 11 and up.
**CocoaPods** is also a must.

# Installation

Clone the repo and run ```$ pod install``` in the project folder.

# Functionality

* The app is currently able to parse data from local JSON, group it by type and show it in a Table View.
* You can switch and swipe between tabs.
* The app also features Dark Mode support

# Development Steps

* Create new project based on single view app pattern
* Add different Pods for all the use cases
* Create folders for MVVM pattern, create initial UI
* Add all UI classes and all cell types
* Add support for colors and correct assets in Asset Catalog
* Add support for Dark Mode
* Add Models and ViewModel, that will show the elements in Table View
* Passed all the data to table view cells
* Added grouping logics
* Added currency icons to not use SVG
* Added currency formatter to account for all currencies and locales
* Added test for helper objects

## Trivia

Project is built with Storyboards and AutoLayout, heavily relying on R.swift library for strongly typed-constants.
It also relies heavily on the Tabman library for the main screen and switching between tabs.

## Contributing

We'd love to see your ideas for improving this project! The best way to contribute is by submitting a pull request. We'll do our best to respond to your patch as soon as possible. You can also submit a new Github issue if you find bugs or have questions. :octocat:

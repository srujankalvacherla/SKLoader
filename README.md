# SKLoader

Now you can animate any kind of loader with SKLoader framework.
Have a look at some examples below.

![earthloader](https://user-images.githubusercontent.com/40866243/43359582-21dc18c8-92c2-11e8-858e-d440fbddd935.gif)
![foodloader](https://user-images.githubusercontent.com/40866243/43359583-22090f54-92c2-11e8-9b40-a90426e33b7c.gif)
![pageloader](https://user-images.githubusercontent.com/40866243/43359584-22308e76-92c2-11e8-866e-840e6212b4f3.gif)
![simpleloader](https://user-images.githubusercontent.com/40866243/43359586-227ff1a0-92c2-11e8-8279-76bcd4c79d51.gif)
![uploadeloader](https://user-images.githubusercontent.com/40866243/43359587-22a7e19c-92c2-11e8-9c94-4bb21de3ff2c.gif)
![textloader](https://user-images.githubusercontent.com/40866243/43359611-a5174f1e-92c2-11e8-9ecc-34990aa571d9.gif)
![quoteloader](https://user-images.githubusercontent.com/40866243/43359585-2258e34e-92c2-11e8-948a-66d48f456fb7.gif)

## Requirements

`SKLoader` works for iOS 9.0+ and requires ARC to buid.
It requires gif to animate. Pre loaded with some gifs in example project. You can use your own gifs to animate in loader.

## Add SKLoader to your project

### Cocoapods ( Highly recommended way is to use cocoapods)
`pod 'SKLoader'`

## Usage:

1. import SKLoader
2. SKLoader works, as a singleton shared instance, or you can create an instance of SKLoader and use it.
3. Start Using It, by below sytax using shared instace. You can set up your SKLoader at didfinishlaunchingwithoptions method, or wherever you want to use. 

### Shared Instance:

```swift
SKLoader.sharedInstance.gifName = "SimpleLoader"
SKLoader.sharedInstance.animationSpeed = 0.01
SKLoader.sharedInstance.showLoader()
```
### SKLoader Instace:

```swift
let loader = SKLoader()
loader.gifName = "SimpleLoader"
loader.animationSpeed = 0.01
loader.showLoader()
Timer.scheduledTimer(withTimeInterval: 3.5, repeats: false) { (boolean) in
    loader.hideLoader()
}
```
### Public objects to finetune your animtaions:
```swift
gifName
backGroundColor
backgroundAlpha
animationSpeed
viewSize
viewContentMode
viewBackgroundColor
```
### Note:
1. Drag and drop a gif to your working 

### Noticeable mentions

[GitHub] (https://github.com/swiftgif/SwiftGif)

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each release can be found in the [CHANGELOG](CHANGELOG.md). 

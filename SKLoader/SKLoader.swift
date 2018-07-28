//
//  SKLoader.swift
//  SKLoader
//
//  Created by Srujan k on 23/07/18.
//  Copyright © 2018 Srujan k. All rights reserved.
//

import UIKit
public var animSpeed = 0.1
public class SKLoader: UIView {
    // MARK: - Public Variables
    public static let sharedInstance = SKLoader()
    public var gifName: String = ""
    public var backGroundColor: UIColor? = .black
    public var backgroundAlpha: CGFloat = 0.3
    public var animationSpeed = 0.1
    public var viewSize: CGSize = CGSize(width: 250, height: 150)
    public var viewContentMode : UIViewContentMode = .scaleAspectFit
    public var viewBackgroundColor: UIColor = UIColor.clear
    
    // MARK: - Local Variables
    private lazy var backgroundView: UIView = {
        let backgroundView = UIView(frame: UIScreen.main.bounds)
        backgroundView.backgroundColor = backGroundColor?.withAlphaComponent(backgroundAlpha)
        return backgroundView
    }()
    private lazy var gifImage: UIImageView = {
        let gifImage = UIImageView(frame: CGRect(x: 0, y: 0, width: viewSize.width, height: viewSize.height))
        gifImage.center = backgroundView.center
        gifImage.contentMode = viewContentMode
        gifImage.backgroundColor = viewBackgroundColor
        gifImage.loadGif(name: gifName)
        return gifImage
    }()
    
    // MARK: - Public Methods
    public func showLoader(){
        animSpeed = animationSpeed
        self.addSubview(backgroundView)
        self.backgroundView.addSubview(gifImage)
        self.backgroundView.bringSubview(toFront: self.gifImage)
//        UIApplication.shared.keyWindow?.bringSubview(toFront: self.backgroundView)
        UIApplication.shared.keyWindow?.addSubview(self.backgroundView)
    }
    public func hideLoader(){
        self.backgroundView.removeFromSuperview()
    }
//    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        let touch = touches.first
//        if touch?.view != self.gifImage{
//            self.hideLoader()
//        }
//    }
}

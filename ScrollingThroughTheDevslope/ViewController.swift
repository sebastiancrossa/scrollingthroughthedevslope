//
//  ViewController.swift
//  ScrollingThroughTheDevslope
//
//  Created by Sebastian Crossa on 6/27/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Array that will hold the images we are going to display for storing
    var displayImages = [UIImageView]()
    
    @IBOutlet var scrollView: UIScrollView!
    
    // View data NOT accessible through viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // View data accessible through viewDidAppear()
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth : CGFloat = 0.0
        
        let scrollWidth = scrollView.frame.size.width
        
        // Loop that will assing each image to a variable and appending them
        // as an image view to the displayImages array
        for x in 0...2 {
            
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            displayImages.append(imageView)
            
            var newX : CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            
        }
        
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)

        
    }
    
    override var prefersStatusBarHidden: Bool {
        
        return true
        
    }

}


//
//  ViewController.swift
//  ch03MissionImageViewer
//
//  Created by Ki-su Kim on 7/2/20.
//  Copyright © 2020 Ki-su Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let TOTAL_IMAGE_SIZE: Int = 6
    var imageNumber: Int = 1
        
    @IBOutlet var imgViewer: UIImageView!
    @IBOutlet var lblFileName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgViewer.image = UIImage(named: String(imageNumber) + ".png")
    }

    @IBAction func btnPrevious(_ sender: UIButton) {
        imageNumber -= 1
        
        if imageNumber == 0 {
            imageNumber = 6
        }
        
        let filename = String(imageNumber) + ".png"
        imgViewer.image = UIImage(named: filename)
        lblFileName.text = filename
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        imageNumber += 1
        if imageNumber > TOTAL_IMAGE_SIZE {
            imageNumber = 1
        }
        
        let filename = String(imageNumber) + ".png"
        imgViewer.image = UIImage(named: filename)
        lblFileName.text = filename
    }
}


//
//  ViewController.swift
//  Ubuntu
//
//  Created by Victor Leal Porto de Almeida Arruda on 21/12/16.
//  Copyright © 2016 VTR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var titleView: UIView!
    
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var titleMusic: UILabel!
    @IBOutlet weak var author: UILabel!
    
    var color = [UIColor(red:0.70, green:0.39, blue:0.09, alpha:1.00),
                 UIColor(red:0.73, green:0.18, blue:0.16, alpha:1.00),
                 UIColor(red:0.16, green:0.10, blue:0.01, alpha:1.00),
                 UIColor(red:0.19, green:0.44, blue:0.57, alpha:1.00),
                 UIColor(red:0.54, green:0.30, blue:0.08, alpha:1.00),
                 UIColor(red:0.00, green:0.01, blue:0.20, alpha:1.00),
                 UIColor(red:0.16, green:0.08, blue:0.02, alpha:1.00),
                 UIColor(red:0.78, green:0.49, blue:0.18, alpha:1.00)]
    var backNumber = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.layer.cornerRadius = 15
        titleView.layer.cornerRadius = 15
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        changeBackground()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent;
    }
    
    func changeBackground(){
        background.image = UIImage(named:"afro"+String(backNumber))
        text.textColor = color[backNumber-1]
        titleMusic.textColor = color[backNumber-1]
        author.textColor = color[backNumber-1]
        
        if backNumber < 8{
            backNumber += 1
        }else{
            backNumber = 1
        }
    }


}


//
//  ViewController.swift
//  Task-WebView
//
//  Created by Ananth Nair on 04/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var apppleImg : UIImageView!
    @IBOutlet weak var MediumImg : UIImageView!
    @IBOutlet weak var SwiftImg : UIImageView!
    var tapped : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapapple = UITapGestureRecognizer(target: self, action: #selector(appleImgTapped(_ :)))
        apppleImg.addGestureRecognizer(tapapple)
        
         let tapMedium = UITapGestureRecognizer(target: self, action: #selector(MediumImgTapped(_ :)))
        MediumImg.addGestureRecognizer(tapMedium)
        
         let tapSwift = UITapGestureRecognizer(target: self, action: #selector(swiftImgTapped(_ :)))
        SwiftImg.addGestureRecognizer(tapSwift)
    }
    
    
    @IBAction func appleImgTapped(_ sender: UITapGestureRecognizer) {
        print("apple")
        
        let vc = self.storyboard?.instantiateViewController(identifier: "secondvc") as! WVController
        vc.tapped = 1
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func swiftImgTapped(_ sender: UITapGestureRecognizer) {
        tapped = 2
        print("swift")
        let vc = self.storyboard?.instantiateViewController(identifier: "secondvc") as! WVController
        vc.tapped = 2
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func MediumImgTapped(_ sender: UITapGestureRecognizer) {
        tapped = 3
        print("medium")
        let vc = self.storyboard?.instantiateViewController(identifier: "secondvc") as! WVController
        vc.tapped = 3
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}


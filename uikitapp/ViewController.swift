//
//  ViewController.swift
//  uikitapp
//
//  Created by Thiem Jason on 3/20/21.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                self.pictures.append(item)
            }
        }
        
        print(self.pictures)
    }
}


//
//  ViewController.swift
//  TestNib
//
//  Created by Aung Ko Ko on 8/4/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNext(_ sender: Any) {
        let vc = FirstNibViewController(nibName: FirstNibViewController.identifier, bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
}


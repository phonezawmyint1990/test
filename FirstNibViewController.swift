//
//  FirstNibViewController.swift
//  TestNib
//
//  Created by Aung Ko Ko on 8/4/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class FirstNibViewController: UIViewController {
    
    static let identifier = "FirstNibViewController"
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var btnRed: UIView!
    @IBOutlet weak var btnGreen: UIView!
    @IBOutlet weak var btnBlue: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let redGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(clickRedView))
        let redGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(clickRedView))
        btnRed.addGestureRecognizer(redGestureRecognizer)
        btnRed.isUserInteractionEnabled = true
        
        let greenGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(clickGreenView))
        btnGreen.addGestureRecognizer(greenGestureRecognizer)
        btnGreen.isUserInteractionEnabled = true
        
        let blueGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(clickBlueView))
        btnBlue.addGestureRecognizer(blueGestureRecognizer)
        btnBlue.isUserInteractionEnabled = true
    }
    
    @objc func clickRedView(){
        mainView.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
    }
    
    @objc func clickGreenView(){
        mainView.backgroundColor = #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)
    }
    
    @objc func clickBlueView(){
        mainView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)
    }
    
    @objc func clickColorChange(recognizer: UITapGestureRecognizer){
       
    }
    
    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

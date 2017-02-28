//
//  ViewController.swift
//  menuCargando
//
//  Created by Wilmer Mendoza on 27/2/17.
//  Copyright © 2017 Wilmer Mendoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let loadingView = LoadingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showMenu(_ sender: Any) {
        
        loadingView.showMenuLoad()
        
    }
}


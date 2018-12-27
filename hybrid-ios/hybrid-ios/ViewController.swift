//
//  ViewController.swift
//  hybrid-ios
//
//  Created by Elshad Yarmetov on 12/6/18.
//  Copyright © 2018 Elshad Yarmetov. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {
    var controller: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .yellow
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.controller = FlutterViewController(nibName: nil, bundle: nil)
            self.present(self.controller, animated: true, completion: nil)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.controller.dismiss(animated: true, completion: nil)
        }
    }


}


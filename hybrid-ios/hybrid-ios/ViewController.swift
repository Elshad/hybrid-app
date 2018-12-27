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
    weak var controller: FlutterViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .yellow
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let controller = FlutterViewController(nibName: nil, bundle: nil)
            //self.controller.setInitialRoute(<#T##route: String!##String!#>)
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.navigationController?.popViewController(animated: true)
        }
    }


}


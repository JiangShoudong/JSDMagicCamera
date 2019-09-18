//
//  ViewController.swift
//  MagicCameraExample
//
//  Created by JIANG SHOUDONG on 2019/9/17.
//  Copyright © 2019 NickData. All rights reserved.
//

import UIKit
import MagicCamera

class ExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(selectedImageV)
        view.addSubview(pickButton)
        pickButton.center = view.center
    }  
    @objc
    private func showPicker() {
        let picker = MGImagePicker(configuration: nil)
        present(picker, animated: true, completion: nil)
    }
    lazy var selectedImageV: UIImageView = {
        let imageV = UIImageView(frame: CGRect(x: 0,
                                               y: 0,
                                               width: UIScreen.main.bounds.width,
                                               height: UIScreen.main.bounds.height*0.4))
        imageV.contentMode = .scaleAspectFit
        return imageV
    }()
    lazy var pickButton: UIButton = {
        let pickButton = UIButton(frame: CGRect(x: 0,
                                                y: 0,
                                                width: 100,
                                                height: 100))
        pickButton.setTitle("pick", for: .normal)
        pickButton.setTitleColor(.black, for: .normal)
        pickButton.addTarget(self, action: #selector(showPicker), for: .touchUpInside)
        return pickButton
    }()
}


//
//  MGImagePicker.swift
//  MagicCamera
//
//  Created by JIANG SHOUDONG on 2019/9/18.
//  Copyright © 2019 NickData. All rights reserved.
//

import UIKit

public class MGImagePicker: UINavigationController {

    lazy var picker: MGPickerController = {
        let picker = MGPickerController()
        return picker
    }()
    /// Get a YPImagePicker instance with the default configuration.
    public convenience init() {
        self.init(configuration: nil)
    }
    
    /// Get a YPImagePicker with the specified configuration.
    public required init(configuration: NSObject?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [picker]
        
    }
    deinit {
        print("Picker deinited 👍")
    }
}

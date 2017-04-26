//
//  ButtonControl.swift
//  JobInterviewApp
//
//  Created by Rohit Dabra on 17/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import UIKit

@IBDesignable class ButtonControl: UIButton {
    
    //MARK: Properties
    
    //var dimensions: [Dimension] = DimensionService.getAllDimensions()
    
    
    @IBInspectable var buttonSize: CGSize = CGSize(width: 120, height: 120){
        didSet {
            setupButton()
        }
    }
    
    @IBInspectable var buttonRadius: Float = 60{
        didSet {
            setupButton()
        }
    }
    
    @IBInspectable var index: Int = 0{
        didSet {
            setupButton()
        }
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButton();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton();
        
    }
    
    //    required init(coder: NSCoder) {
    //        super.init(coder: coder)
    //        setupButton();
    //    }
    
    
    
    //MARK: Private Methods
    private func setupButton() {
        
        
        
        if(index >= 6)
        {
            return;
        }
        
        // Add constraints
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: buttonSize.height).isActive = true
        self.widthAnchor.constraint(equalToConstant: buttonSize.width).isActive = true
        
        self.layer.cornerRadius = CGFloat(buttonRadius)
        self.backgroundColor = hexStringToUIColor(hex: Constants.colors[index]);
        self.tintColor = UIColor.white
        
        let title = "";//dimensions[index].dimensionName;
        
        self.setTitle(title, for: .normal)
        self.tag = index+1;
        self.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
        self.titleLabel?.textAlignment = NSTextAlignment.center;
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14);
        self.setTitleColor(UIColor.white, for: [.highlighted, .selected, .normal])
        
        // Set the accessibility label
        self.accessibilityLabel = "Select \(title)"
        
        
        self.tag = index;
        
    }
}

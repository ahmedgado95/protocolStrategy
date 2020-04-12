//
//  ButtonADetails.swift
//  DetailsStrategy
//
//  Created by ahmed gado on 4/12/20.
//  Copyright © 2020 ahmed gado. All rights reserved.
//

import Foundation
public class ButtonADetails : STR {
    public var title: String = "Button A Title"
    
    public var name: String = "Button A"
    public var itemId: Int = 0
    public var itemDetails: TypeOfDetailsModel? = nil {
        didSet {
            guard let itemDetails = itemDetails else {return}
            switch itemDetails {
            case .buttonA(let value):
                self.name = value ?? "A"
            default:
                break
            }
        }
    }
    
    public init(itemId: Int, itemDetails: TypeOfDetailsModel?) {
        self.itemId = itemId
        self.itemDetails = itemDetails
    }
    public func getDetailsUrlRequest() -> String {
        return " With Url/A"
        
    }
    
    public var type: TypeOfModel = .buttonA
    
    
}

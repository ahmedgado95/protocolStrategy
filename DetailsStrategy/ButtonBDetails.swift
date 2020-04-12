//
//  ButtonBDetails.swift
//  DetailsStrategy
//
//  Created by ahmed gado on 4/12/20.
//  Copyright © 2020 ahmed gado. All rights reserved.
//


import Foundation
public class ButtonBDetails : STR {
    public var title: String = "Button B Title"
    
    public var name: String = "Button B"
    public var itemId: Int = 0
    public var itemDetails: TypeOfDetailsModel? = nil {
        didSet {
            guard let itemDetails = itemDetails else {return}
            switch itemDetails {
            case .buttonB(let value):
                self.name = value ?? "B"
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
        return " With Url/B"
        
    }
    
    public var type: TypeOfModel = .buttonB
    
    
}

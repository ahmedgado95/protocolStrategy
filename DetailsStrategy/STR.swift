//
//  STR.swift
//  DetailsStrategy
//
//  Created by ahmed gado on 4/12/20.
//  Copyright © 2020 ahmed gado. All rights reserved.
//

import Foundation

import UIKit

public protocol STR: class {
    var title: String { get }
    var name: String { get}
    func getDetailsUrlRequest() -> String
    var type: TypeOfModel {get}
}


public enum TypeOfDetailsModel {
    case buttonA(_ details: String?)
    case buttonB(_ details: String?)
}



public enum TypeOfModel: String {
    case buttonA
    case buttonB
}

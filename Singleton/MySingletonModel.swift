//
//  MySingletonModel.swift
//  Singleton
//
//  Created by Steven Lipton on 12/2/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import Foundation

class Model{
    static var shared = Model()
    private init(){}
    var value:Double = 0.0
    
}

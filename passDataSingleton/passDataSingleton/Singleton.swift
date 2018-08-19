//
//  Singleton.swift
//  PassDataSingleton
//
//  Created by anhxa100 on 8/16/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import Foundation

//final class Singleton {
//    private init (){}
//    static let shared = Singleton()
//    var arrayName = ["hoang1", "hoang2", "hoang3", "hoang4"]
//}
class DataService {
    static let shared: DataService = DataService()
    private var _number: [Int]?
    var number: [Int] {
        get {
            if _number == nil {
                getdata()
            }
            return _number ?? []
        }
        
        set{
            _number = newValue
            
        }
    }
    func getdata(){
        number = Array(1...100)
    }
}


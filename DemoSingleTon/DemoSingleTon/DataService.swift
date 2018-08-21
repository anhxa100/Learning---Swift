//
//  DataService.swift
//  DemoSingleTon
//
//  Created by anhxa100 on 8/17/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import Foundation

class DataService {
    static let shared = DataService()
    
    private var _arrayNumber: [Int]?
    
    var arrayNumber: [Int] {
        get {
            if _arrayNumber == nil {
                loadSample()
            }
            return _arrayNumber ?? []
        }
        set {
            _arrayNumber = newValue
        }
    }
    
    private func loadSample() {
        _arrayNumber = []
        _arrayNumber = [Int](10...15)
    }
    
    
    func removeData(at indexPath: IndexPath) {
        _arrayNumber?.remove(at: indexPath.row)
    }
    func editData(at indexPath: IndexPath, number: Int) {
        _arrayNumber?[indexPath.row] = number
    }
    func addNewNumber(number: Int) {
        _arrayNumber?.append(number)
    }
}

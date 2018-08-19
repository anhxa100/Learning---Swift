//
//  Singleton.swift
//  Singleton
//
//  Created by anhxa100 on 8/15/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import Foundation

//class Singleton {
//    static let shareInstance = Singleton()
//}
//final class Singleton {
//    static let shareInstance = Singleton()
//    private init() {}
//}

// MARK: - Singleton
final class Singleton {
    // Không thể khởi tạo singleton
    private init(){}
    
    // MARK: Shared Instance
    static let shared = Singleton()
    
    // MARK: Biến Local
    var arrName = ["hoang1", "hoang2" , "hoang3", "hoang4"]
    
    // tạo biến index để lấy vị trí
    var index = 0
    
    // tạo biến kiểu trạng thái để tách chức năng cho nút
    var addData: Bool = false
    
    
}


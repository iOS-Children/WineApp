//
//  LoggerEnum.swift
//  WineApp
//
//  Created by JooYoung Kim on 2022/03/02.
//

import Foundation

public enum ErrorType: String {
    
    // MARK: 기능별
    case logic
    case login
    case configuration
    case notification
    case alert
    
    // MARK: API
    case apiFail
}

//
//  BootLoader.swift
//  WineApp
//
//  Created by JooYoung Kim on 2022/03/02.
//

import Foundation
import UIKit

// 각 부트로더 모듈이 상속받을 프로토콜. instance를 생성하지 않고 class func으로 구현한다.
protocol BootLoaderProtocol {
    static func loadModule(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
}

class BootLoader {
    private static var shared: BootLoader? = BootLoader()
    private let uiThreadBootLoaderModules: [BootLoaderProtocol.Type]
    
    private init() {
        // 부트로더 모듈 목록
        uiThreadBootLoaderModules = [
            LoggerBootModule.self
        ]
    }
    class func runBootLoaderModules(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        shared?.runBootLoaderModulesOnInstance(application: application, launchOptions: launchOptions)
    }
    
    private func runBootLoaderModulesOnInstance(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        self.uiThreadBootLoaderModules.forEach { module in
            module.loadModule(application: application, launchOptions: launchOptions)
        }
    }
}

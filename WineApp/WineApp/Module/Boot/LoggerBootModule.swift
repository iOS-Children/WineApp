//
//  LoggerBootModule.swift
//  WineApp
//
//  Created by JooYoung Kim on 2022/03/02.
//

import Foundation
import UIKit
import CleanroomLogger

/// LoggerBoot
class LoggerBootModule: BootLoaderProtocol {
    
    class func loadModule(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        Log.enable(configuration: [ConsoleLogRecorder.configuration(minimumSeverity: .debug)])
    }
}

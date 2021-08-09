////
////  LoggerPackageLocal.swift
////  LoggerTest
////
////  Created by Владислав Станкевич on 8.08.21.
////
//
//import Foundation
//import Logging
//
//class CustomLogger {
//
//    lazy var logger = Logger.init(label: "com.example.BestExampleApp.main")
//    var currentMinTraceLevel = Logging.Logger.Level.trace
//    private var serialQueue = DispatchQueue.init(label: "serialQueue")
//
//    var flag = false
//
//    var showFileName = true
//    var showLine = true
//    var showFunctionName = true
//    var showMessage = true
//    var showContextVars = true
//
//    func writeLog(message: String, filename: String, functionName: String, line: String, contextVars: [String], messageTraceLevel: Logger.Level) {
//
//        serialQueue.async { [weak self] in
//
//            guard let self = self else { return }
//
//            let logMessage = self.configureLogMessage(message: message, fileName: filename, functionName: functionName, line: line, contextVars: contextVars)
//
//            if messageTraceLevel == .critical {
//                self.logger.critical("\(logMessage)")
//                print("CRITICAL LOG")
//            }
//
//            else if self.currentMinTraceLevel == .trace {
//
//                self.flag = true
//
//                if messageTraceLevel == .trace {
//                    self.logger.trace("\(logMessage)")
//                    print("TRACE LOG")
//                }
//                else if messageTraceLevel == .debug {
//                    self.logger.debug("\(logMessage)")
//                    print("DEBUG LOG")
//                }
//                else if messageTraceLevel == .info {
//                    self.logger.info("\(logMessage)")
//                    print("INFO LOG")
//                }
//                else if messageTraceLevel == .notice {
//                    self.logger.notice("\(logMessage)")
//                    print("NOTICE LOG")
//                }
//                else if messageTraceLevel == .warning {
//                    self.logger.warning("\(logMessage)")
//                    print("WARNING LOG")
//                }
//                else if messageTraceLevel == .error {
//                    self.logger.error("\(logMessage)")
//                    print("ERROR LOG")
//                }
//            }
//
//            else if self.currentMinTraceLevel == .debug {
//
//                if messageTraceLevel == .debug {
//                    self.logger.debug("\(logMessage)")
//                    print("DEBUG LOG")
//                }
//                else if messageTraceLevel == .info {
//                    self.logger.info("\(logMessage)")
//                    print("INFO LOG")
//                }
//                else if messageTraceLevel == .notice {
//                    self.logger.notice("\(logMessage)")
//                    print("NOTICE LOG")
//                }
//                else if messageTraceLevel == .warning {
//                    self.logger.warning("\(logMessage)")
//                    print("WARNING LOG")
//                }
//                else if messageTraceLevel == .error {
//                    self.logger.error("\(logMessage)")
//                    print("ERROR LOG")
//                }
//            }
//
//            else if self.currentMinTraceLevel == .info {
//
//                if messageTraceLevel == .info {
//                    self.logger.info("\(logMessage)")
//                    print("INFO LOG")
//                }
//                else if messageTraceLevel == .notice {
//                    self.logger.notice("\(logMessage)")
//                    print("NOTICE LOG")
//                }
//                else if messageTraceLevel == .warning {
//                    self.logger.warning("\(logMessage)")
//                    print("WARNING LOG")
//                }
//                else if messageTraceLevel == .error {
//                    self.logger.error("\(logMessage)")
//                    print("ERROR LOG")
//                }
//            }
//
//            else if self.currentMinTraceLevel == .notice {
//
//                if messageTraceLevel == .notice {
//                    self.logger.notice("\(logMessage)")
//                    print("NOTICE LOG")
//                }
//                else if messageTraceLevel == .warning {
//                    self.logger.warning("\(logMessage)")
//                    print("WARNING LOG")
//                }
//                else if messageTraceLevel == .error {
//                    self.logger.error("\(logMessage)")
//                    print("ERROR LOG")
//                }
//            }
//
//            else if self.currentMinTraceLevel == .warning {
//
//                if messageTraceLevel == .warning {
//                    self.logger.warning("\(logMessage)")
//                    print("WARNING LOG")
//                }
//                else if messageTraceLevel == .error {
//                    self.logger.error("\(logMessage)")
//                    print("ERROR LOG")
//                }
//            }
//
//            else if self.currentMinTraceLevel == .error && messageTraceLevel == .error{
//
//                self.logger.error("\(logMessage)")
//                print("ERROR LOG")
//            }
//        }
//    }
//
//    func configureLogMessage(message: String, fileName: String, functionName: String, line: String, contextVars: [String]) -> String {
//        var logMessage = ""
//        if showMessage {
//            logMessage.append("\(message) ")
//        }
//        if showFileName {
//            logMessage.append("\(fileName) ")
//        }
//        if showFunctionName {
//            logMessage.append("\(functionName) ")
//        }
//        if showContextVars {
//            logMessage.append("\(contextVars) ")
//        }
//        return logMessage
//    }
//}
//
//
//

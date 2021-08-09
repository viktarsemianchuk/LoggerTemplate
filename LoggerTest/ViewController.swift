//
//  ViewController.swift
//  LoggerTest
//
//  Created by Владислав Станкевич on 5.08.21.
//

import UIKit
import LoggerPackage
import Logging

class ViewController: UIViewController {
    
    @IBOutlet weak var traceButton: UIButton!
    
    @IBOutlet weak var debugButton: UIButton!
    
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet weak var noticeButton: UIButton!
    
    @IBOutlet weak var warningButton: UIButton!
    
    @IBOutlet weak var errorButton: UIButton!
    
    @IBOutlet weak var criticalButton: UIButton!
    
    @IBOutlet weak var logTextfied: UITextField!

    
    var currentLogLevel = Logging.Logger.Level.trace
    let customLogger = CustomLogger()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customLogger.showFileName = false
        customLogger.showLine = false
        

    }

    // MARK: log level buttons

    @IBAction func traceTapped(_ sender: Any) {
    
        customLogger.currentMinTraceLevel = .trace
        self.refreshButtons()
    }
    
    @IBAction func debugTapped(_ sender: Any) {
        customLogger.currentMinTraceLevel = .debug
        self.refreshButtons()
    }
    
    @IBAction func infoTapped(_ sender: Any) {
        customLogger.currentMinTraceLevel = .info
        self.refreshButtons()
    }

    @IBAction func noticeTapped(_ sender: Any) {
        customLogger.currentMinTraceLevel = .notice
        self.refreshButtons()
    }
    
    @IBAction func warningTapped(_ sender: Any) {
        customLogger.currentMinTraceLevel = .warning
        self.refreshButtons()
    }
    
    @IBAction func errorTapped(_ sender: Any) {
        customLogger.currentMinTraceLevel = .error
        self.refreshButtons()
    }
    
    @IBAction func criticalTapped(_ sender: Any) {
        customLogger.currentMinTraceLevel = .critical
        self.refreshButtons()
    }
    
    // MARK: send buttons
    
    @IBAction func sendTrace(_ sender: Any) {
//            customLogger.writeLog(message: "\(logTextfied.text!)", messageTraceLevel: .trace)
        customLogger.writeLog(message: "\(logTextfied.text!)", filename: "ViewController.swift", functionName: "sendTrace", line: "83", contextVars: ["No vars"], messageTraceLevel: .trace)
    }
    
    @IBAction func sendDebug(_ sender: Any) {
//            customLogger.writeLog(message: "\(logTextfied.text!)", messageTraceLevel: .debug)
        customLogger.writeLog(message: "\(logTextfied.text!)", filename: "ViewController.swift", functionName: "sendDebug", line: "88", contextVars: ["No vars"], messageTraceLevel: .debug)
    }
    
    @IBAction func sendInfo(_ sender: Any) {
//            customLogger.writeLog(message: "\(logTextfied.text!)", messageTraceLevel: .info)
        customLogger.writeLog(message: "\(logTextfied.text!)", filename: "ViewController.swift", functionName: "sendInfo", line: "93", contextVars: ["No vars"], messageTraceLevel: .info)
    }
    
    @IBAction func sendNotice(_ sender: Any) {
//            customLogger.writeLog(message: "\(logTextfied.text!)", messageTraceLevel: .notice)
        customLogger.writeLog(message: "\(logTextfied.text!)", filename: "ViewController.swift", functionName: "sendNotice", line: "98", contextVars: ["No vars"], messageTraceLevel: .notice)
    }
    
    @IBAction func sendWarning(_ sender: Any) {
//            customLogger.writeLog(message: "\(logTextfied.text!)", messageTraceLevel: .warning)
        customLogger.writeLog(message: "\(logTextfied.text!)", filename: "ViewController.swift", functionName: "sendWarning", line: "103", contextVars: ["No vars"], messageTraceLevel: .warning)
    }
    
    @IBAction func sendError(_ sender: Any) {
//            customLogger.writeLog(message: "\(logTextfied.text!)", messageTraceLevel: .error)
        customLogger.writeLog(message: "\(logTextfied.text!)", filename: "ViewController.swift", functionName: "sendError", line: "108", contextVars: ["No vars"], messageTraceLevel: .error)
    }
    
    @IBAction func sendCritical(_ sender: Any) {
//            customLogger.writeLog(message: "\(logTextfied.text!)", messageTraceLevel: .critical)
        customLogger.writeLog(message: "\(logTextfied.text!)", filename: "ViewController.swift", functionName: "sendCritical", line: "113", contextVars: ["No vars"], messageTraceLevel: .critical)
    }
    
    // MARK: other
    
    func refreshButtons() {
        if customLogger.currentMinTraceLevel == .trace {
            self.traceButton.setTitleColor(.systemGreen, for: .normal)
            self.debugButton.setTitleColor(.systemGreen, for: .normal)
            self.infoButton.setTitleColor(.systemGreen, for: .normal)
            self.noticeButton.setTitleColor(.systemGreen, for: .normal)
            self.warningButton.setTitleColor(.systemGreen, for: .normal)
            self.errorButton.setTitleColor(.systemGreen, for: .normal)
            self.criticalButton.setTitleColor(.systemGreen, for: .normal)
        }
        else if customLogger.currentMinTraceLevel == .debug {
            self.traceButton.setTitleColor(.systemRed, for: .normal)
            self.debugButton.setTitleColor(.systemGreen, for: .normal)
            self.infoButton.setTitleColor(.systemGreen, for: .normal)
            self.noticeButton.setTitleColor(.systemGreen, for: .normal)
            self.warningButton.setTitleColor(.systemGreen, for: .normal)
            self.errorButton.setTitleColor(.systemGreen, for: .normal)
            self.criticalButton.setTitleColor(.systemGreen, for: .normal)
        }
        
        else if customLogger.currentMinTraceLevel == .info {
            self.traceButton.setTitleColor(.systemRed, for: .normal)
            self.debugButton.setTitleColor(.systemRed, for: .normal)
            self.infoButton.setTitleColor(.systemGreen, for: .normal)
            self.noticeButton.setTitleColor(.systemGreen, for: .normal)
            self.warningButton.setTitleColor(.systemGreen, for: .normal)
            self.errorButton.setTitleColor(.systemGreen, for: .normal)
            self.criticalButton.setTitleColor(.systemGreen, for: .normal)
        }
        
        else if customLogger.currentMinTraceLevel == .notice {
            self.traceButton.setTitleColor(.systemRed, for: .normal)
            self.debugButton.setTitleColor(.systemRed, for: .normal)
            self.infoButton.setTitleColor(.systemRed, for: .normal)
            self.noticeButton.setTitleColor(.systemGreen, for: .normal)
            self.warningButton.setTitleColor(.systemGreen, for: .normal)
            self.errorButton.setTitleColor(.systemGreen, for: .normal)
            self.criticalButton.setTitleColor(.systemGreen, for: .normal)
        }
        
        else if customLogger.currentMinTraceLevel == .warning {
            self.traceButton.setTitleColor(.systemRed, for: .normal)
            self.debugButton.setTitleColor(.systemRed, for: .normal)
            self.infoButton.setTitleColor(.systemRed, for: .normal)
            self.noticeButton.setTitleColor(.systemRed, for: .normal)
            self.warningButton.setTitleColor(.systemGreen, for: .normal)
            self.errorButton.setTitleColor(.systemGreen, for: .normal)
            self.criticalButton.setTitleColor(.systemGreen, for: .normal)
        }
        
        else if customLogger.currentMinTraceLevel == .error {
            self.traceButton.setTitleColor(.systemRed, for: .normal)
            self.debugButton.setTitleColor(.systemRed, for: .normal)
            self.infoButton.setTitleColor(.systemRed, for: .normal)
            self.noticeButton.setTitleColor(.systemRed, for: .normal)
            self.warningButton.setTitleColor(.systemRed, for: .normal)
            self.errorButton.setTitleColor(.systemGreen, for: .normal)
            self.criticalButton.setTitleColor(.systemGreen, for: .normal)
        }
        
        else if customLogger.currentMinTraceLevel == .critical {
            self.traceButton.setTitleColor(.systemRed, for: .normal)
            self.debugButton.setTitleColor(.systemRed, for: .normal)
            self.infoButton.setTitleColor(.systemRed, for: .normal)
            self.noticeButton.setTitleColor(.systemRed, for: .normal)
            self.warningButton.setTitleColor(.systemRed, for: .normal)
            self.errorButton.setTitleColor(.systemRed, for: .normal)
            self.criticalButton.setTitleColor(.systemGreen, for: .normal)
        }
    }
    
    func presentAlert() {
        let alert = UIAlertController(title: "Good job!",
                                      message: nil,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok",
                                      style: .default,
                                      handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}


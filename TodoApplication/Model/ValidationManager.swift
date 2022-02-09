//
//  ValidationManager.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import Foundation

protocol Validator {
    func isValid(_ value:String) -> Bool
}

enum ValidatorType{
    case basic
}

enum ValidatorFactory{
    static func validateFor(type:ValidatorType) -> Validator{
        switch type {
        case .basic:
            return BasicValidator()
        }
    }
}

struct BasicValidator:Validator {
    
    func isValid(_ value: String) -> Bool {
        return value.utf8.count > 0
    }
}

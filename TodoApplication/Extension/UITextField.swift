//
//  UITextField.swift
//  TodoApplication
//
// © 2021 by KeenEye Solutions

import UIKit

extension UITextField {
    func validateText(validationType:ValidatorType) -> Bool {
        let validator  = ValidatorFactory.validateFor(type: validationType)
        return validator.isValid(self.text!)
    }
}

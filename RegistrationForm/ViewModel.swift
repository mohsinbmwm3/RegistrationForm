//
//  ViewModel.swift
//  RegistrationForm
//
//  Created by Khan, Mohsin on 03/02/22.
//

import UIKit

protocol ViewModel: AnyObject {
    var _title: String { get set }
    var _value: String { get set }
    
    func title() -> String
    func value() -> String
}
extension ViewModel {
    func title() -> String {
        return _title
    }
    func value() -> String {
        return _value
    }
}

class TextInputViewModel: ViewModel {
    var _title: String
    var _value: String
    
    private var _isSecure: Bool
    
    init(title: String, value: String = "", isSecure: Bool = false) {
        self._title = title
        self._value = value
        self._isSecure = isSecure
    }
    
    func isSecure() -> Bool {
        return _isSecure
    }
}

class ToggleInputViewModel: ViewModel {
    var _title: String
    var _value: String
    
    private var _isOn: Bool
    
    init(title: String, value: String = "", isOn: Bool = false) {
        self._title = title
        self._value = value
        self._isOn = isOn
    }
    
    func isOn() -> Bool {
        return _isOn
    }
}

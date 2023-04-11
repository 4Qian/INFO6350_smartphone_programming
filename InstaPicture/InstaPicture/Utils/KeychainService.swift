//
//  KeychainService.swift
//  InstaPicture
//
//  Created by 李谦 on 4/10/23.
//

import Foundation
import KeychainSwift

class KeychainService {
    var _keyChain = KeychainSwift()
    
    var keyChain : KeychainSwift{
        get {
            return _keyChain
        }
        set {
            _keyChain = newValue
        }
    }
}

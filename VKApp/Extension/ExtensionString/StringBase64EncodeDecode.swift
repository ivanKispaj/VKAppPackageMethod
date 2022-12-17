//
//  StringBase64EncodeDecode.swift
//  VKApp
//
//  Created by Ivan Konishchev on 14.12.2022.
//
//
// Base64 encode decode string
// encode:  "string".encodeBase64()
// decode:  "string".decodeBase64()
//
// *If the string is empty, returns an empty string
//
// *If there is an encoding error, it will return the original string

import Foundation

public extension String {
    
    func encodeBase64() -> String {
        guard let encoding = data(using: .utf8)?.base64EncodedString() else { return self }
        return encoding
    }
    
    func decodeBase64() -> String {
        guard let data = Data(base64Encoded: self) else { return self }
        guard let ret = String(data: data, encoding: .utf8) else { return self }
                return ret
    }
}

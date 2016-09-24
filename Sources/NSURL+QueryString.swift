//
//  URL+QueryString.swift
//  Pereira-da-silva.Com
//
//  Created by Benoit Pereira da Silva on 29/04/2015.
//  Copyright (c) 2015 Azurgate. All rights reserved.
//

import Foundation

public extension URL {
    
    // IOS7 support
    public func queryStringDictionary() -> Dictionary<String, String>? {
        var results = [String:String]()
        let keyValues = self.query?.components(separatedBy: "&")
        if (keyValues?.count)! > 0 {
            for pair in keyValues! {
                let kv = pair.components(separatedBy: "=")
                if kv.count > 1 {
                    results.updateValue(kv[1], forKey: kv[0])
                }
            }
        }
        return results
    }
    
}

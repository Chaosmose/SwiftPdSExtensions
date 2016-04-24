//
//  URL+QueryString.swift
//  Pereira-da-silva.Com
//
//  Created by Benoit Pereira da Silva on 29/04/2015.
//  Copyright (c) 2015 Azurgate. All rights reserved.
//

public extension NSURL {
    
    // IOS7 support
    public func queryStringDictionary() -> Dictionary<String, String>? {
        var results = [String:String]()
        let keyValues = self.query?.componentsSeparatedByString("&")
        if keyValues?.count > 0 {
            for pair in keyValues! {
                let kv = pair.componentsSeparatedByString("=")
                if kv.count > 1 {
                    results.updateValue(kv[1], forKey: kv[0])
                }
            }
        }
        return results
    }
    
}

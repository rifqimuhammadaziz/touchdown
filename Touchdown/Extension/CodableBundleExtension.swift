//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Rifqi Muhammad Aziz on 16/04/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. Create a Property for the Data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load data \(file) from bundle.")
        }
        
        // 3. Create a Decoder
        let decoder = JSONDecoder()
        
        // 4. Create a Property for the Decoded Data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. Return the ready-to-use Data
        return decodedData
    }
}

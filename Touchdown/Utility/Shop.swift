//
//  Shop.swift
//  Touchdown
//
//  Created by Rifqi Muhammad Aziz on 18/04/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}

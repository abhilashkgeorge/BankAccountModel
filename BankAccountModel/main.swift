//
//  main.swift
//  BankAccountModel
//
//  Created by Abhilash k George on 01/12/21.
//


import Foundation
struct Bank {
    func createAccount() {
        
    }
}
protocol CreateAccountProtocol {
    var name: String {get}
    var initialAmount: Double {get}
    var accountNumber: CLong {get}
    func createAccount(name: String, initialAmount: Double, accountNumber: CLong)
}

struct User: CreateAccountProtocol {
    var name: String
    
    var initialAmount: Double
    
    var accountNumber: CLong
    
    func createAccount(name: String, initialAmount: Double, accountNumber: CLong) {
        
    }
}

struct Atm {
    
}

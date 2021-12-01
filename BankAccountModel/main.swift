//
//  main.swift
//  BankAccountModel
//
//  Created by Abhilash k George on 01/12/21.
//
import Foundation

class Bank {
    var user = user1

    func createAccount(name: String, initialAmount: Double, accountNumber: CLong) -> User{
//        let accountNumber = accountNumber() 13 digit unique number
        
        let newUser = User(name: name, initialAmount: initialAmount, accountNumber: accountNumber, remainingBalance: initialAmount)
        return newUser
    }
    
}
protocol CreateAccountProtocol {
    var name: String {get}
    var initialAmount: Double {get}
    var accountNumber: CLong {get}
    var remainingBalance: Double { get }
}

struct User: CreateAccountProtocol {
    var name: String
    var initialAmount: Double
    var accountNumber: CLong
    var remainingBalance: Double
    
}

let user1 = User(name: "absy", initialAmount: 1000.00, accountNumber: 1234567890123, remainingBalance: 800.00)


protocol AccountInterestProtocol{
    
}

class Account {
    
    var emailId: String?
    var phoneNumber: CLong?
    var balance: Double
    var kindOfAccount: String
    var interestRate: Double
    init(balance: Double, interestRate: Double, kindOfAccount: String){
        self.balance = balance
        self.interestRate = interestRate
        self.kindOfAccount = kindOfAccount
    }
    
    func remainingBalance(accountNumber: CLong) ->  Double{
        let remainingBalance = balance
        return remainingBalance
        
    }
    
    func calculateInterest(accountType: String) -> Double {
        let interestRate = 0.8
        balance = balance * (balance * interestRate / 365)
        return balance
    }
    
    
}
protocol CaSaProtocol: Account {
    func deposit(amount: Double)
    func withdraw(amount: Double)
    func printAccountStatement() -> String
}

class CurrentAccount : Account, CaSaProtocol {
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) {
        balance -= amount
    }
    
    func printAccountStatement() -> String {
        return " Account Statement "
    }
    
}
    
class SavingsAccount : Account, CaSaProtocol {
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) {
        balance -= amount
    }
    
    func printAccountStatement() -> String {
        // last 10 withdraw operations on the account
        return " Account Statement "
    }
    
}
protocol DepositAccountProtocol: Account {
    func deposit(amount: Double)
}

class FixedAccount: Account, DepositAccountProtocol{
    
    var depositCounter = 1
    func deposit(amount: Double) {
        if depositCounter > 0 {
            balance += amount
            depositCounter -= 1
//            return balance
        } else {
            print("Maximum limit exceeded")
        }
    }
    override func calculateInterest(accountType: String) -> Double {
        let interestRate = 0.8
        let termOfDeposit = 24.00
        
        balance = balance + balance * interestRate * termOfDeposit
        return balance
    }
}

class RecurringAccount: Account, DepositAccountProtocol{

    func deposit(amount: Double) {
        balance += amount
          //  return balance
        }
    func printAccountStatement() -> String {
        return " Account Statement "
    }
    override func calculateInterest(accountType: String) -> Double {
        let interestRate = 0.8
        let termOfDeposit = 12.00
        
        balance = balance + balance * interestRate * termOfDeposit
        return balance
    }


}
protocol LoanAccountProtocol: Account {
    func deposit(amount: Double)
    func printAccountStatement() -> String
}

class HouseLoan: Account, LoanAccountProtocol {
    func deposit(amount: Double) {
        balance += amount
    }
    
    func printAccountStatement() -> String {
        return " Account Statement "
    }
}

class VehicleLoan: Account, LoanAccountProtocol {
    func deposit(amount: Double) {
        balance += amount
    }
    
    func printAccountStatement() -> String {
        return " Account Statement "
    }
}

class PersonalLoan: Account, LoanAccountProtocol {
    func deposit(amount: Double) {
        balance += amount
    }
    
    func printAccountStatement() -> String {
        return " Account Statement "
    }
}


class AccountManager {
    var accounts : [String : CLong]
    init(accounts: [String : CLong]){
        self.accounts = accounts
    }
    
}


//
//  BankAppTests.swift
//  BankAppTests
//
//  Created by Mohammad Azam on 3/29/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import BankApp

class BankAppTests: XCTestCase {
    
    private var account: Account!
    
    override func setUp() {
        super.setUp()
        
        account = Account()
    }

    func test_InitialBalanceZero() {
        
        let account = Account()
        XCTAssertTrue(account.balance == 0, "Balance is not zero!")
    }
    
    func test_DepositsCertainAmount() {
        
        var account = Account()
        account.deposit(100)
        
        XCTAssertEqual(100, account.balance)
    }

}

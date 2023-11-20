//
//  Expense.swift
//  MoneyTracker
//
//  Created by Abdur Siddiqui on 2023-11-17.
//

import FirebaseFirestoreSwift
import Sw
struct Expense: Identifiable, Codable {
    @DocumentID var id: String?
    var amount: Int
    var name: String
    @ServerTimestamp var date: Timestamp?
    enum CodingKeys: String, CodingKey {
        case id
        case amount
        case date
        case name
    }
    
    init(amount: Int, name: String) {
        self.amount = amount
        self.name = name
    }
    
}

import FirebaseFirestoreSwift
import SwiftUI

struct ExpenseModel: Identifiable, Codable {
    
    @DocumentID var id: String?
    var amount: Int
    
    @ServerTimestamp var date: Date?
    
    var name: String
    
    init(amount: Int, name: String, date: Date = Date()) {
        self.amount = amount
        self.name = name
        self.date = date
    }
    
}

  


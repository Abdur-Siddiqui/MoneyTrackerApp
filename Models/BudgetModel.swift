import FirebaseFirestoreSwift
import SwiftUI
struct BudgetModel: Identifiable, Codable {
    
    
    @DocumentID var id: String?
    var endDate: Date?
    var budgetedAmount: Int
    var name: String
    @ServerTimestamp var startDate: Date?

    init(budgetedAmount: Int, name: String, startDate: Date? = nil, endDate: Date? = nil) {
        self.budgetedAmount = budgetedAmount
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
    }
}


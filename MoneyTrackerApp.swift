
import SwiftUI
import Firebase

@main
struct MoneyTrackerApp: App {
    //@StateObject private var budgetViewModel = BudgetViewModel()
    @StateObject var expensiveViewModel = ExpenseViewModel()
    @AppStorage("isDarkModeOn") var isDarkModeOn: Bool = {
        if UITraitCollection.current.userInterfaceStyle == .dark {
            return true
        } else {
            return false
        }
    }()
    
    init(){
        FirebaseApp.configure()
    }
    

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.colorScheme, isDarkModeOn ? .dark : .light)
                .environmentObject(expensiveViewModel)
               // .environmentObject(budgetViewModel)
            
        }
    }
}

import SwiftUI


struct ContentView: View {
    @AppStorage("isDarkModeOn") private var isDarkModeOn: Bool = false

    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tabItem {
                Label("Home", systemImage: "house.circle")
            }
            .background(isDarkModeOn ? Color.black : Color.white)
            .foregroundColor(isDarkModeOn ? Color.white : Color.black)

            AddExpense()
                .tabItem {
                    Label("Expense Input", systemImage: "banknote")
                }
            .background(isDarkModeOn ? Color.black : Color.white)
            .foregroundColor(isDarkModeOn ? Color.white : Color.black)

            ExpenseStatistics()
                .tabItem {
                    Label("Expense Statistics", systemImage: "dollarsign")
                }
            .background(isDarkModeOn ? Color.black : Color.white)
            .foregroundColor(isDarkModeOn ? Color.white : Color.black)

            BudgetManagement()
                .tabItem {
                    Label("Budget", systemImage: "dollarsign.arrow.circlepath")
                }
            .background(isDarkModeOn ? Color.black : Color.white)
            .foregroundColor(isDarkModeOn ? Color.white : Color.black)
        }
        .background(isDarkModeOn ? Color.black : Color.white) // Set the background color for the entire view
        .foregroundColor(isDarkModeOn ? Color.white : Color.black)
    }
}

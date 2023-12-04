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
           
            AddExpense()
                .tabItem {
                    Label("Expense Input", systemImage: "banknote")
                }
                .background(isDarkModeOn ? Color.black : Color.white)
            
                       ExpenseStatiistics()
             .tabItem {
             Label("Expense Statistics", systemImage: "dollarsign")
             }
             .background(isDarkModeOn ? Color.black : Color.white)
   
            
            
             BudgetManagement()
             .tabItem {
             Label("Budget", systemImage: "dollarsign.arrow.circlepath")
             }
             .background(isDarkModeOn ? Color.black : Color.white)
           
            AdviceForm()
               .tabItem {
                   Label("Advice Tracker", systemImage: "note.text" )
               }
           
             }
             .background(isDarkModeOn ? Color.black : Color.white)
             }
            
            
            
        }
             
        
    

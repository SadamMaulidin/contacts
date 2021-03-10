import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ContactListView()
                .navigationBarTitle(Text("Contacts"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

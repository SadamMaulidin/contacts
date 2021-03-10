import Combine
import SwiftUI

struct ContactListView: View {
    @ObservedObject var networkLoader = NetworkLoader()
    @State var contactList = ContactList(contacts: [])
    var body: some View {
        return VStack {
            List(contactList.contacts, id: \.id) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    ListItem(contact: contact)
                }
            }.onReceive(networkLoader.didChange) { result in
                self.contactList = result
            }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}

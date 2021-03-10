
import Foundation

struct Contact: Hashable, Codable {
    var id: String
    var name: String
    var image: String
    var phone: String
    var email: String
}

struct ContactList: Decodable {
    var contacts: [Contact]
}



//: Amir Shabani - Twitter: _Schabaani
// Singleton Design Pattern



class NetworkManager {
    
    // MARK: - Properties
    let url: String
    static let shared = NetworkManager(url: "http://sete.ir")

    
    // Initialization
    private init(url: String) {
        self.url = url
    }
}

print(NetworkManager.shared.url)

// below line doesn't work.
// let network = NetworkManager(url: "http://sete.ir")

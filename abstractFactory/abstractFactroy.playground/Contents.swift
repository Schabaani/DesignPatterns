

//: Amir Shabani - Twitter: _Schabaani
// Abstract Factory Design Pattern
// https://medium.com/swift-programming/design-patterns-creational-patterns-factory-pattern-in-swift-d049af54235b

protocol JobContactProtocol {
    func sendRequestResumeEmail()->String
}

struct Contact{
    var name: String
    var email: String
    var job: Job
    var desiredSal: Double
    
    enum Job {
        case iOS
        case Android
        case Web
        case QA
        case Product_Owner
    }
}

struct iOSDeveloperJobSeeker: JobContactProtocol{
    var contact: Contact
    
    init(contact: Contact){
        self.contact = contact
    }
    
    func sendRequestResumeEmail()->String{
        return "Dear \(contact.name), this is the best time to be an iOS developer! Send me you're resume today! I have job opportunities that pay \(contact.desiredSal)."
    }
}

struct AndroidDeveloperJobSeeker: JobContactProtocol{
    var contact: Contact
    
    init(contact: Contact){
        self.contact = contact
    }
    
    func sendRequestResumeEmail()->String{
        return "Dear \(contact.name), this is as decent time to be an Android developer! Send me you're resume today! I have job opportunities that pay close to the \(contact.desiredSal) you are looking for"
    }
}

struct WebDeveloperJobSeeker: JobContactProtocol{
    var contact: Contact
    
    init(contact: Contact){
        self.contact = contact
    }
    
    func sendRequestResumeEmail()->String{
        return "Dear \(contact.name), Send me you're resume today! I have job opportunities for you."
    }
}

struct QADeveloperJobSeeker: JobContactProtocol{
    var contact: Contact
    
    init(contact: Contact){
        self.contact = contact
    }
    
    func sendRequestResumeEmail()->String{
        return "Dear \(contact.name), The market is tough but the code is still buggy!  Good news for you because I know the best companies for buggy code and they need you!"
    }
}

struct ProductOwnerDeveloperJobSeeker: JobContactProtocol{
    var contact: Contact
    
    init(contact: Contact){
        self.contact = contact
    }
    
    func sendRequestResumeEmail()->String{
        return "Dear \(contact.name), Times are still good to be in development.  Maybe you should consider learning to code or going back to code. If we can cut your desired salary of \(contact.desiredSal) in half, I should be able to place you as a contract to hire. Send me your resume!"
    }
}

struct JobContacterFactory{
    static func getJobSeeker(contact: Contact)->JobContactProtocol {
        switch contact.job {
        case .iOS:
            return iOSDeveloperJobSeeker(contact: contact)
        case .Android:
            return AndroidDeveloperJobSeeker(contact: contact)
        case .Web:
            return WebDeveloperJobSeeker(contact: contact)
        case .QA:
            return QADeveloperJobSeeker(contact: contact)
        case .Product_Owner:
            return ProductOwnerDeveloperJobSeeker(contact: contact)
        }
    }
}

var contacts = [Contact]()
contacts.append(Contact(name: "J Rob", email: "jrob@example.com", job: .iOS, desiredSal: 135000))

contacts.append(Contact(name: "K Rock", email: "krock@example.com", job: .Android, desiredSal: 134000))

contacts.append(Contact(name: "P Money", email: "pmoney@example.com", job: .Web, desiredSal: 110000))

contacts.append(Contact(name: "S Sham", email: "ssham@example.com", job: .QA, desiredSal: 95000))

contacts.append(Contact(name: "L Roger", email: "lroger@example.com", job: .Product_Owner, desiredSal: 165000))


for contact in contacts{
    let client = JobContacterFactory.getJobSeeker(contact: contact)
    print (client.sendRequestResumeEmail())
}
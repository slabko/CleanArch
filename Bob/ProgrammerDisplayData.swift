import Foundation

struct ProgrammerDisplayData {
    var name: String
    var interviewData: Date
    var favorite: Bool
    
    init(programmer: Programmer) {
        name = programmer.name
        interviewData = programmer.interviewDate
        favorite = programmer.favorite
    }
}

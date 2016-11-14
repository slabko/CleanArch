import Foundation

class InMemoryRepo: EntityGateway {
    func fetchProgrammers() -> [Programmer] {
        let p = Programmer(
            name: "Pieter Griffin",
            emacs: 10,
            caffeine: 5,
            rating: 10,
            interviewDate: Date.init(timeIntervalSinceReferenceDate: 10000),
            favorite: true)
        return [p]
    }
}

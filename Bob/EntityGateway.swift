import Foundation

protocol EntityGateway {
    func fetchProgrammers() -> [Programmer]
}

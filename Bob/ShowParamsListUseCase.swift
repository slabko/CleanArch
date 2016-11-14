import Foundation

class ShowProgrammersListUseCase {
    
    let entityGateway: EntityGateway
    var presenter: ShowProgrammerListPresentation!
    
    init(enitytGateway: EntityGateway) {
        self.entityGateway = enitytGateway
    }
    
    func showParams() {
        let programmers = entityGateway.fetchProgrammers()
        
        // filter data to a different structure
        let programmerDisplayData = programmers.map(ProgrammerDisplayData.init)
        
        // pass data to the presenter
        presenter.presentProgrammers(progs: programmerDisplayData)
    }
}

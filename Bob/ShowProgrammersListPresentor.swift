import Foundation

class ShowProgrammersListPresentor {
    fileprivate var programmers: [ProgrammerDisplayData] = []
    let useCase: ShowProgrammersListUseCase
    
    init(useCase: ShowProgrammersListUseCase) {
        self.useCase = useCase
    }
    
    func viewCreated() {
        useCase.showParams()
    }
    
    func programmersCount() -> Int {
        return programmers.count
    }

    func configure(view: ProgrammerCellView, at index: Int) {
        view.displayName(name: programmers[index].name)
    }
}

extension ShowProgrammersListPresentor: ShowProgrammerListPresentation {
    func presentProgrammers(progs: [ProgrammerDisplayData]) {
        programmers = progs
    }
}


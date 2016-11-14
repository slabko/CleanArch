import UIKit

class ProgrammerTableViewCell: UITableViewCell {
    
}

extension ProgrammerTableViewCell: ProgrammerCellView {
    func displayName(name: String) {
        self.textLabel?.text = name
    }
    func displayDate(string: String) {}
    func displayFavorite(favorite: Bool) {}
}

import UIKit

class ProgrammerViewController: UITableViewController {
    
    var presenter: ShowProgrammersListPresentor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        presenter?.viewCreated()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.programmersCount() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Prog",
                                                 for: indexPath)
        presenter?.configure(view: (cell as! ProgrammerCellView), at: 0)
        return cell
    }
}

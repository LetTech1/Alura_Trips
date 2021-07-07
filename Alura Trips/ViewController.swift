
import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    @IBOutlet weak var tableTrips: UITableView!
    
    let listTrips:Array<String> = ["Rio de Janeiro", "Ceará", "São Paulo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableTrips.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTrips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listTrips[indexPath.row]
        
        return cell
    }
}


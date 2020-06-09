import UIKit

class FoodTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CafeLocation.shared.cafeLocation().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTableViewCell", for: indexPath) as? FoodTableViewCell else {
            return UITableViewCell()
        }
        
        let informationGroup = CafeLocation.shared.cafeLocation()[indexPath.row]
        cell.setup(with: informationGroup)
        return cell
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moreLocation" {
            guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return }
            let cafes = CafeLocation.shared.cafeLocation()[indexPath.row]
            if let cafeCollectionViewController: CafeCollectionViewController = segue.destination as? CafeCollectionViewController {
                cafeCollectionViewController.cafes = cafes
            }
        }
    }
}

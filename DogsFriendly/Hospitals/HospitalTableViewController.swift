import UIKit

class HospitalTableViewController: UITableViewController, UISearchResultsUpdating  {
    
    private let hospital = HospitalPets.shared.hospitalsLocation()
    
    // Search bar
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    let searchController = UISearchController(searchResultsController: nil)
    var filteredHospitals = HospitalPets.shared.hospitalsLocation()
    
    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        let hospitals = hospital
        filteredHospitals = hospitals.filter({( hospital : Hospital) -> Bool in
            return hospital.district.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Search bar
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        self.definesPresentationContext = true
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filteredHospitals.count
        }
        return hospital.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "HospitalTableViewCell", for: indexPath) as? HospitalTableViewCell else {
            return UITableViewCell()
        }
        var informationHospital: Hospital
        if isFiltering() {
            informationHospital = filteredHospitals[indexPath.row]
        } else {
            informationHospital = hospital[indexPath.row]
        }
        cell.setup(with: informationHospital)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moreDistrict" {
            guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return }
            let hospitals = HospitalPets.shared.hospitalsLocation()[indexPath.row]
            if let districtTableViewController: DistrictTableViewController = segue.destination as? DistrictTableViewController {
                districtTableViewController.hospitals = hospitals
            }
        }
    }
}

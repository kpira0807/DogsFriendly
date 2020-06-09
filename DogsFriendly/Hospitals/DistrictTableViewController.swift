import UIKit

class DistrictTableViewController: UITableViewController {
    
    var hospitals: Hospital?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(hospitals?.district ?? "error") р-н"
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hospitals?.address.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "DistrictTableViewCell", for: indexPath) as? DistrictTableViewCell else {
            return UITableViewCell()
        }
        let hospital = hospitals?.address[indexPath.row]
        cell.nameVet.text = hospital?.name
        cell.addressVet.text = hospital?.direct
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moreHospital" {
            guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return }
            let hospital = hospitals?.address[indexPath.row]
            if let hospitalViewController: HospitalViewController = segue.destination as? HospitalViewController {
                hospitalViewController.hospitalInfo = hospital
            }
        }
    }
}

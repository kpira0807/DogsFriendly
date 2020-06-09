import UIKit

class DistrictTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageVet: UIImageView!
    @IBOutlet weak var nameVet: UILabel!
    @IBOutlet weak var addressVet: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.newGrey.cgColor
        
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        
        imageVet.image = #imageLiteral(resourceName: "bilding")
    }
}

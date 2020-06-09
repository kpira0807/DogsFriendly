import UIKit

class HospitalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageHospital: UIImageView!
    @IBOutlet weak var nameDistrict: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageHospital.image = #imageLiteral(resourceName: "hospital")
        imageHospital.layer.cornerRadius = imageHospital.frame.size.width / 2
        imageHospital.clipsToBounds = true
    }
    
    func setup(with informationHospital: Hospital) {
        nameDistrict.text = "\(informationHospital.district) район"
    }
}

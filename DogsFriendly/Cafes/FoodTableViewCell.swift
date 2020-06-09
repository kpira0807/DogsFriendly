import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        groupImage.layer.cornerRadius = groupImage.frame.size.width / 2
        groupImage.clipsToBounds = true
  
    }
    
    func setup(with informationGroup: Cafes) {
        titlelabel.text = informationGroup.group
        groupImage.image = informationGroup.image
    }
}

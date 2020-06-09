import UIKit

class ParkCollectionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagePark: UIImageView!
    @IBOutlet weak var namePark: UILabel!
    
    override func layoutSubviews() {
        imagePark.layer.cornerRadius = 10
        imagePark.layer.borderColor = UIColor.lightGreyNew.cgColor
        imagePark.layer.borderWidth = 1
        imagePark.clipsToBounds = true
    }
    
    func setup(with inform: Parks) {
        namePark.text = inform.name
        imagePark.image = inform.image
    }
}

import UIKit

class CafeCollectionViewCell: UICollectionViewCell {
 
    @IBOutlet weak var imageCafe: UIImageView!
    @IBOutlet weak var nameCafe: UILabel!
    
    func setup(with cafeLocation: FoodLocationMap) {
        nameCafe.text = cafeLocation.title
        imageCafe.image = cafeLocation.image
    }
    
    override func layoutSubviews() {
        imageCafe.layer.cornerRadius = 10
        imageCafe.layer.borderColor = UIColor.lightGreyNew.cgColor
        imageCafe.layer.borderWidth = 1
        imageCafe.clipsToBounds = true

    }
}

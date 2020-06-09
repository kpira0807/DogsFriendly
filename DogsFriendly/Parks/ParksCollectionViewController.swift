import UIKit

class ParksCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private let parks = ParkLocation.shared.parkLocation()
 //   var parks: Parks?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        self.collectionView?.collectionViewLayout = layout
    }
    
    let spacing:CGFloat = 10.0
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 10
        
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        if let collection = self.collectionView{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
            return CGSize(width: width, height: width)
        }else{
            return CGSize(width: 0, height: 0)
        }
    }

    // MARK: UICollectionViewDataSource

       override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return parks.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkCollectionCollectionViewCell", for: indexPath) as?   ParkCollectionCollectionViewCell else { return UICollectionViewCell() }
        let inform = parks[indexPath.row]
        cell.setup(with: inform)
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aboutPark" {
                guard let cell = sender as? UICollectionViewCell, let indexPath = collectionView.indexPath(for: cell) else { return }
            let park = parks[indexPath.row]
                if let parkViewController: ParkViewController = segue.destination as? ParkViewController {
                    parkViewController.parks = park
            }
        }
    }
}

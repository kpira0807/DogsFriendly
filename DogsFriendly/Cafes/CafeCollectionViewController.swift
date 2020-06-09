import UIKit

private let reuseIdentifier = "CafeCollectionViewController"

class CafeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var cafes: Cafes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        self.collectionView?.collectionViewLayout = layout
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        guard let cafes = cafes else { return }
        
        title = cafes.group
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
        return cafes?.foodLocationMap.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CafeCollectionViewCell", for: indexPath) as? CafeCollectionViewCell else {
            return UICollectionViewCell() }
        let cafeLocation = (cafes?.foodLocationMap[indexPath.row])!
        cell.setup(with: cafeLocation)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aboutCafe" {
            guard let cell = sender as? UICollectionViewCell, let indexPath = collectionView.indexPath(for: cell) else { return }
            let cafe = cafes?.foodLocationMap[indexPath.row]
            if let cafeViewController: CafeViewController = segue.destination as? CafeViewController {
                cafeViewController.aboutCafe = cafe
            }
        }
    }
}

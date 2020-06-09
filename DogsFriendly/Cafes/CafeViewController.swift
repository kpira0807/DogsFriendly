import UIKit
import MapKit

 final class Annotation: NSObject, MKAnnotation {
 var coordinate: CLLocationCoordinate2D
 var title: String?
 
 init(coordinate: CLLocationCoordinate2D, title: String?) {
 self.coordinate = coordinate
 self.title = title
 super.init()
 }
 
 var region: MKCoordinateRegion {
 let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
 return MKCoordinateRegion(center: coordinate, span: span)
 }
 }
 
class CafeViewController: UIViewController, MKMapViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aboutCafe?.address.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "cafeTableViewCell", for: indexPath) as? CafeTableViewCell else {
            return UITableViewCell()
        }
        
        let informationAddress = aboutCafe?.address[indexPath.row]
        cell.addressCafeLabel.text = informationAddress?.direct
        cell.isUserInteractionEnabled = false
        return cell
    }
    
    var aboutCafe: FoodLocationMap?
    
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var imageForCafe: UIImageView!
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var informationLabels: UIStackView!
    @IBOutlet var explanationLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var hashtagLabel: UILabel!
    @IBOutlet var websiteLabel: UITextView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var imageCafe: UIImageView!
    
    @IBAction func shareButton(_ sender: Any) {
        let activity = UIActivityViewController(activityItems: [self.aboutCafe?.website ?? aboutCafe?.title ?? ""], applicationActivities: nil)
        activity.popoverPresentationController?.sourceView = self.view
        
        self.present(activity, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageForCafe.image = aboutCafe?.image
        textLabel.text = aboutCafe?.title
        
        imageForCafe.layer.cornerRadius = imageForCafe.frame.size.width / 2
        imageForCafe.clipsToBounds = true
        
        explanationLabel.text = aboutCafe?.discipline
        timeLabel.text = " Time: " + (aboutCafe?.time ?? "no information")
        hashtagLabel.text = aboutCafe?.hashtag
        websiteLabel.text = aboutCafe?.website
        
      //  mapView.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self

       // let coordination = CLLocationCoordinate2D(latitude: aboutCafe?.latitude ?? 50.45029044, longitude: aboutCafe?.longitude ?? 30.52448273)
        //
        //    let name = Annotation(coordinate: coordination, title: aboutCafe?.title)
        //    mapView.addAnnotation(name)
        //     mapView.setRegion(name.region, animated: true)
    }
}


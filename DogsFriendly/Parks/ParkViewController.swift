import UIKit
import MapKit

class ParkViewController: UIViewController, MKMapViewDelegate {
    
    var parks: Parks?
    
    @IBOutlet var parkMapView: MKMapView!
    @IBOutlet var parkImage: UIImageView!
    @IBOutlet var parkName: UILabel!
    @IBOutlet var parkAbout: UITextView!
    @IBOutlet var parkAdress: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parkImage.image = parks?.image
        parkImage.layer.cornerRadius = parkImage.frame.size.width / 2
        parkImage.clipsToBounds = true
        
        parkAbout.text = parks?.about
        parkName.text = parks?.name
        parkAdress.text = parks?.adress 
        
        parkMapView.delegate = self
        
        let coordination = CLLocationCoordinate2D(latitude: parks?.latitude ?? 50.45029044, longitude: parks?.longitude ?? 30.52448273)
        let name = Annotation(coordinate: coordination, title: parks?.name)
        
        parkMapView.addAnnotation(name)
        parkMapView.setRegion(name.region, animated: true)
        
        parkAbout.backgroundColor = UIColor.systemGray6
        parkAbout.layer.cornerRadius = 10
        parkAbout.layer.borderColor = UIColor.skyBlue.cgColor
        parkAbout.layer.borderWidth = 1
        parkAbout.clipsToBounds = true
    }
}

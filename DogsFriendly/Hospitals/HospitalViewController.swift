import UIKit
import MapKit

class HospitalViewController: UIViewController, MKMapViewDelegate{
    
    @IBOutlet var hospitalMapView: MKMapView!
    @IBOutlet var imageHospital: UIImageView!
    @IBOutlet var nameHospital: UILabel!
    @IBOutlet var callButton: UIButton!
    @IBOutlet var timeHospital: UILabel!
    @IBOutlet var addressHospital: UILabel!
    @IBOutlet var phoneHospital: UILabel!
    @IBOutlet var wishes: UILabel!
    
    var hospitalInfo: Address?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageHospital.image = #imageLiteral(resourceName: "dog")
        imageHospital.layer.cornerRadius = imageHospital.frame.size.width / 2
        imageHospital.clipsToBounds = true
        
        nameHospital.text = hospitalInfo?.name
        
        hospitalMapView.delegate = self
        
        let coordination = CLLocationCoordinate2D(latitude: hospitalInfo?.latitude ?? 50.45029044, longitude: hospitalInfo?.longitude ?? 30.52448273)
        let name = Annotation(coordinate: coordination, title: hospitalInfo?.name)
        
        hospitalMapView.addAnnotation(name)
        hospitalMapView.setRegion(name.region, animated: true)
        
        callButton.backgroundColor = UIColor.lightTurquose
        callButton.layer.cornerRadius = callButton.frame.size.width / 2
        callButton.layer.borderColor = UIColor.newGrey.cgColor
        callButton.layer.borderWidth = 1
        callButton.clipsToBounds = true
        
        
        timeHospital.text = hospitalInfo?.timeWork
        addressHospital.text = hospitalInfo?.direct
        phoneHospital.text = hospitalInfo?.phone
        
        wishes.textColor = UIColor.lightGreyNew
        wishes.text = "Хай Ваші домашні улюбленці буду здорові!"
    }
    
    // Call button    
    @IBAction func callButton(_ sender: Any) {
        if let url = URL(string: "tel://\(self.hospitalInfo?.phone ?? "")") {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
}

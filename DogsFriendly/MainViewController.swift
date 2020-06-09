import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var mainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = """
        В тебе є домашній улюбленець, але не знаєш куди піти з ним?
        Тоді саме для тебе ми підібрали цікаві місця у столиці де можна весело провести час із пухнастиком!
        """
        
        textLabel.textColor = UIColor.darkGray
        
        mainImage.image = #imageLiteral(resourceName: "corgi")
    }    
}

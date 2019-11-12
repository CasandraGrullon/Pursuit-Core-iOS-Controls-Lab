import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardNumber: UILabel!
    
    @IBOutlet weak var selectSuite: UISegmentedControl!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var cardPicture: UIImageView!
    
    var selectedSuit : Int = 0 {
        didSet {
            switch selectSuite.selectedSegmentIndex {
            case 0 :
                cardPicture.image = UIImage(systemName: "suit.diamond.fill")
            case 1 :
                cardPicture.image = UIImage(systemName: "suit.heart.fill")
            case 2 :
                cardPicture.image = UIImage(systemName: "suit.club.fill")
            case 3 :
                cardPicture.image = UIImage(systemName: "suit.spade.fill")
            default :
                cardPicture.image = UIImage(systemName: "suit.diamond.fill")
            }
        }
    }
    
    var cardValue : Double = 1.0 {
        didSet {
            switch stepper.value {
            case 1.0 :
                cardNumber.text = "A"
            case 2.0...10.0 :
                cardNumber.text = "\(Int(stepper.value))"
            case 11.0 :
                cardNumber.text = "J"
            case 12.0 :
                cardNumber.text = "Q"
            case 13.0 :
                cardNumber.text = "K"
            default :
                cardNumber.text = "A"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperValues()
        cardPicture.image = UIImage(systemName: "suit.diamond.fill")
        cardNumber.text = "A"
    }
    
    func stepperValues() {
        stepper.minimumValue = 1.0
        stepper.maximumValue = 13.0
        stepper.stepValue = 1.0
        stepper.value = 1.0
    }
    
    
    @IBAction func cardValueNum(_ sender: UIStepper) {
        cardValue = sender.value
    }
    
    @IBAction func cardSuitChosen(_ sender: UISegmentedControl) {
        selectedSuit = sender.selectedSegmentIndex
    }
    
    
    
    
    
    
    
    
    
    
    
}


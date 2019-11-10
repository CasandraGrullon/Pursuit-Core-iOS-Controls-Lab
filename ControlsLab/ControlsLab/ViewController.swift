import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var selectSuite: UISegmentedControl!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var cardPicture: UIImageView!
    
    var selectedSuit : Int = 0 {
        didSet {
            switch selectSuite.selectedSegmentIndex {
            case 0 :
                cardPicture.image = #imageLiteral(resourceName: "ace of diamonds")
            case 1 :
                cardPicture.image = #imageLiteral(resourceName: "ace of hearts")
            case 2 :
                cardPicture.image = #imageLiteral(resourceName: "aceofclubs")
            case 3 :
                cardPicture.image = #imageLiteral(resourceName: "aceofspades")
            default :
                cardPicture.image = #imageLiteral(resourceName: "ace of diamonds")
            }
        }
    }
    
    var cardValue : Double = 1.0 {
        didSet {
            switch stepper.value {
            case 1.0 :
                if selectedSuit == 0 {
                    cardPicture.image = #imageLiteral(resourceName: "ace of diamonds")
                } else if selectedSuit == 1 {
                    cardPicture.image = #imageLiteral(resourceName: "ace of hearts")
                } else if selectedSuit == 2 {
                    cardPicture.image = #imageLiteral(resourceName: "aceofclubs")
                } else if selectedSuit == 3 {
                    cardPicture.image = #imageLiteral(resourceName: "aceofspades")
                }
            case 2.0 :
                if selectedSuit == 0 {
                    cardPicture.image = #imageLiteral(resourceName: "2diamonds")
                } else if selectedSuit == 1 {
                    cardPicture.image = #imageLiteral(resourceName: "2hearts")
                } else if selectedSuit == 2 {
                    cardPicture.image = #imageLiteral(resourceName: "2clubs")
                } else if selectedSuit == 3 {
                    cardPicture.image = #imageLiteral(resourceName: "2spades")
                }
            case 3.0 :
                if selectedSuit == 0 {
                    cardPicture.image = #imageLiteral(resourceName: "3diamons")
                } else if selectedSuit == 1 {
                    cardPicture.image = #imageLiteral(resourceName: "3hearts")
                } else if selectedSuit == 2 {
                    cardPicture.image = #imageLiteral(resourceName: "3clubs")
                } else if selectedSuit == 3 {
                    cardPicture.image = #imageLiteral(resourceName: "3spades")
                }
            default :
                cardPicture.image = #imageLiteral(resourceName: "ace of diamonds")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperValues()
        
    }
    
    func stepperValues() {
        stepper.minimumValue = 1.0
        stepper.maximumValue = 3.0
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


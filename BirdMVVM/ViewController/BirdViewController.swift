import UIKit

class BirdViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var purchaseFeeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "Swifty")!
        let swifty = BirdModel(name: "Swifty", rarity: .veryRare, image: image)

        let viewModel = BirdViewModel(model: swifty)

        nameLabel.text = viewModel.name
        imageView.image = viewModel.image
        purchaseFeeLabel.text = viewModel.purchaseFeeText
    }
}

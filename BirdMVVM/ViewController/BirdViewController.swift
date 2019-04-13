import UIKit

class BirdViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var purchaseFeeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!

    static var imageViewContext = 0
    static var purchaseFeeLabelContext = 1
    static var nameLabelContext = 2

    var viewModel: BirdViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "Swifty")!
        let swifty = BirdModel(name: "Swifty", rarity: .veryRare, image: image)

        viewModel = BirdViewModel(model: swifty)

        if let viewModel = viewModel {
            viewModel.addObserver(self, forKeyPath: "name", options: [.initial, .new], context: &BirdViewController.nameLabelContext)
            viewModel.addObserver(self, forKeyPath: "image", options: [.initial, .new], context: &BirdViewController.imageViewContext)
            viewModel.addObserver(self, forKeyPath: "purchaseFeeText", options: [.initial, .new], context: &BirdViewController.purchaseFeeLabelContext)
        }
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey: Any]?, context: UnsafeMutableRawPointer?) {
        if let keyPath = keyPath, let change = change {
            switch keyPath {
            case "name":
                nameLabel.text = change[.newKey] as? String
            case "image":
                imageView.image = change[.newKey] as? UIImage
            case "purchaseFeeText":
                purchaseFeeLabel.text = change[.newKey] as? String
            default:
                print("default")
            }
        }
    }
}

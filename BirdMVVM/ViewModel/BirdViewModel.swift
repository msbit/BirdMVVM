import UIKit

public class BirdViewModel: NSObject {
    let model: BirdModel

    public init(model: BirdModel) {
        self.model = model
    }

    @objc public dynamic var name: String {
        return model.name
    }

    @objc public dynamic var image: UIImage {
        return model.image
    }

    @objc public dynamic var purchaseFeeText: String {
        switch model.rarity {
        case .common:
            return "$40"
        case .uncommon:
            return "$65"
        case .rare:
            return "$100"
        case .veryRare:
            return "$300"
        }
    }
}

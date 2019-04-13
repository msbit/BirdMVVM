import UIKit

public class BirdViewModel {
    let model: BirdModel

    public init(model: BirdModel) {
        self.model = model
    }

    public var name: String {
        return model.name
    }

    public var image: UIImage {
        return model.image
    }

    public var purchaseFeeText: String {
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

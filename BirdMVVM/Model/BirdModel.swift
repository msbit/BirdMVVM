import UIKit

public class BirdModel {
    public enum Rarity {
        case common
        case uncommon
        case rare
        case veryRare
    }

    let name: String
    let rarity: Rarity
    let image: UIImage

    public init(name: String, rarity: Rarity, image: UIImage) {
        self.name = name
        self.rarity = rarity
        self.image = image
    }
}

import UIKit

extension UIColor {
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(r: r, g: g, b: b, a: 1)
    }
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    struct main {
        static let mainColor = UIColor(r: 255, g: 59, b: 48)
        static let backgroundGrey = UIColor(r: 142, g: 142, b: 145)
    } 
}



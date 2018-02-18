import UIKit

extension UIColor {
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(r: r, g: g, b: b, a: 1)
    }
    convenience public init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    struct main {
        static let mainBlue = UIColor(r: 90, g: 200, b: 250)
        static let backgroundGrey = UIColor(r: 230, g: 230, b: 230)
    } 
}



import UIKit

extension UISegmentedControl {
    func removeBorders() {
        setBackgroundImage(imageWithColor(color: backgroundColor!), for: .normal, barMetrics: .default)
        setBackgroundImage(imageWithColor(color: .white), for: .selected, barMetrics: .default)
        setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.main.backgroundGrey, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15)], for: .normal)
        setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.main.mainColor, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 15)], for: .selected)

        setDividerImage(imageWithColor(color: UIColor.clear), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }
    
    private func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0.0, y: 0.0, width:  1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor);
        context!.fill(rect);
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image!
    }
}


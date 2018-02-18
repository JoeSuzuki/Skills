import UIKit

class HomeHeaderCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let segmentedView: UISegmentedControl = {
        let items = ["MY GROUPS", "JOINED"]
        let segment = UISegmentedControl(items: items)
        segment.selectedSegmentIndex = 0
        segment.backgroundColor = UIColor.main.mainBlue
        segment.tintColor = .white
        segment.removeBorders()
        segment.translatesAutoresizingMaskIntoConstraints = false
        return segment
    }()
    
    func setupViews() {
        addSubview(segmentedView)
        
        segmentedView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        segmentedView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        segmentedView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        segmentedView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

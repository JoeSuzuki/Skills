import UIKit

class HomeHeaderCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let backgroundColorView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let segmentedView: UISegmentedControl = {
        let items = ["Skills", "Bookmarks", "New Potential"]
        let segment = UISegmentedControl(items: items)
        segment.selectedSegmentIndex = 0
//        segment.backgroundColor = UIColor.main.mainColor
        segment.backgroundColor = .white
//        segment.tintColor = UIColor.main.backgroundGrey
        segment.isHighlighted = false
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

import UIKit
import Kingfisher

class HomeCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let userDetailsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let profileImageView: UIImageView = {
        let groupView = UIImageView()
        let url = URL(string: "https://avatars1.githubusercontent.com/u/23642941?s=460&v=4")
        groupView.kf.setImage(with: url)
        //        groupView.layer.cornerRadius = 5
        groupView.contentMode = .scaleAspectFit
        groupView.clipsToBounds = true
        groupView.translatesAutoresizingMaskIntoConstraints = false
        return groupView
    }()
 
    let userInfomationButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Image"), for: .normal)
        button.imageView?.tintColor = UIColor.main.backgroundGrey
        button.imageView?.contentMode = .scaleAspectFit
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "  " + "Joe Suzuki"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let groupImageView: UIImageView = {
        let groupView = UIImageView()
//        groupView.image = #imageLiteral(resourceName: "search")
        let url = URL(string: "https://avatars1.githubusercontent.com/u/23642941?s=460&v=4")
        groupView.kf.setImage(with: url)
        groupView.layer.cornerRadius = 5
        groupView.contentMode = .scaleAspectFit
        groupView.clipsToBounds = true
        groupView.translatesAutoresizingMaskIntoConstraints = false
        return groupView
    }()
    
    let detailsView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let groupNameLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS App Developer [OPEN]"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let groupCreaterNameLabel: UILabel = {
        let label = UILabel()
        label.text = "#Programming"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        backgroundColor = .white
       
        [profileImageView, userNameLabel, userDetailsView, groupImageView, detailsView, groupNameLabel, userInfomationButton].forEach {addSubview($0)}
        
        groupImageView.topAnchor.constraint(equalTo: userDetailsView.bottomAnchor).isActive = true
        groupImageView.bottomAnchor.constraint(equalTo: detailsView.topAnchor).isActive = true
        groupImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        groupImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
     
        userDetailsView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        userDetailsView.bottomAnchor.constraint(equalTo: groupImageView.topAnchor).isActive = true
        userDetailsView.leftAnchor.constraint(equalTo: groupImageView.leftAnchor).isActive = true
        userDetailsView.rightAnchor.constraint(equalTo: groupImageView.rightAnchor).isActive = true
        userDetailsView.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        profileImageView.topAnchor.constraint(equalTo: userDetailsView.topAnchor, constant: 2).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: userDetailsView.bottomAnchor, constant: 2).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: userDetailsView.leftAnchor, constant: 4).isActive = true
        profileImageView.rightAnchor.constraint(equalTo: userNameLabel.leftAnchor).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 41).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 41).isActive = true

        userNameLabel.topAnchor.constraint(equalTo: userDetailsView.topAnchor).isActive = true
        userNameLabel.bottomAnchor.constraint(equalTo: userDetailsView.bottomAnchor).isActive = true
        userNameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 4).isActive = true
        userNameLabel.rightAnchor.constraint(equalTo: userInfomationButton.leftAnchor).isActive = true

        userInfomationButton.topAnchor.constraint(equalTo: userDetailsView.topAnchor, constant: 1).isActive = true
        userInfomationButton.bottomAnchor.constraint(equalTo: userDetailsView.bottomAnchor, constant: 1).isActive = true
        userInfomationButton.leftAnchor.constraint(equalTo: userNameLabel.rightAnchor, constant: 4).isActive = true
        userInfomationButton.rightAnchor.constraint(equalTo: userDetailsView.rightAnchor, constant: 4).isActive = true
        userInfomationButton.widthAnchor.constraint(equalToConstant: 43).isActive = true
        userInfomationButton.heightAnchor.constraint(equalToConstant: 43).isActive = true

        detailsView.topAnchor.constraint(equalTo: groupImageView.bottomAnchor).isActive = true
        detailsView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        detailsView.leftAnchor.constraint(equalTo: groupImageView.leftAnchor).isActive = true
        detailsView.rightAnchor.constraint(equalTo: groupImageView.rightAnchor).isActive = true
        detailsView.heightAnchor.constraint(equalToConstant: 24).isActive = true

        groupNameLabel.topAnchor.constraint(equalTo: detailsView.topAnchor, constant:2).isActive = true
        groupNameLabel.bottomAnchor.constraint(equalTo: detailsView.bottomAnchor).isActive = true
        groupNameLabel.leftAnchor.constraint(equalTo: detailsView.leftAnchor, constant: 2).isActive = true
        groupNameLabel.rightAnchor.constraint(equalTo: detailsView.rightAnchor).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


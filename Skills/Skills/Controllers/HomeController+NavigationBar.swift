import UIKit

extension HomeController {
    
    func setupNavigationBarItems() {
        setupRemainNavItems()
        setupLeftNavItems()
        setupRightNavItems()
    }
    
    private func setupRemainNavItems() {
        let tittleImageView = UIImageView(image: #imageLiteral(resourceName: "Image").withRenderingMode(.alwaysTemplate))
        tittleImageView.tintColor = .white
        tittleImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        tittleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = tittleImageView
        
        navigationController?.navigationBar.barTintColor = UIColor.main.mainColor
        navigationController?.navigationBar.isTranslucent = false

        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor.main.backgroundGrey
        
        view.addSubview(navBarSeparatorView)
        
        navBarSeparatorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        navBarSeparatorView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        navBarSeparatorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        navBarSeparatorView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        navBarSeparatorView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
    
    private func setupLeftNavItems() {
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.widthAnchor.constraint(equalToConstant: 34).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 34).isActive = true
        followButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.widthAnchor.constraint(equalToConstant: 34).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 34).isActive = true
        searchButton.addTarget(self, action: #selector(buttonActions), for: .touchUpInside)

        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton)]
    }
    
    @objc func buttonAction() {
        let viewController = ViewController()
        present(viewController, animated: true, completion: nil)
    }
    @objc func buttonActions() {
        let viewController = ProfileViewController()
        present(viewController, animated: true, completion: nil)
    }

}

import UIKit

class ProfileViewController: UIViewController {
    
    private var userPic: UIImageView? {
        let profileImage = UIImage(named: "userpic_photo")
        let imageView = UIImageView(image: profileImage)
        return imageView
    }
    
    
    private var exitButton: UIButton? {
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: nil
        )
        button.tintColor = .ypRed
        return button
    }
    
    
    private var userName: UILabel? {
        let nameLabel = UILabel()
        nameLabel.text = "Екатерина Новикова"
        nameLabel.font = UIFont(name: "YSDisplay-Bold", size: 23)
        nameLabel.textColor = .ypWhite
        return nameLabel
    }
    
    
    private var userNickName: UILabel? {
        let nickNameLabel = UILabel()
        nickNameLabel.text = "@ekaterina_nov"
        nickNameLabel.font = UIFont(name: "YSDisplay-Medium", size: 13)
        nickNameLabel.textColor = .ypGray
        return nickNameLabel
    }
    
    
    private var text: UILabel? {
        let textLabel = UILabel()
        textLabel.text = "Hello, world!"
        textLabel.font = UIFont(name: "YSDisplay-Medium", size: 13)
        textLabel.textColor = .ypWhite
        return textLabel
    }
    
    private func showElements() {
        guard let userPic = userPic else { return }
        userPic.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userPic)
        
        guard let exitButton = exitButton else { return }
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(exitButton)
        
        guard let userName = userName else { return }
        userName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userName)
        
        guard let userNickName = userNickName else { return }
        userNickName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNickName)
        
        guard let text = text else { return }
        text.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(text)
        
    
        NSLayoutConstraint.activate([
            userPic.heightAnchor.constraint(equalToConstant: 70),
            userPic.widthAnchor.constraint(equalToConstant: 70),
            userPic.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            userPic.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            exitButton.heightAnchor.constraint(equalToConstant: 44),
            exitButton.widthAnchor.constraint(equalToConstant: 44),
            exitButton.centerYAnchor.constraint(equalTo: userPic.centerYAnchor),
            exitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            userName.leadingAnchor.constraint(equalTo: userPic.leadingAnchor),
            userName.topAnchor.constraint(equalTo: userPic.bottomAnchor, constant: 8),
            userNickName.leadingAnchor.constraint(equalTo: userPic.leadingAnchor),
            userNickName.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8),
            text.leadingAnchor.constraint(equalTo: userPic.leadingAnchor),
            text.topAnchor.constraint(equalTo: userNickName.bottomAnchor, constant: 8),
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showElements()
        
    }
}

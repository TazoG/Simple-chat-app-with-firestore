//
//  LoginController.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 04.03.23.
//

import UIKit

class LoginController: UIViewController {
    
    private let iconImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "bubble.right")
        iv.tintColor = .white
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .default
        
        configureGradientLayer()
        
        view.addSubview(iconImage)
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        iconImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        iconImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        iconImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}

//
//  ProfileFooter.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 21.03.23.
//

import UIKit

protocol ProfileFooterDelegate: AnyObject {
    func handleLogout()
}

class ProfileFooter: UIView {
    
    //MARK: - Properties
    
    weak var delegate: ProfileFooterDelegate?
    
    private lazy var logoutButton: UIButton = {
        let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleLogout), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(logoutButton)
        logoutButton.anchor(left: leftAnchor, right: rightAnchor, paddingLeft: 32, paddingRight: 32)
        logoutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logoutButton.centerY(inView: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - @objc Selectors
    
    @objc func handleLogout() {
        delegate?.handleLogout()
    }
}

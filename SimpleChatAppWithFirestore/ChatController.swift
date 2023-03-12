//
//  ChatController.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 12.03.23.
//

import UIKit

class ChatController: UICollectionViewController {
    
    //MARK: - Properties
    
    private let user: User
    
    //MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - @objc Selectors
    
    //MARK: - Configure UI
    
    func configureUI() {
        collectionView.backgroundColor = .white
    }
}

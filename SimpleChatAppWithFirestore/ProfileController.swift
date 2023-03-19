//
//  ProfileController.swift
//  SimpleChatAppWithFirestore
//
//  Created by Tazo Gigitashvili on 19.03.23.
//

import UIKit
import Firebase

private let reuseIdentifier = "ProfileCell"

class ProfileController: UITableViewController {
    
    //MARK: - Properties
    
    private lazy var headerView = ProfileHeader(frame: .init(x: 0, y: 0, width: view.frame.width, height: 380))
    
    private var user: User? {
        didSet { headerView.user = user }
    }
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        fetchUser()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
    }
    
    //MARK: - @objc Selectors
    
    //MARK: - API
    
    func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Service.fetchUser(withuid: uid) { user in
            self.user = user
            print("user is \(user.username)")
        }
    }
    
    //MARK: - ConfigureUI
    
    func configureUI() {
        tableView.backgroundColor = .blue
        tableView.tableHeaderView = headerView
        headerView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.tableFooterView = UIView()
        tableView.contentInsetAdjustmentBehavior = .never
    }
}

extension ProfileController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        return cell
    }
}

extension ProfileController: ProfileHeaderDelegate {
    func dismissController() {
        dismiss(animated: true)
    }
}

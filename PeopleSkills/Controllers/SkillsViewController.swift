//
//  SkillsViewController.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    // MARK: - Dependencies
    lazy fileprivate var viewModel: SkillsViewModel = SkillsViewModel()
    
    // MARK: - UI
    @IBOutlet fileprivate weak var tableView: UITableView! {
        didSet {
            setupTableView()
        }
    }
    
    // MARK: - Public
    var person: Person? {
        didSet {
            viewModel.configure(withPerson: person)
        }
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - Private
private extension SkillsViewController {
    
    func setupUI() {
        if let person = person {
            title = "\(person.name)'s Skills"
        }
    }
    
    func setupTableView() {
        tableView.dataSource = viewModel
        tableView.delegate = self
        tableView.register(SkillCell.self)
        tableView.allowsSelection = false
    }
}

// MARK: - UITableViewDelegate
extension SkillsViewController: UITableViewDelegate { }

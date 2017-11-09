//
//  PeopleViewController.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController {
    
    // MARK: - Dependencies
    lazy fileprivate var viewModel: PeopleViewModel = PeopleViewModel()
    
    // MARK: - UI
    @IBOutlet fileprivate weak var tableView: UITableView! {
        didSet {
            setupTableView()
        }
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.configure(withPeople: DataFactory.people())
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        deselectRow()
    }
}

// MARK: - Private
private extension PeopleViewController {
    
    func setupUI() {
        title = "People"
    }
    
    func setupTableView() {
        tableView.dataSource = viewModel
        tableView.delegate = self
        tableView.register(PersonCell.self)
    }
    
    func deselectRow() {
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selectedIndexPath, animated: true)
        }
    }
}

// MARK: - UITableViewDelegate
extension PeopleViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPerson = viewModel.item(atIndexPath: indexPath)
        let skillsVC = UIStoryboard(name: "Skills", bundle: nil).instantiateInitialViewController() as! SkillsViewController
        skillsVC.person = selectedPerson
        navigationController?.pushViewController(skillsVC, animated: true)
    }
}


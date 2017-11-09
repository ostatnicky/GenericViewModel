//
//  GenericViewModel.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class GenericViewModel<T, S: GenericTableViewCell<T>>: NSObject, UITableViewDataSource {
    
    var items: [T]?
    
    func setItems(items: [T]?) {
        self.items = items
    }
    
    func item(atIndexPath indexPath: IndexPath) -> T? {
        return items?[indexPath.row] ?? nil
    }
    
    func setItem(_ item: T, forIndexPath indexPath: IndexPath) {
        items?[indexPath.row] = item
    }
    
    func hasData() -> Bool {
        guard let items = items else { return false }
        return items.count > 0
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as S
        cell.configure(withItem: item(atIndexPath: indexPath))
        return cell
    }
}

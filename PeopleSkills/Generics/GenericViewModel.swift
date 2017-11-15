//
//  GenericViewModel.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class GenericViewModel<ModelType, CellType: UITableViewCell & Configurable>: NSObject, UITableViewDataSource where ModelType == CellType.ModelType {
    
    var items: [ModelType] = []
    
    func setItems(items: [ModelType]) {
        self.items = items
    }
    
    func item(atIndexPath indexPath: IndexPath) -> ModelType {
        return items[indexPath.row]
    }
    
    func setItem(_ item: ModelType, forIndexPath indexPath: IndexPath) {
        items[indexPath.row] = item
    }
    
    func hasData() -> Bool {
        return items.count > 0
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as CellType
        cell.configure(withItem: item(atIndexPath: indexPath))
        return cell
    }
}

//
//  PersonCell.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell, GenericTableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(withItem item: Person) {
        textLabel?.text = "\(item.name) \(item.surname)"
    }
    
}

//
//  PersonCell.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class PersonCell: GenericTableViewCell<Person> {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func configure(withItem item: Person?) {
        guard let person = item else {
            textLabel?.text = nil
            return
        }
        textLabel?.text = "\(person.name) \(person.surname)"
    }
    
}

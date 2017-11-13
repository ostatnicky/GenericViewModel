//
//  SkillCell.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class SkillCell: UITableViewCell, GenericTableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(withItem item: Skill) {
        textLabel?.text = item.name
    }
    
}

//
//  SkillCell.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

class SkillCell: GenericTableViewCell<Skill> {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func configure(withItem item: Skill?) {
        guard let skill = item else {
            textLabel?.text = nil
            return
        }
        textLabel?.text = skill.name
    }
    
}

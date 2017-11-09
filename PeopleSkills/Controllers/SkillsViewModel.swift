//
//  SkillsViewModel.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import Foundation

class SkillsViewModel: GenericViewModel<Skill, SkillCell> {
    
    func configure(withPerson person: Person?) {
        guard let person = person else { return }
        setItems(items: person.skills)
    }
}

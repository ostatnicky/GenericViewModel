//
//  PeopleViewModel.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import Foundation

class PeopleViewModel: GenericViewModel<Person, PersonCell> {
    
    func configure(withPeople people: [Person]) {
        setItems(items: people)
    }
}

//
//  DataFactory.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import Foundation

class DataFactory {
    
    class func people() -> [Person] {
        let people: [Person] = [
            Person(name: "John", surname: "Appleseed", skills: [
                Skill(name: "swift"),
                Skill(name: "obj-c"),
                Skill(name: "ruby")
                ]),
            Person(name: "Kate", surname: "Bell", skills: [
                Skill(name: "cooking"),
                Skill(name: "needlework"),
                Skill(name: "ironing")
                ]),
            Person(name: "Anna", surname: "Haro", skills: [
                Skill(name: "word"),
                Skill(name: "excel"),
                Skill(name: "sheets")
                ]),
            Person(name: "Daniel", surname: "Higgings", skills: [
                Skill(name: "java"),
                Skill(name: "photoshop"),
                Skill(name: "painting")
                ]),
            Person(name: "David", surname: "Taylor", skills: [
                Skill(name: "iOS"),
                Skill(name: "Android")
                ]),
            Person(name: "Hank", surname: "Zakroff", skills: [
                Skill(name: "photography")
                ])
        ]
        return people
    }
}

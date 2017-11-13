//
//  GenericTableViewCell.swift
//  PeopleSkills
//
//  Created by Jiri Ostatnicky on 09/11/2017.
//  Copyright © 2017 Jiri Ostatnicky. All rights reserved.
//

import UIKit

protocol GenericTableViewCell {
    associatedtype ModelType
    func configure(withItem item: ModelType)
}

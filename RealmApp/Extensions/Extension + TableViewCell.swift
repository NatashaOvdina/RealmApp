//
//  Extension + TableViewCell.swift
//  RealmApp
//
//  Created by Natalia Ovdina on 19.02.2024.
//  Copyright © 2024 Alexey Efimov. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currentTasks = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.title
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currentTasks.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText  = currentTasks.count.formatted()
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}

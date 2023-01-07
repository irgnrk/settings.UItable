//
//  Model.swift
//  settings.UItable
//
//  Created by Иван Быховский on 6.01.23.
//

import Foundation

protocol ModelProtocol: AnyObject {
    var models: [[ModelItems]] {get set}
}

struct ModelItems {
    let icon: String
    let firstName: String
    let secondName: String
    var switchFlag: Bool
}

class Model: ModelProtocol {
    var models = [
        //1
        [ModelItems(icon: "avatar", firstName: "Ivan", secondName: "iCloud", switchFlag: false)],
        //2
        [ModelItems(icon: "aviamode", firstName: "Авиарежим", secondName: "", switchFlag: true),
        ModelItems(icon: "wifi", firstName: "Wi-Fi", secondName: "name", switchFlag: false)],
        //3
        [ModelItems(icon: "notifications", firstName: "Уведомления", secondName: "", switchFlag: false),
         ModelItems(icon: "sound", firstName: "Звуки и тактильные сигналы", secondName: "", switchFlag: false)
        ]
    ]
}


import Foundation

protocol ModelProtocol: AnyObject {
    var models: [[ModelItems]] { get set }
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
        [ModelItems(icon: "", firstName: "Поиск", secondName: "", switchFlag: false),
         ModelItems(icon: "avatar", firstName: "Ivan", secondName: "iCloud", switchFlag: false)],
        //2
        [ModelItems(icon: "aviamode", firstName: "Авиарежим", secondName: "", switchFlag: true),
         ModelItems(icon: "wifi", firstName: "Wi-Fi", secondName: "name", switchFlag: false),
         ModelItems(icon: "bluetooth", firstName: "bluetooth", secondName: "Вкл", switchFlag: false),
         ModelItems(icon: "netconnect", firstName: "Сотовая связь", secondName: "", switchFlag: false),
         ModelItems(icon: "modemmode", firstName: "Режим модема", secondName: "", switchFlag: false),
         ModelItems(icon: "vpn", firstName: "VPN", secondName: "", switchFlag: true)],
        //3
        [ModelItems(icon: "notifications", firstName: "Уведомления", secondName: "", switchFlag: false),
         ModelItems(icon: "sound", firstName: "Звуки и тактильные сигналы", secondName: "", switchFlag: false),
         ModelItems(icon: "focus", firstName: "Фокусирование", secondName: "", switchFlag: false),
         ModelItems(icon: "time", firstName: "Экранное время", secondName: "", switchFlag: false)
        ]
    ]
}

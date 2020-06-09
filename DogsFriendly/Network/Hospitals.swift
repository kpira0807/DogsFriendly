import Foundation
import UIKit
import MapKit

struct Hospital {
    let district: String
    let address: [Address]
}

struct Address {
    let name: String
    let direct: String
    let latitude: Double
    let longitude: Double
    let phone: String
    let timeWork: String
}

class HospitalPets {
    static let shared = HospitalPets()
    
    var hospitals = [
        Hospital(district: "Солом'янський", address: [
            Address(name: "Лікарня Ветеринарної Медицини", direct: "Україна, Київ, Вулиця Добрузька, 8", latitude: 50.426136, longitude: 30.416474, phone: "+38-044-497-61-02", timeWork: "Не зазначено"),
            Address(name: "Київська міська державна лабораторія ветеринарної медицини", direct: "Україна, Київ, Вулиця Волинська, 12", latitude: 50.429196, longitude: 30.449709, phone: "+38-044-245-78-06", timeWork: "Пн. - Вс.: 09:00 - 18:00")]),
        Hospital(district: "Дніпровський", address: [Address(name: "Дніпровська районна лікарня ветеринарної медицини", direct: "Україна, Київ, Вулиця Райдужна, 67", latitude: 50.476270, longitude: 30.590331, phone: "+38-044-542-99-42", timeWork: """
Пн. - Пт.: 9:00 - 20:00
Сб. - Нд.: 9:00 - 18:00
""")]),
        Hospital(district: "Голосіївський", address: [Address(name: "Клініка ветеринарної медицини", direct: "Україна, Київ, Вулиця Гвардійська, 20", latitude: 50.405618, longitude: 30.496812, phone: "+38-044-524-70-93", timeWork: """
        Пн. - Пт.: 9:00 - 19:00
        Сб. - Нд.: 9:00 - 17:00
        """)]),
        Hospital(district: "Деснянський", address: [Address(name: "Державна ветеринарна клініка", direct: "Україна, Київ, Вулиця Бальзака, 96", latitude: 50.530836, longitude: 30.611292, phone: "+38-044-530-08-20", timeWork: """
        Пн. - Пт.: 9:00 - 20:00
        Сб.: 9:00 - 18:00
        Bc.: 9:00 - 17:00
        """)]),
        Hospital(district: "Печерський", address: [Address(name: "Державна ветеринарна лікарня", direct: "Україна, Київ, Вулиця Кіквідзе, 34-Б", latitude: 50.418730, longitude: 30.547488, phone: "+38-044-285-57-51", timeWork: "Не зазначено")]),
        Hospital(district: "Подільський", address: [
            Address(name: "Державна клініка ветеринарної медицини", direct: "Україна, Київ, Вулиця Нижній Вал, 23-Д", latitude: 50.466254, longitude: 30.511820, phone: "+38-044-425 30-85", timeWork: "Не зазначено"),
            Address(name: "Державна клініка ветеринарної медицини", direct: "Україна, Київ, Вулиця Ярославськая, 13а", latitude: 50.467141, longitude: 30.510339, phone: "+38-044-417-54-20", timeWork: "Пн. - Вс.: 9:00 - 21:00")]),
        Hospital(district: "Святошинський", address: [
            Address(name: "Лікарня Ветеринарної Медицини", direct: "Україна, Київ, Вулиця Жмеринська, 5", latitude: 50.436609, longitude: 30.364033, phone: "+38-044-274-02-86", timeWork: "Не зазначено")]),
        Hospital(district: "Дарницький", address: [
            Address(name: "Лікарня Ветеринарної Медицини", direct: "Україна, Київ, Вулиця Вірменська, 29", latitude: 50.409507, longitude: 30.673340, phone: "+38-044-563-94-79", timeWork: "Пн. - Вс.: 8:00 - 22:00")]),
        Hospital(district: "Оболонський", address: [
            Address(name: "Державна Лікарня Ветеринарної Медицини", direct: "Україна, Київ, Вулиця Сім'ї Кульженків, 3", latitude: 50.507872, longitude: 30.468196, phone: "+38-044-430-57-08", timeWork: "Цілодобово")]),
        Hospital(district: "Шевченківський", address: [
            Address(name: "Державна лабораторія ветсанітарної експертизи №5", direct: "Україна, Київ, Вулиця Горького, 115", latitude: 50.421701, longitude: 30.518376, phone: "+38-044-529-02-83", timeWork: "Не зазначено"),
            Address(name: "Лікарня Ветеринарної Медицини", direct: "Україна, Київ, Провулок Айвазовського, 5", latitude: 50.474472, longitude: 30.482578, phone: "+38-044-483-66-24", timeWork: "Цілодобово")])
    ]
    
    func hospitalsLocation() -> [Hospital] {
        return hospitals
    }
}

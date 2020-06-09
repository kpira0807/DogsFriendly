import Foundation
import MapKit
import UIKit

struct Cafes {
    let group: String
    let image: UIImage
    let foodLocationMap: [FoodLocationMap]
}

struct FoodLocationMap {
    let title: String
    let discipline: String
    let website: String
    let time: String
    let hashtag: String
    let address: [CafeAddress]
    let image: UIImage
}

struct CafeAddress {
    let latitude: Double
    let longitude: Double
    let direct: String
}

class CafeLocation  {
    static let shared = CafeLocation()
    
    var cafeLocationMap = [
        Cafes(group: "Bar", image: #imageLiteral(resourceName: "Bar"), foodLocationMap:
            [FoodLocationMap(title: "Check-in Kyiv Bar", discipline: "Таємний бар на Городецького", website: "https://borysov.com.ua/uk/check-kyiv-bar", time: "10 a.m. - 2 a.m.", hashtag: "@checkinkyiv", address: [CafeAddress(latitude: 50.44740942, longitude: 30.52574873, direct: "Україна, Київ, вул. Хрещатик, 15/4")], image: #imageLiteral(resourceName: "Check-in Kyiv Bar")),
             FoodLocationMap(title: "Канапка бар", discipline: "Устриці. Вино. Канапки.", website: "https://borysov.com.ua/uk/kanapka-bar", time: "10 a.m. - 12 a.m.", hashtag: "@kanapka.bar", address: [CafeAddress(latitude: 50.45964049, longitude: 30.51636636, direct: "Україна, Київ, Андріївський узвіз, 30А")], image: #imageLiteral(resourceName: "Канапа бар")),
             FoodLocationMap(title: "Білий Налив", discipline: "1€. One euro bar. Сидерія", website: "https://borysov.com.ua/uk/bilyy-nalyv", time: "10 a.m. - 11 p.m.", hashtag: "@biliy.nalyv", address:
                [CafeAddress(latitude: 50.44530171, longitude: 30.52214384, direct: "Україна, Київ, вул. Хрещатик, 23а"),
                 CafeAddress(latitude: 50.44546227, longitude: 30.50244033, direct: "Україна, Київ, б-р Тараса Шевченка, 36А"),
                 CafeAddress(latitude: 50.5132969, longitude: 30.50037503, direct: "Україна, Київ, Оболонській проспект, 26"),
                 CafeAddress(latitude: 50.440179, longitude: 30.518101, direct: "Україна, Київ, вул. Велика Васільківська, 14"),
                 CafeAddress(latitude: 50.451636, longitude: 30.466065, direct: "Україна, Київ, пр-т Перемоги, 28А")], image: #imageLiteral(resourceName: "Білий Налив")),
             FoodLocationMap(title: "КОСАТКА", discipline: "Їжа та напої", website: "http://kosatkacafe.com/", time: "9 a.m. - 11 p.m.", hashtag: "@kosatkacafe", address:
                [CafeAddress(latitude: 50.45511041, longitude: 30.51135063, direct: "Україна, Київ, вул. Велика Житомирська, 25/2")], image: #imageLiteral(resourceName: "КОСАТКА")),
             FoodLocationMap(title: "Drunk Cherry", discipline: "Ліпша львівська настоянка", website: "https://www.facebook.com/DrunkCherryKyiv/", time: "11 a.m. - 12 a.m.", hashtag: "@drunkcherrym", address: [CafeAddress(latitude: 50.450734, longitude: 30.526146, direct: "Україна, Київ, вул. Хрещатик, 7/11"),
                                                                                                                                                                                                                                         CafeAddress(latitude: 50.451363, longitude: 30.52080, direct: "Україна, Київ, вул. Бориса Грінченка, 2/1"),
                                                                                                                                                                                                                                         CafeAddress(latitude: 50.440035, longitude: 30.517799, direct: "Україна, Київ, вул. Велика Васильківська, 16")], image: #imageLiteral(resourceName: "ПьянаВішня"))]),
        
        Cafes(group: "Cafe", image: #imageLiteral(resourceName: "Cafe"), foodLocationMap: [
            FoodLocationMap(title: "Альтруист", discipline: "Кафе-платформа для добрих справ. Хумус, кава, винце, сніданки та дива. Близькосхідна кухня.", website: "www.facebook.com/alltrueeast/", time: "10 a.m. - 11 p.m.", hashtag: "@alltrueeast", address:
                [CafeAddress(latitude: 50.4393439, longitude: 30.51403175, direct: "Україна, Київ, вул. Антоновича, 1")], image: #imageLiteral(resourceName: "Альтруист")),
            FoodLocationMap(title: "Milk Bar", discipline: "Cakes, shakes & more", website: "https://milkbar.com.ua/", time: "8 a.m. - 11 p.m.", hashtag: "@milkbar.com.ua", address:
                [CafeAddress(latitude: 50.43901361, longitude: 30.51963329, direct: "Україна, Київ, вул. Шота Руставелі, 16")], image: #imageLiteral(resourceName: "Milk Bar")),
            FoodLocationMap(title: "Dogs & Tails", discipline: "Hot Dogs & Coctails", website: "https://www.facebook.com/dogsandtailskiev/", time: "12 p.m. - 1a.m.", hashtag: "@dogsandtailskiev", address: [CafeAddress(latitude: 50.43834737, longitude: 30.51964402, direct: "Україна, Київ, вул. Шота Руставелі, 19")], image: #imageLiteral(resourceName: "Dogs & Tails")),
            FoodLocationMap(title: "Mushlya Cafe", discipline: "Seafood bar", website: "https://borysov.com.ua/uk/mushlya-cafe", time: "8 a.m. - 11 p.m.", hashtag: "@mushlya.cafe", address: [CafeAddress(latitude: 50.4364235, longitude: 30.5168044, direct: "Україна, Київ, вул. Велика Васильківська, 43"),
                                                                                                                                                                                               CafeAddress(latitude: 50.443742, longitude: 30.546435, direct: "Україна, Київ, вул. Мазепи, 3"),
                                                                                                                                                                                               CafeAddress(latitude: 50.427358, longitude: 30.593010, direct: "Україна, Київ, Русанівський б-р, 1"),
                                                                                                                                                                                               CafeAddress(latitude: 50.513222, longitude: 30.500379, direct: "Україна, Київ, Оболонський проспект, 26")], image: #imageLiteral(resourceName: "Mushlya Bar")),
            FoodLocationMap(title: "БПШ", discipline: "SHAWA MUST GO ON", website: "https://borysov.com.ua/uk/bpsh", time: "10 a.m. - 11 p.m.", hashtag: "@bpshkyiv", address: [CafeAddress(latitude: 50.43939142, longitude: 30.51769137, direct: "Україна, Київ, вул. Велика Васильківська, 21")], image: #imageLiteral(resourceName: "БПШ")),
            FoodLocationMap(title: "Dogz&Burgerz", discipline: "1 euro bar", website: "https://borysov.com.ua/uk/dogzburgerz", time: "10 a.m. - 11 p.m.", hashtag: "@dogz.and.burgerz", address: [CafeAddress(latitude: 50.43124562, longitude: 30.54213166, direct: "Україна, Київ, вул. Євгена Гуцала, 3")], image: #imageLiteral(resourceName: "Dogs&Burgerz")),
            FoodLocationMap(title: "Mushlya Bar", discipline: "1 euro seafood bar", website: "https://borysov.com.ua/uk/mushlya-bar", time: "10 a.m. - 11 p.m.", hashtag: "@mushlyabar", address: [CafeAddress(latitude: 50.44453505, longitude: 30.52285194, direct: "Україна, Київ, вул. Хрещатик, 25")], image: #imageLiteral(resourceName: "Mushlya Cafe")),
            FoodLocationMap(title: "Philadelphia", discipline: "Roll&Bowl", website: "https://borysov.com.ua/uk/philadelphia", time: "10 a.m. - 11 p.m.", hashtag: "@phila.kyiv", address: [CafeAddress(latitude: 50.43979314, longitude: 30.52136064, direct: "Україна, Київ, вул. Шота Руставелі, 10"),
                                                                                                                                                                                            CafeAddress(latitude: 50.447117, longitude: 30.488648, direct: "Україна, Київ, проспект Перемоги, 3")], image: #imageLiteral(resourceName: "Philadelphia")),
            FoodLocationMap(title: "PINZARELLA", discipline: "PINZA•MOZARELLA•PROSECCO BAR", website: "https://borysov.com.ua/uk/pinzarella", time: "10 a.m. - 11 p.m.", hashtag: "pinzarella.bar", address: [CafeAddress(latitude: 50.4366433, longitude: 30.51655501, direct: "Україна, Київ, вул. Велика Васильківська, 41")], image: #imageLiteral(resourceName: "Pinzarella")),
            FoodLocationMap(title: "The Blue Cup", discipline: "Coffee & shop", website: "https://ru-ru.facebook.com/TheBlueCupCoffee/", time: "9 a.m. - 10 p.m.", hashtag: "@TheBlueCupCoffee", address: [CafeAddress(latitude: 50.44755289, longitude: 30.5193758, direct: "Україна, Київ, вул. Пушкінська, 5")], image: #imageLiteral(resourceName: "The Blue Cup")),
            FoodLocationMap(title: "Хармс", discipline: "Міське кафе", website: "http://xar.ms/", time: "10 a.m. - 10 p.m.", hashtag: "@harms", address: [CafeAddress(latitude: 50.44830782, longitude: 30.51559389, direct: "Україна, Київ, вул. Володимирська, 45а")], image: #imageLiteral(resourceName: "Хармс")),
            FoodLocationMap(title: "Kvitka", discipline: "Cafe & bar", website: "https://www.facebook.com/Kvitka.cafe.bar/", time: "9 a.m. - 11 p.m.", hashtag: "@Kvitka.Kyiv", address: [CafeAddress(latitude: 50.48033402, longitude: 30.41238785, direct: "Україна, Київ, вул. Тираспільська, 60")], image: #imageLiteral(resourceName: "Kvitka")),
            FoodLocationMap(title: "Kitaika", discipline: "В’єтнамська, тайська, корейська та китайські кухні з доставкою та з можливістю takeaway в Києві", website: "https://kitaika.com.ua/", time: "12 p.m. - 11 p.m.", hashtag: "@Kitaika", address: [CafeAddress(latitude: 50.44955659, longitude: 30.48925996, direct: "Україна, Київ, вул. Златоустівська, 16"),
                                                                                                                                                                                                                                                                                                                                    CafeAddress(latitude: 50.44867332, longitude: 30.59146821, direct: "Україна, Київ, вул. Раіси Окипной, 8")], image: #imageLiteral(resourceName: "Kitaika"))
        ]),
        
        Cafes(group: "Coffee house", image: #imageLiteral(resourceName: "Coffee House"), foodLocationMap: [
            FoodLocationMap(title: "Come and stay", discipline: "Кава & Десерти", website: "https://www.facebook.com/comeandstaycoffee/", time: "8 a.m. - 10 p.m.", hashtag: "@comeandstaycoffee", address: [CafeAddress(latitude: 50.4393439, longitude: 30.5176787, direct: "Україна, Київ, вул. Велика Васильківська, 23B")], image: #imageLiteral(resourceName: "Come and stay")),
            FoodLocationMap(title: "The Journalist", discipline: "Coffee", website: "https://ru-ru.facebook.com/thejournalistcafe/", time: "9 a.m. - 11 p.m.", hashtag: "@TheJournalistcafe", address: [CafeAddress(latitude: 50.44379858, longitude: 30.52151084, direct: "Україна, Київ, вул. Хрещатик, 27А")], image: #imageLiteral(resourceName: "The Journalist")),
            FoodLocationMap(title: "Маша Кейк", discipline: "Мастерская-кондитерская", website: "https://www.facebook.com/mashacake/", time: "8 a.m. - 8:30 p.m.", hashtag: "@mashacake", address: [CafeAddress(latitude: 50.455812, longitude: 30.5037868, direct: "Україна, Київ, вул. Січових Стрільців, 11")], image: #imageLiteral(resourceName: "Маша Кейк")),
            FoodLocationMap(title: "Eclair Little Artwork", discipline: "Первое в Украине Королевство эклеров", website: "https://arteclair.com/", time: "9 a.m. - 9 p.m.", hashtag: "@eclair_littleartwork", address: [CafeAddress(latitude: 50.45198321, longitude: 30.52418768, direct: "Україна, Київ, вул. Костьольна, 6")], image: #imageLiteral(resourceName: "Eclair Little Artwork")),
            FoodLocationMap(title: "На Станиславского", discipline: "Art cafe", website: "https://www.facebook.com/nastanislavskogo/", time: "9 a.m. - 10 p.m.", hashtag: "@nastanislavskogo", address: [CafeAddress(latitude: 50.4463812, longitude: 30.5264622, direct: "Україна, Київ, вул. Станіславського, 3")], image: #imageLiteral(resourceName: "На Станиславского")),
            FoodLocationMap(title: "Кофейный дом 'LONDON'", discipline: "Кофейня", website: "https://www.facebook.com/LONDONcoffeehouse/", time: "10 a.m. - 10 p.m.", hashtag: "@LONDONcoffeehouse", address: [CafeAddress(latitude: 50.46525117, longitude: 30.51164031, direct: "Україна, Київ, вул. Верхній Вал, 18")], image: #imageLiteral(resourceName: "Кофейный дом 'LONDON'")),
            FoodLocationMap(title: "Кофейня 'Турка'", discipline: "Кофейня", website: "https://ru-ru.facebook.com/turkahonchara", time: "7 a.m. - 10 p.m.", hashtag: "@turkahonchara", address: [CafeAddress(latitude: 50.45119418, longitude: 30.50587356, direct: "Україна, Київ, вул. Олеся Гончара, 32")], image: #imageLiteral(resourceName: "Кофейня 'Турка'")),
            FoodLocationMap(title: "Чашка", discipline: "Espresso Bar", website: "https://www.facebook.com/ChashkaKiev/", time: "8 a.m. - 11 p.m.", hashtag: "@chashka_espresso_bar", address: [CafeAddress(latitude: 50.44194694, longitude: 30.52049696, direct: "Україна, Київ, вул. Шота Руставелі, 15")], image: #imageLiteral(resourceName: "Чашка")),
            FoodLocationMap(title: "Call Me Cacao!", discipline: "Cacao cafe", website: "https://www.facebook.com/chaocacao.kyiv/", time: "10 a.m. - 10 p.m.", hashtag: "@callmecacao", address: [
                CafeAddress(latitude: 50.46794188, longitude: 30.51455855, direct: "Україна, Київ, вул. Нижній Вал, 35"),
                CafeAddress(latitude: 50.4457868, longitude: 30.51871061, direct: "Україна, Київ, вул. Пушкінська, 11А")], image: #imageLiteral(resourceName: "Call Me Cacao!")),
            FoodLocationMap(title: "1900 coffee point", discipline: "Кофейня", website: "https://ru-ru.facebook.com/1900coffee", time: "8 a.m. - 10 p.m.", hashtag: "@1900coffee", address: [CafeAddress(latitude: 50.44458288, longitude: 30.49649119, direct: "Україна, Київ, вул. Саксаганського, 112А")], image: #imageLiteral(resourceName: "1900 coffee point")),
            FoodLocationMap(title: "The Cake", discipline: "Cakes & coffee", website: "https://www.facebook.com/TheCakeKiev/", time: "8 a.m. - 2 a.m.", hashtag: "@TheCakeKiev", address: [CafeAddress(latitude: 50.44104357, longitude: 30.5204916, direct: "Україна, Київ, вул. Велика Васильківська, 5")], image: #imageLiteral(resourceName: "The Cake")),
            FoodLocationMap(title: "STATION cakes&coffee", discipline: "by Baker Street bakery", website: "http://www.bakerstreetbakery.com.ua/kontakty-69/", time: "8 a.m. - 8 p.m.", hashtag: "@bakerstreetbakery", address: [CafeAddress(latitude: 50.44516848, longitude: 30.4930687, direct: "Україна, Київ, вул. Старовокзальна, 13")], image: #imageLiteral(resourceName: "STATION cakes&coffee")),]),
        
        
        Cafes(group: "Restaurant", image: #imageLiteral(resourceName: "Rest"), foodLocationMap: [
            FoodLocationMap(title: "Китайский привет", discipline: "Chinese restaurant", website: "https://www.facebook.com/hihichina/", time: "12 p.m. - 11 p.m.", hashtag: "@hihichina", address: [CafeAddress(latitude: 50.44930669, longitude: 30.51006317, direct: "Україна, Київ, вул. Івана Франка, 7")], image: #imageLiteral(resourceName: "Китайский привет")),
            FoodLocationMap(title: "Chicken Kyiv", discipline: "Ресторан Києва", website: "https://borysov.com.ua/uk/chicken-kyiv", time: "8 a.m. - 12 a.m.", hashtag: "@chickenkyiv", address: [CafeAddress(latitude: 50.44740942, longitude: 30.52574873, direct: "Україна, Київ, вул. Хрещатик, 15/4")], image: #imageLiteral(resourceName: "Chicken Kyiv")),
            FoodLocationMap(title: "Канапа", discipline: "Нова українська кухня", website: "https://borysov.com.ua/uk/kanapa", time: "10 a.m. - 12 a.m.", hashtag: "@kanapa.kyiv", address: [CafeAddress(latitude: 50.45991028, longitude: 30.51672041, direct: "Україна, Київ, Андріївський узвіз, 19")], image: #imageLiteral(resourceName: "Канапа")),
            FoodLocationMap(title: "Ватра", discipline: "Український м'ясний ресторан", website: "https://borysov.com.ua/uk/vatra", time: "10 a.m. - 12 a.m.", hashtag: "@vatra.kyiv", address: [CafeAddress(latitude: 50.44860842, longitude: 30.5235064, direct: "Україна, Київ, вул. Архітектора Городецького, 4Б")], image: #imageLiteral(resourceName: "Ватра")),
            FoodLocationMap(title: "RONIN", discipline: "Ресторан японсько-перуанської кухні (Nikkei)", website: "https://borysov.com.ua/uk/ronin", time: "11 a.m. - 11 p.m.", hashtag: "@ronin.kyiv", address: [CafeAddress(latitude: 50.46167837, longitude: 30.46504498, direct: "Україна, Київ, вул. Зоологічна, 10")], image: #imageLiteral(resourceName: "RONIN")),
            FoodLocationMap(title: "РИБАLOVE", discipline: "Рибний ресторан з європейською кухнею", website: "https://borysov.com.ua/uk/rybalove", time: "11 a.m. - 10 p.m.", hashtag: "@rybalove.restaurant", address: [CafeAddress(latitude: 50.46065818, longitude: 30.51092684, direct: "Україна, Київ, вул. Воздвиженська, 21-23")], image: #imageLiteral(resourceName: "РИБАLOVE")),
            FoodLocationMap(title: "Crab's burger", discipline: "Краб-хаус і сіфуд бар", website: "https://borysov.com.ua/uk/crabs-burger", time: "11 a.m. - 10 p.m.", hashtag: "@crabsburger.kyiv", address: [CafeAddress(latitude: 50.46065818, longitude: 30.51092684, direct: "Україна, Київ, вул. Воздвиженська, 21-23")], image: #imageLiteral(resourceName: "Crab's burger")),
            FoodLocationMap(title: "Oxota na ovets", discipline: "Азіатський стейк-хаус", website: "https://borysov.com.ua/uk/oxota-na-ovets", time: "10 a.m. - 10 p.m.", hashtag: "@oxotanaovets", address: [CafeAddress(latitude: 50.46135484, longitude: 30.50911903, direct: "Україна, Київ, вул. Воздвиженська, 10б")], image: #imageLiteral(resourceName: "Oxota na ovets")),
            FoodLocationMap(title: "Любчик", discipline: "Одеський ресторан та пивбар", website: "https://borysov.com.ua/uk/lyubchyk", time: "9 a.m. - 11 p.m.", hashtag: "@liubchyk.restaurant", address: [CafeAddress(latitude: 50.46156657, longitude: 30.50909221, direct: "Україна, Київ, вул. Воздвиженська, 10б"), CafeAddress(latitude: 50.442758, longitude: 30.522643, direct: "Україна, Київ, Бессарабська площа, 7")], image: #imageLiteral(resourceName: "Любчик")),
            FoodLocationMap(title: "Барсук", discipline: "Домашня європейська і українська кухня", website: "https://borysov.com.ua/uk/barsuk", time: "8 a.m. - 12 a.m.", hashtag: "@barsuk.restaurant", address: [CafeAddress(latitude: 50.43163859, longitude: 30.54130018,  direct: "Україна, Київ, провулок Євгена Гуцала, 3")], image: #imageLiteral(resourceName: "Барсук")),
            FoodLocationMap(title: "Мама Манана", discipline: "Хачапурна", website: "http://mamamanana.com.ua/", time: "10 a.m. - 10 p.m.", hashtag: "@mamamanana.com.ua", address: [CafeAddress(latitude: 50.437790, longitude: 30.485746,  direct: "Україна, Київ, вул. Георгія Кірпи, 5б"),
                                                                                                                                                                                                        CafeAddress(latitude: 50.465772, longitude: 30.511281,  direct: "Україна, Київ, вул. Нижній Вал, 23"),
                                                                                                                                                                                                        CafeAddress(latitude: 50.437029, longitude: 30.515717,  direct: "Україна, Київ, вул. Велика Васильківська, 44"),
                                                                                                                                                                                                        CafeAddress(latitude: 50.448904, longitude: 30.515642,  direct: "Україна, Київ, вул. Прорізна, 22")], image: #imageLiteral(resourceName: "Мама Манана")),
            FoodLocationMap(title: "True Burger Bar", discipline: "Ресторан новой американской кухни", website: "https://www.facebook.com/trueburgerbar/", time: "11 a.m. - 11 p.m.", hashtag: "@trueburgerbar", address: [CafeAddress(latitude: 50.4470849, longitude: 30.50814807,  direct: "Україна, Київ, вул. Богдана Хмельницького, 42")], image: #imageLiteral(resourceName: "True Burger Bar")),
            FoodLocationMap(title: "Mur Mur", discipline: "Cool restaurants for cool people", website: "http://carteblanche.ua/", time: "12 p.m. - 2 a.m.", hashtag: "@MurMur", address: [CafeAddress(latitude: 50.43983899, longitude: 30.5155617, direct: "Україна, Київ, вул. Пушкінська, 42")], image: #imageLiteral(resourceName: "Mur Mur")),
            FoodLocationMap(title: "ОСТАННЯ БАРИКАДА", discipline: "МИСТЕЦЬКО-ГАСТРОНОМІЧНИЙ ПРОСТІР", website: "https://borysov.com.ua/uk/ostannya-barykada", time: "10 a.m. - 12 a.m.", hashtag: "@ostannia.barykada", address: [CafeAddress(latitude: 50.450963, longitude: 30.522675, direct: "Україна, Київ, Майдан Незалежності, біля Лядських воріт")], image: #imageLiteral(resourceName: "ОстанняБарикада")),
            FoodLocationMap(title: "Любимый Дядя", discipline: "Тематический ресторан", website: "https://lyubimy-dyadya.com.ua", time: "9 a.m. - 10 p.m.", hashtag: "@lyubimy_dyadya", address: [CafeAddress(latitude: 50.438269, longitude: 30.501158, direct: "Україна, Київ, вул. Паньківська, 20")], image: #imageLiteral(resourceName: "ЛюбимыйДядя"))])
    ]
    
    func cafeLocation() -> [Cafes] {
        return cafeLocationMap
    }
}


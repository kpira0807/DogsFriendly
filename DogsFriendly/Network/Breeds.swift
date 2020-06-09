import Foundation

struct Breeds: Codable {
    let id: Int?
    let bred_for: String?
    let height: Height
    let life_span: String?
    let name: String?
    let origin: String?
    let temperament: String?
    let weight: Weight
    let breed_group: String?
    
    enum BreedsKeys: String, CodingKey {
        case id
        case bred_for
        case height
        case life_span
        case name
        case origin
        case temperament
        case weight
        case breed_group
    }
}

struct Height: Codable {
    let metric: String?
}

struct Weight: Codable {
    let metric: String?
}

struct BreedsImages: Codable {
    let url: String?
}

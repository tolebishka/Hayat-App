import Foundation

struct DayItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func update() -> DayItemModel {
        return DayItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}

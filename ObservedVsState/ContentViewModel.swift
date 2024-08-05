import Combine
import Foundation

// 뷰 모델
class ContentViewModel: ObservableObject {
    @Published var items: [CustomModel] = [
        CustomModel(id: UUID().uuidString, name: "JANG", age: 23),
        CustomModel(id: UUID().uuidString, name: "HYO", age: 29)
    ]
    
    func add() {
        items.append(CustomModel(id: UUID().uuidString, name: "ADD", age: Int.random(in: 0...100)))
    }
}

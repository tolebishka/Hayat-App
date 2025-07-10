import SwiftUI

struct DayListRowView: View {
    var item: DayItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
                .foregroundColor(.blue)
            Text(item.title)
            Spacer()
        }
    }
}

var item1 = DayItemModel(title: "Test", isCompleted: false)
var item2 = DayItemModel(title: "Test", isCompleted: true)

#Preview {
    DayListRowView(item: item1)
}

#Preview {
    DayListRowView(item: item2)
}

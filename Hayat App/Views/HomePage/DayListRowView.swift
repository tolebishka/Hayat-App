import SwiftUI

struct DayListRowView: View {
    var item: DayItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .font(.title3)
                .foregroundColor(item.isCompleted ? .green : .red)
                .foregroundColor(.blue)
            VStack(alignment: .leading, spacing: 4){
                Text(item.title)
                    .foregroundColor(item.isCompleted ? .green : .red)
                    .strikethrough(item.isCompleted, color: Color.green)
                    
                Rectangle()
                    .fill(item.isCompleted ? Color.green : Color.red.opacity(0.5))
                    .frame(height: 1)
            }
            
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

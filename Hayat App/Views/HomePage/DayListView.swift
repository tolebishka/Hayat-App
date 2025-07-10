import SwiftUI

struct DayListView: View {
    @EnvironmentObject var dayListViewModel: DayListViewModel
    var body: some View {
        ZStack{
            if dayListViewModel.items.isEmpty{
                Text("No Items")
                VStack{
                    Spacer()
                    DayAddItemView()
                        .padding(.bottom, 60)
                }
            }else{
                ZStack{
                    List{
                        Section("Not Done"){
                            ForEach(dayListViewModel.items.filter {!$0.isCompleted}){item in
                                DayListRowView(item: item)
                                    .onTapGesture{
                                        withAnimation(.linear){
                                            dayListViewModel.updateItem(item: item)
                                        }
                                    }
                            }
                            .onDelete(perform: dayListViewModel.deleteItem)
                            .onMove(perform: dayListViewModel.moveItem)
                        }
                        .foregroundColor(.red)
                        Section("Done"){
                            ForEach(dayListViewModel.items.filter {$0.isCompleted}){item in
                                DayListRowView(item: item)
                                    .onTapGesture{
                                        withAnimation(.linear){
                                            dayListViewModel.updateItem(item: item)
                                        }
                                    }
                            }
                            .onDelete(perform: dayListViewModel.deleteItem)
                            .onMove(perform: dayListViewModel.moveItem)
                        }
                        .foregroundColor(.blue)
                    }
                    .background(Color.black)
                    VStack{
                        Spacer()
                        DayAddItemView()
                            .padding(.bottom, 65)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    NavigationView{
        DayListView()
            .environmentObject(DayListViewModel())
    }
    
    
}

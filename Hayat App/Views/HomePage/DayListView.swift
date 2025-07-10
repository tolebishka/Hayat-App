import SwiftUI


struct DayListView: View {
    @EnvironmentObject var dayListViewModel: DayListViewModel
    var body: some View {
        
        ZStack{
            Color(.secondBackground)
                .ignoresSafeArea()
            
            if dayListViewModel.items.isEmpty{
                Text("No Items")
                VStack{
                    Spacer()
                    DayAddItemView()
                        .padding(.bottom, 100)
                }
            }else{
                VStack{
                    List{
                        Section("Not Done"){
                            ForEach(dayListViewModel.items.filter {!$0.isCompleted}){item in
                                DayListRowView(item: item)
                                    .onTapGesture{
                                        withAnimation(.linear){
                                            dayListViewModel.updateItem(item: item)
                                        }
                                    }
                                    .listRowBackground(Color(.secondBackground))
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
                                    .listRowBackground(Color(.secondBackground))
                            }
                            .onDelete(perform: dayListViewModel.deleteItem)
                            .onMove(perform: dayListViewModel.moveItem)
                        }
                        .foregroundColor(.blue)
                    }
                    .scrollContentBackground(.hidden)
                    VStack{
                        Spacer()
                        DayAddItemView()
                            .padding(.bottom, 100)
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

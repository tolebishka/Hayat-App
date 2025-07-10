import SwiftUI


struct DayListView: View {
    @AppStorage("username") private var username: String = ""
    @EnvironmentObject var dayListViewModel: DayListViewModel
    var body: some View {
        ZStack{
            Color(.secondBackground)
                .ignoresSafeArea()
            
            if dayListViewModel.items.isEmpty{
                VStack{
                    VStack(spacing: 14){
                        HStack{
                            NameView()
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                            ProfileImage()
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                        }
                        
                        Text("ЗАДАЧИ НА ДЕНЬ")
                            .font(.system(size: 24))
                            .bold()
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 45)
                        Text("ЧТО ВЫ ХОТЕЛИ БЫ ИЗМЕНИТЬ В СЕБЕ, КОТОРЫЙ ПРИБЛИЗИТ ВАС К ВСЕВЫШНЕМУ")
                            .font(.system(size: 11))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.horizontal, 70)
                    }

                    List{
                        Section("Ин Ша Аллах, закончу"){
                            
                        }
                        Section("АльхамудилЛях, закончил"){
                        }
                    }
                    .scrollContentBackground(.hidden)
                    VStack{
                        Spacer()
                        DayAddItemView()
                            .padding(.bottom, 100)
                }
            }
        }  
            else{
                VStack{
                    VStack(spacing: 14){
                        HStack{
                            NameView()
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                            ProfileImage()
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                        }
                        
                        Text("ЗАДАЧИ НА ДЕНЬ")
                            .font(.system(size: 24))
                            .bold()
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 45)
                        Text("ЧТО ВЫ ХОТЕЛИ БЫ ИЗМЕНИТЬ В СЕБЕ, КОТОРЫЙ ПРИБЛИЗИТ ВАС К ВСЕВЫШНЕМУ")
                            .font(.system(size: 11))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.horizontal, 70)
                    }
                    List{
                        Section("Ин Ша Аллах, закончу"){
                            ForEach(dayListViewModel.items.filter {!$0.isCompleted}){item in
                                DayListRowView(item: item)
                                    .onTapGesture{
                                        withAnimation(.linear){
                                            dayListViewModel.updateItem(item: item)
                                        }
                                    }
                                    .listRowSeparator(.hidden)
                                    .listRowBackground(Color(.secondBackground))
                            }
                            .onDelete(perform: dayListViewModel.deleteItem)
                            .onMove(perform: dayListViewModel.moveItem)
                        }
                        .foregroundColor(.red)
                        Section("АльхамудилЛях, закончил"){
                            ForEach(dayListViewModel.items.filter {$0.isCompleted}){item in
                                DayListRowView(item: item)
                                    .onTapGesture{
                                        withAnimation(.linear){
                                            dayListViewModel.updateItem(item: item)
                                        }
                                    }
                                    .listRowSeparator(.hidden)
                                    .listRowBackground(Color(.secondBackground))
                            }
                            
                            .onDelete(perform: dayListViewModel.deleteItem)
                            .onMove(perform: dayListViewModel.moveItem)
                        }
                        .foregroundColor(.blue)
                    }
                    .scrollContentBackground(.hidden)
                    
                    DayAddItemView()
                        .padding(.bottom, 100)
                }
                .background(Color(.secondBackground))
            }
        }
    }
    
    func NameView() -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Ассаляму алейкум 👋")
                .font(.title2.bold())
                .lineLimit(2)
            Text("\(username)!")
                .font(.title3.bold())
                .lineLimit(2)
        }
        .hSpacing(.leading)
    }
    
    func ProfileImage() -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 44, height: 44)
            .clipShape(Circle())
            .padding()
    }
}

#Preview {
    NavigationView{
        DayListView()
            .environmentObject(DayListViewModel())
    }
    
    
}

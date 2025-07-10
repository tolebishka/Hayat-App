//
//  DayListView.swift
//  Hayat App
//
//  Created by Arcana Inc on 10.07.2025.
//

import SwiftUI

struct DayListView: View {
    @EnvironmentObject var dayListViewModel: DayListViewModel
    var body: some View {
        ZStack{
            if dayListViewModel.items.isEmpty{
                Text("No Items")
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
                    DayAddItemView()
                }
            }
        }
    }
}

#Preview {
    NavigationView{
        DayListView()
    }
    .environmentObject(DayListViewModel())
    
}

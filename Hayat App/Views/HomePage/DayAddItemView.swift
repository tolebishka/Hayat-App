//
//  AddItemView.swift
//  Hayat App
//
//  Created by Arcana Inc on 10.07.2025.
//

import SwiftUI

struct DayAddItemView: View {
    @State var textFieldText: String = ""
    @EnvironmentObject var dayListViewModel: DayListViewModel
    @State var alertText = ""
    @State var showAlert: Bool = false
    var body: some View {
            HStack{
                TextField("", text: $textFieldText,
                          prompt: Text("Write a goal....")
                    .foregroundColor(.white))
                    .padding(.horizontal, 20)
                    .frame(width: 243, height: 47)
                    .foregroundColor(.white)
                    .background(Color.firstBackground)
                    .cornerRadius(10)

                Button {
                    saveButton()
                    textFieldText = ""
                } label: {
                    Text("Add")
                        .foregroundColor(.white)
                        .frame(height: 47)
                        .frame(maxWidth: .infinity)
                        .background(Color.firstBackground)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 45)
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
        
    }
    func saveButton(){
        if isTextAvailable( ) {
            dayListViewModel.addItem(title: textFieldText)
        }
        
    }
    
    func isTextAvailable() -> Bool {
        if textFieldText.trimmingCharacters(in: .whitespacesAndNewlines).count < 3 {
            alertText = "Введите минимум 3 символа"
            showAlert = true
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertText))
    }
}

#Preview {
    NavigationView{
        DayAddItemView()
            .environmentObject(DayListViewModel())
    }
    
    
}

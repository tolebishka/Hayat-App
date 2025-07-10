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
                TextField("Type something", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(width: 300,height: 45)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                Button {
                    saveButton()
                    textFieldText = ""
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height: 45)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
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
        if textFieldText.isEmpty && textFieldText.count < 3 {
            alertText = "Wrong, type more than 3 character"
            showAlert.toggle()
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
    }
    .environmentObject(DayListViewModel())
    
}

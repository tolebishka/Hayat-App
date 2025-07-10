////
////  tempView.swift
////  Hayat App
////
////  Created by Arcana Inc on 08.07.2025.
////
//
//import SwiftUI
//
//struct tempView: View {
//    var body: some View {
//    Home()
//    }
//}
//
//#Preview {
//    tempView()
//}
//
//struct Home: View {
//    var colors: [Color] = [.red, .blue, .green]
//    
//    @State var offset : CGFloat = 0
//    var body: some View {
//        ScrollView(.init()){
//            TabView{
//                ForEach(colors.indices, id: \.self) {index in
//                    if index == 0
//                    {
//                        colors[index]
//                            .overlay(
//                                // getometry Reader for getting offset..
//                                GeometryReader { proxy -> Color in
//                                    let minX = proxy.frame(in: .global).minX
//
//                                    DispatchQueue.main.async {
//                                        withAnimation(.default) {
//                                            self.offset = -minX
//                                        }
//                                    }
//
//                                    return Color.clear
//                                }
//                                .frame(width: 0, height: 0)
//                                .alignmentGuide(.leading) )
//
//                        
//                                    
//                                    
//                               
//                    }
//                }
//            }
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            .overlay(
//                HStack(spacing: 15){
//                    ForEach(colors.indices, id: \.self){index in
//                        Capsule()
//                            .fill(Color.white)
//                            .frame(width: 7, height: 7)
//                        
//                    }
//                }
//                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
//                    .padding(.bottom, 10), alignment: .bottom
//            )
//        }
//        .ignoresSafeArea()
//
//    }
//}

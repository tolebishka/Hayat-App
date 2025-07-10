//
//  PageControlView.swift
//  Hayat App
//
//  Created by Arcana Inc on 08.07.2025.
//

import SwiftUI

struct PageControlView: View {
    @State private var currentPage = 0
    var body: some View {
        
        VStack {
            TabView(selection: $currentPage){
                VStack(alignment: .leading) {
                    Spacer()
                    
                    Text("""
                    С именем Аллаха, Милостивого, Милосердного!
                    
                    Нам очень приятно, что вы скачали наше приложение и собираетесь провести вместе с ним остальное время.
                    
                    Мы любим планировать жизнь и достигать целей. И мы убеждены, что любой результат можно достичь путём строгой дисциплины и грамотной постановки цели.
                    
                    Наша миссия – помогать людям быть эффективными, делая качественные продукты. Но ведь нам нужно быть эффективными не только в мирских делах, но и на пути к нашей будущей жизни – жизни вечной.
                    
                    Так появилась идея делать полезные планеры Hayat.
                    
                    Желаем вам успехов в делах и довольства Аллаха!
                    """)
                    .font(.system(size: 10))
                    .foregroundColor(.blackText)
                    .padding(.bottom, 250)
                    .padding(.horizontal, 48)
                    .padding(.horizontal)
                    
                }
                .tag(0)
                VStack(alignment: .center, spacing: 74) {
                    Text("Польза планирования")
                        .padding(.top, 95)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                    VStack(spacing: 53){
                        VStack(spacing: 6){
                            Text("Определение приоритетов")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Планирование помогает понять, что действительно важно, и сосредоточиться на значимых целях — как мирских, так и духовных.")
                                .font(.system(size: 12))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        VStack(spacing: 6){
                            Text("Увеличение продуктивности")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Когда ты знаешь, что делать и зачем,  время используется эффективнее, меньше откладываний, больше результата.")
                                .font(.system(size: 12))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        VStack(spacing: 6){
                            Text("Снижение тревожности")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Ты чувствуешь контроль над своим днём, а не подчинён ему.")
                            
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        VStack(spacing: 6){
                            Text("Постоянный рост через самоанализ")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Рефлексия и анализ действий позволяют видеть свои ошибки и достижения.")
                            
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        Spacer()
                    }
                }
                .tag(1)
                .padding(.horizontal, 86)
                .foregroundColor(.blackText)
                VStack(alignment: .center, spacing: 64) {
                    Text("""
                        Hayat App
                        cостоит из четерех частей
                        """)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    VStack(spacing: 30){
                        VStack(spacing: 6){
                            Text("Цели на месяц")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Раздел для постановки духовных и мирских целей.")
                                .font(.system(size: 12))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 115)
                            
                            
                        }
                        VStack(spacing: 6){
                            Text("Задачи на день")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Список ежедневных задач, связанных с месячными целями.")
                                .font(.system(size: 12))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.horizontal, 95)
                        }
                        VStack(spacing: 6){
                            Text("Заметки и мысли")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Свободное поле для записи размышлений, идей, вдохновений.")
                            
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.horizontal, 90)
                        }
                        VStack(spacing: 6){
                            Text("Идеи")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Отдельный раздел для хранения и развития идей.")
                            
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.horizontal, 100)
                        }
                        VStack(spacing: 6){
                            Text("Намаз трекер")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Таблица или чек-лист с 5 молитвами в день.")
                            
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.horizontal, 129)
                        }
                        VStack(spacing: 6){
                            Text("ИИ - Ассистент")
                                .font(.system(size: 13))
                                .italic()
                                .multilineTextAlignment(.center)
                            
                            Text("Персональный наставник с исламским контекстом.")
                            
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.horizontal, 119)
                            
                        }
                        Spacer()
                        
                    }
                }
                .tag(2)
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: .infinity)
                .padding(.top, 50)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
//            .indexViewStyle(.page(backgroundDisplayMode: .never))
            PageIndicator(count: 3, currentIndex: currentPage)
                
        }
        
    }
}

struct PageIndicator: View {
    let count: Int
    let currentIndex: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<count, id: \.self) { index in
                Capsule()
                    .fill(index == currentIndex ? Color.blackText : Color.gray.opacity(0.5))
                    .frame(width: index == currentIndex ? 18 : 6, height: 6)
                    .animation(.easeInOut(duration: 0.25), value: currentIndex)
            }
        }
    }
}

//struct PageControlView: View {
//    var body: some View {
//        TabView{
//            VStack(alignment: .leading) {
//                Spacer()
//
//                Text("""
//                С именем Аллаха, Милостивого, Милосердного!
//
//                Нам очень приятно, что вы скачали наше приложение и собираетесь провести вместе с ним остальное время.
//
//                Мы любим планировать жизнь и достигать целей. И мы убеждены, что любой результат можно достичь путём строгой дисциплины и грамотной постановки цели.
//
//                Наша миссия – помогать людям быть эффективными, делая качественные продукты. Но ведь нам нужно быть эффективными не только в мирских делах, но и на пути к нашей будущей жизни – жизни вечной.
//
//                Так появилась идея делать полезные планеры Hayat.
//
//                Желаем вам успехов в делах и довольства Аллаха!
//                """)
//                .font(.system(size: 10))
//                .foregroundColor(.blackText)
//                .padding(.bottom, 250)
//                .padding(.horizontal, 48)
//                .padding(.horizontal)
//                
//            }
//            VStack(alignment: .center, spacing: 74) {
//                Text("Польза планирования")
//                    .padding(.top, 95)
//                    .font(.system(size: 16))
//                    .multilineTextAlignment(.center)
//                VStack(spacing: 53){
//                    VStack(spacing: 6){
//                        Text("Определение приоритетов")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Планирование помогает понять, что действительно важно, и сосредоточиться на значимых целях — как мирских, так и духовных.")
//                            .font(.system(size: 12))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                    }
//                    VStack(spacing: 6){
//                        Text("Увеличение продуктивности")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Когда ты знаешь, что делать и зачем,  время используется эффективнее, меньше откладываний, больше результата.")
//                            .font(.system(size: 12))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                    }
//                    VStack(spacing: 6){
//                        Text("Снижение тревожности")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Ты чувствуешь контроль над своим днём, а не подчинён ему.")
//                            
//                            .font(.system(size: 13))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                    }
//                    VStack(spacing: 6){
//                        Text("Постоянный рост через самоанализ")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Рефлексия и анализ действий позволяют видеть свои ошибки и достижения.")
//                            
//                            .font(.system(size: 13))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                    }
//                    Spacer()
//                }
//            }
//            .padding(.horizontal, 86)
//            .foregroundColor(.blackText)
//            VStack(alignment: .center, spacing: 64) {
//                Text("""
//                    Hayat App
//                    cостоит и шесть частей
//                    """)
//                    .font(.system(size: 16))
//                    .multilineTextAlignment(.center)
//                VStack(spacing: 40){
//                    VStack(spacing: 6){
//                        Text("Цели на месяц")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Раздел для постановки духовных и мирских целей.")
//                            .font(.system(size: 12))
//                            .multilineTextAlignment(.center)
//                            .padding(.horizontal, 115)
//                            
//
//                    }
//                    VStack(spacing: 6){
//                        Text("Задачи на день")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Список ежедневных задач, связанных с месячными целями.")
//                            .font(.system(size: 12))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                            .padding(.horizontal, 95)
//                    }
//                    VStack(spacing: 6){
//                        Text("Заметки и мысли")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Свободное поле для записи размышлений, идей, вдохновений.")
//                            
//                            .font(.system(size: 13))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                            .padding(.horizontal, 90)
//                    }
//                    VStack(spacing: 6){
//                        Text("Идеи")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Отдельный раздел для хранения и развития идей.")
//                            
//                            .font(.system(size: 13))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                            .padding(.horizontal, 100)
//                    }
//                    VStack(spacing: 6){
//                        Text("Намаз трекер")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Таблица или чек-лист с 5 молитвами в день.")
//                            
//                            .font(.system(size: 13))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                            .padding(.horizontal, 129)
//                    }
//                    VStack(spacing: 6){
//                        Text("ИИ - Ассистент")
//                            .font(.system(size: 13))
//                            .italic()
//                            .multilineTextAlignment(.center)
//
//                        Text("Персональный наставник с исламским контекстом.")
//                            
//                            .font(.system(size: 13))
//                            .multilineTextAlignment(.center)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                            .padding(.horizontal, 119)
//
//                    }
//                    Spacer()
//                }
//            }
//            .lineLimit(nil)
//            .fixedSize(horizontal: false, vertical: true)
//            .frame(maxWidth: .infinity)
//            
//
//
//        }
//        .tabViewStyle(.page(indexDisplayMode: .always))
//        .indexViewStyle(.page(backgroundDisplayMode: .never))
//    }
//}

#Preview {
    PageControlView()
}

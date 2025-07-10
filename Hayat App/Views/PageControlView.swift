//
//  PageControlView.swift
//  Hayat App
//
//  Created by Arcana Inc on 08.07.2025.
//

import SwiftUI

struct PageControlView: View {
    var body: some View {
        TabView{
            VStack(alignment: .leading) {
                Spacer()
                
                // Текст в "рамке"
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
            VStack(alignment: .center, spacing: 8) {
                Spacer()
                
                Text("Польза планирования")
                    .bold()
                    .multilineTextAlignment(.center)

                Text("Определение приоритетов")
                    .italic()
                    .multilineTextAlignment(.center)

                Text("Планирование помогает понять, что действительно важно, и сосредоточиться на значимых целях — как мирских, так и духовных.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
            }
            .padding(.horizontal, 24)

            .font(.system(size: 10))
            .foregroundColor(.blackText)
            .padding(.bottom, 250)
            .padding(.horizontal, 48)
            .padding(.horizontal)
            VStack(alignment: .leading) {
                Spacer()
                
                // Текст в "рамке"
                
                
                .font(.system(size: 10))
                .foregroundColor(.blackText)
                .padding(.bottom, 250)
                .padding(.horizontal, 48)
                .padding(.horizontal)
                
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    PageControlView()
}

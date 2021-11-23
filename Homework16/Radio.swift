//
//  Radio.swift
//  Homework16
//
//  Created by Адель Ахметшин on 18.11.2021.
//

import SwiftUI

// MARK: - Model
struct Radio: View {
    
    @State private var bigItem = [
        BigItems(title1: "Новый выпуск", title2: "Музыкальный базар с Бастой", title3: "Новое шоу", image: "basta"),
        BigItems(title1: "Избранный плейлист", title2: "Hip-Hop", title3: "Apple Music на русском", image: "hip-hop"),
        BigItems(title1: "Новый альбом", title2: "FLOWJOB", title3: "SQWOZ BAB", image: "flowjob"),
        BigItems(title1: "Новый альбом", title2: "30", title3: "Adele", image: "adele")
    ]
    
    @State private var minItem = [
        MinItems(image: "relax", title1: "Музыка для расслабления", title2: "Электронная медитация"),
        MinItems(image: "popular", title1: "Популярное", title2: "То, что слушают прямо сейчас"),
        MinItems(image: "music", title1: "Классика электронной музыки", title2: "Как рождался саунд будущего"),
        MinItems(image: "electricrock", title1: "Классика рока", title2: "Гении гитарного звука"),
        MinItems(image: "classic", title1: "Классика", title2: "Выдающиеся образцы жанра"),
        MinItems(image: "rapmusic", title1: "Хип-Хоп", title2: "Идеальные биты и рифмы")
    ]
    
    let columns = [
        //        GridItem(.fixed(100)),
        GridItem(.flexible())
    ]
    
    struct BigItems: Hashable, Decodable {
        let title1: String
        let title2: String
        let title3: String
        let image: String
    }
    
    struct MinItems: Hashable, Decodable {
        let image: String
        let title1: String
        let title2: String
    }
    
    
    // MARK: - View
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
                    Divider()
                    LazyHGrid(rows: columns, alignment: .top) {
                        ForEach(bigItem, id: \.self) { item in
                            VStack(alignment: .leading) {
                                Text(item.title1)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18))
                                    .padding(.leading, 12)
                                    .padding(.trailing, 0)
                                Text(item.title2)
                                    .foregroundColor(.black)
                                    .font(.system(size: 22))
                                    .padding(.leading, 12)
                                    .padding(.trailing, 0)
                                Text(item.title3)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18))
                                    .padding(.leading, 12)
                                    .padding(.trailing, 0)
                                Image(item.image)
                                    .resizable()
                                    .frame(width: 350, height: 250, alignment: .center)
                                    .cornerRadius(15)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 0)
                                    .shadow(radius: 5)
                                    .padding(.bottom, 8)
                            }
                        }
                    }
                }
                .navigationTitle("Радио")
                Divider()
                Text("Станции")
                    .bold()
                    .font(.system(size: 24))
                    .padding(.top)
                    .padding(.trailing, 260)
                
                LazyVGrid(columns: columns, alignment: .leading) {
                    ForEach(minItem, id: \.self) { item in
                        HStack {
                            Image(item.image)
                                .resizable()
                                .frame(width: 110, height: 110)
                                .cornerRadius(9)
                                .padding(.leading, 1)
                                .padding(.trailing, 15)
                                .shadow(radius: 3)
                            VStack(alignment: .leading) {
                            Text(item.title1)
                                    .font(.system(size: 18))
                            Text(item.title2)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15))
                            }
                        }
                        Divider()
                        
                    }
                }
            
                
            }
        }
        
    }
}

struct Radio_Previews: PreviewProvider {
    static var previews: some View {
        Radio()
    }
}

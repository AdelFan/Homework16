//
//  Media.swift
//  Homework16
//
//  Created by Адель Ахметшин on 18.11.2021.
//

import SwiftUI

struct strItem: Hashable, Identifiable {
    let id: Int
    let title: String
    let image: String
}


struct Media: View {
    @State private var someBool = true
    @State private var selection = Set<String>()
    
    @State private var items = [
        strItem(id: 0, title: "Плейлисты", image: "music.note.list"),
        strItem(id: 1, title: "Артисты", image: "music.mic"),
        strItem(id: 2, title: "Альбомы", image: "square.stack"),
        strItem(id: 3, title: "Песни", image: "music.note"),
        strItem(id: 4, title: "Телешоу и фильмы", image: "tv"),
        strItem(id: 5, title: "Видеоклипы", image: "music.note.tv"),
        strItem(id: 6, title: "Жанры", image: "guitars"),
        strItem(id: 7, title: "Сборники", image: "person.2.crop.square.stack"),
        strItem(id: 8, title: "Авторы", image: "music.quarternote.3"),
        strItem(id: 9, title: "Загружено", image: "arrow.down.circle"),
        strItem(id: 10, title: "Домашняя коллекция", image: "music.note.house")
    ]
    
    var body: some View {
            NavigationView {
                ZStack {
                    if someBool {
                        VStack {
                            Text("Ищете свою музыку?")
                                .bold()
                                .multilineTextAlignment(.center)
                                .font(.title)
                            Text("Здесь появится купленная Вами в")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            Text("iTunes Store музыка")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                        }
                    } else {
                        List(selection: $selection) {
                            ForEach(items, id: \.self) { item in
                                HStack {
                                    Image(systemName: item.image)
                                        .resizable()
                                        .frame(width: 20, height: 23)
                                        .foregroundColor(.red)
                                    Text(item.title)
                                }
                            }
                            .onMove(perform: { indices, newOffset in
                            })
                            
                        }.listStyle(InsetListStyle())
                    }
                }
                .environment(\.editMode, .constant(
                    someBool ? EditMode.inactive : EditMode.active))
                .navigationBarItems(trailing:
                                        Button(action: { someBool.toggle() },
                                               label: {
                    if someBool {
                        Text("Править")
                            .foregroundColor(.red)
                    } else {
                        Text("Готово")
                            .bold()
                            .foregroundColor(.red)
                    }
                })
                )
                .navigationTitle("Медиатека")
                .accentColor(.red)
            }
    }
}

struct Media_Previews: PreviewProvider {
    static var previews: some View {
        Media()
    }
}

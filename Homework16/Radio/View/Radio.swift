//
//  Radio.swift
//  Homework16
//
//  Created by Адель Ахметшин on 18.11.2021.
//

import SwiftUI

// MARK: - Model

struct Radio: View {
    private let bItems = RadioModel.bigItem
    private let mItems = RadioModel.minItem
    let columns = [
        GridItem(.flexible())
    ]

    // MARK: - View
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
//                    Divider()
                    LazyHGrid(rows: columns, alignment: .top) {
                        ForEach(bItems, id: \.self) { item in
                            VStack(alignment: .leading) {
                                Divider()
                                    .padding(.leading)
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
                                Divider()
                                    .padding(.leading)
                            }
                        }
                    }
                    .padding(.trailing)
                }
                .navigationTitle("Радио")
//                Divider()
                Text("Станции")
                    .bold()
                    .font(.system(size: 24))
                    .padding(.top)
                    .padding(.trailing, 260)
                
                LazyVGrid(columns: columns, alignment: .leading) {
                    ForEach(mItems, id: \.self) { item in
                        HStack {
                            Image(item.image)
                                .resizable()
                                .frame(width: 110, height: 110)
                                .cornerRadius(9)
                                .padding(.leading, 15)
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

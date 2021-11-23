//
//  Player.swift
//  Homework16
//
//  Created by Адель Ахметшин on 18.11.2021.
//

import SwiftUI

struct Player: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 400, height: 75)
                .foregroundColor(.gray)
                .padding(.top, 590)
            
            Image("image_0")
                .resizable()
                .cornerRadius(17)
                .frame(width: 60, height: 60)
                .padding(.top, 590)
                .padding(.trailing, 280)
                .shadow(color: .gray, radius: 10, x: 0.0, y: 5.0)
            
            Text("2Pac - Lord Knows")
                .font(.system(size: 18))
                .padding(.top, 590)
                .padding(.trailing, 30)
            
            Button(action: {}, label: {
                Image(systemName: "play.fill")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(.top, 590)
                    .padding(.leading, 240)
            })
            
            Button(action: {}, label: {
                Image(systemName: "forward.fill")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .padding(.top, 590)
                    .padding(.leading, 320)
            })
                
        }

        
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}

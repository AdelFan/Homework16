//
//  PlayerView.swift
//  Homework16
//
//  Created by Адель Ахметшин on 29.11.2021.
//

import SwiftUI

struct PlayerView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}


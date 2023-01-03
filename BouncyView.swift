//
//  BouncyView.swift
//  IFC Showcase again
//
//  Created by Yuhan Du on 2/1/23.
//

import SwiftUI

struct BouncyView: UIViewRepresentable {
    
    var icon: String
    var onCollide: ((CollisionSurface) -> Void)
    
    func makeUIView(context: Context) -> IconBouncyView{
        let view = IconBouncyView(onCollide: onCollide)
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { _ in
            for _ in 0..<5 {
                view.insert(icon: icon)
            }
        }
        
        return view
    }
    
    func updateUIView(_ uiView: IconBouncyView, context: Context) {
//        if let last = icons.last {
//            uiView.insert(icon: last)
//        }
    }
}

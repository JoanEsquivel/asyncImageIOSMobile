//
//  ContentView.swift
//  asyncImage
//
//  Created by Joan Esquivel on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    private let imageUrl:String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        //1- Basic
        //  AsyncImage(url: URL(string: imageUrl))
        
        //2- Scale
        //  AsyncImage(url: URL(string: imageUrl), scale: 3.0)
        
        //3- Placeholder
        AsyncImage(url: URL(string: imageUrl)){
            image in image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 128)
                .foregroundColor(.purple)
                .opacity(0.5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

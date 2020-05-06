
//
//  CharacterDetail.swift
//  HW2
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 test. All rights reserved.
//
import SwiftUI

struct CharacterDetail: View {
    var character: Character
    var body: some View {
        List{
            ScrollView(.vertical){
                VStack{
                    CharacterDetailImage(character: character)
                    Text(character.intro)
                        .font(Font.custom("Cochin Italic3.2", size: 20))
                        .multilineTextAlignment(.center)
                        .padding(5)
                }
                .navigationBarTitle(character.name)
            }
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: characters[0])
    }
}

struct CharacterDetailImage: View {
    var character: Character
    var body: some View {
        Image(character.name)
            .resizable()
            .scaledToFit()
            //.frame(height: 500)
            .clipped()
    }
}

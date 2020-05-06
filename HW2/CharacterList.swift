//
//  CharacterList.swift
//  HW2
//
//  Created by User15 on 2020/4/22.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    var body: some View {
         NavigationView{
            List{
                    CharacterView()
                }
                   .onAppear {
                       UITableView.appearance().separatorColor = .clear
                   }
                   .navigationBarTitle("Character")
               }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}

struct CharacterView: View {
    let photoWidth = (UIScreen.main.bounds.size.width - 10)/2
    let names = [["哈利波特","榮恩·衛斯理"],["妙麗·格蘭傑","奈威‧隆巴頓"],["露娜‧羅古德","金妮·衛斯理"],["跩哥‧馬份","西追‧迪哥里"],["詹姆·波特","莉莉·波特"],["天狼星‧布萊克","德思禮一家人"],["衛斯理一家人","阿不思‧鄧不利多"],["魯霸·海格","賽佛勒斯·石內卜"],["麥米奈娃","菲力·孚立維"],["雷木思‧路平","多比"],["佛地魔","彼得·佩迪魯"],["馬份夫婦","雷斯壯夫婦"]]
    var body: some View {
        ForEach(0..<names.count){ (row) in
            ScrollView(.vertical){
                HStack(spacing:20){
                    CharacterSecond(row: row)
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        }
    }
}

struct CharacterSecond: View {
    let photoWidth = (UIScreen.main.bounds.size.width - 10)/2
    let names = [["哈利波特","榮恩·衛斯理"],["妙麗·格蘭傑","奈威‧隆巴頓"],["露娜‧羅古德","金妮·衛斯理"],["跩哥‧馬份","西追‧迪哥里"],["詹姆·波特","莉莉·波特"],["天狼星‧布萊克","德思禮一家人"],["衛斯理一家人","阿不思‧鄧不利多"],["魯霸·海格","賽佛勒斯·石內卜"],["麥米奈娃","菲力·孚立維"],["雷木思‧路平","多比"],["佛地魔","彼得·佩迪魯"],["馬份夫婦","雷斯壯夫婦"]]
    var row: Int
    var body: some View {
        ForEach(0..<self.names[self.row].count){(column) in
           NavigationLink(destination: CharacterDetail(character: characters[(self.row*2)+column])) {
                VStack {
                    CharacterImage(row: self.row, column: column)
                }.padding(10)
           }
        }
    }
}

struct CharacterImage: View {
    let photoWidth = (UIScreen.main.bounds.size.width - 10)/2
    let names = [["哈利波特","榮恩·衛斯理"],["妙麗·格蘭傑","奈威‧隆巴頓"],["露娜‧羅古德","金妮·衛斯理"],["跩哥‧馬份","西追‧迪哥里"],["詹姆·波特","莉莉·波特"],["天狼星‧布萊克","德思禮一家人"],["衛斯理一家人","阿不思‧鄧不利多"],["魯霸·海格","賽佛勒斯·石內卜"],["麥米奈娃","菲力·孚立維"],["雷木思‧路平","多比"],["佛地魔","彼得·佩迪魯"],["馬份夫婦","雷斯壯夫婦"]]
    var row: Int
    var column: Int
    var body: some View{
        VStack {
            Image(self.names[self.row][self.column])
                .renderingMode(.original)
                .resizable()
                .frame(width: 170, height: self.photoWidth)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color(red: 160/255, green: 32/255, blue: 240/255), lineWidth: 5))
                .shadow(radius: 3)
                //.clipped()
            Text(characters[(self.row*2)+self.column].name)
            .font(Font.custom("Helvetica", size: 22))
            .foregroundColor(Color(red: 122/255, green: 55/255, blue: 239/255))
        }
    }
}

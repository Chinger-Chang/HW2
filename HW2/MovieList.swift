//
//  SwiftUIView.swift
//  HW2
//
//  Created by User15 on 2020/4/9.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        NavigationView{
            List {
                Section(header:CustomeHeader(name: "電影介紹",red:194,green:221,blue:252)) {
                ScrollView(.horizontal){
                    HStack(spacing: 10){
                        ForEach(0..<movies.count){ (index) in
                            NavigationLink(destination: MovieDetail(movie: movies[index])) {
                            Image(movies[index].name)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300,height: 400)
                                }
                            }
                        }
                    }
                }
               Section(header:CustomeHeader(name: "學院介紹",red:194,green:221,blue:252)) {
                    
                        ForEach(0..<houses.count){ (index) in
                            NavigationLink(destination: HouseDetail(movie: houses[index])) {
                            Image(houses[index].name)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200,height: 200)
                                .background(Image("house").resizable().scaledToFill().opacity(0.5))
                                .cornerRadius(30)
                        }
                        }
                        
                }
            }
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
struct CustomeHeader: View {
    let name: String
    let red:Double
    let green:Double
    let blue:Double
    var body: some View {
        ZStack {
            Color(red: red/255, green: green/255, blue: blue/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}

//
//  HouseDetail.swift
//  HW2
//
//  Created by User20 on 2020/4/14.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct HouseDetail: View {
    var movie: House
    var body: some View {
        ScrollView(.vertical){
            VStack {
                HouseDetailImage(movie: movie)
                Text(movie.intro)
                    .font(Font.custom("HiraginoSans-W7", size: 22))
                    .bold().padding(20)
                    .multilineTextAlignment(.center)
                    .background(Image("house").resizable().scaledToFill().opacity(0.3))
                    .cornerRadius(30)
                    .padding(20)
                Spacer()
            }
            .navigationBarTitle(movie.name)
        }
    }
}

struct HouseDetail_Previews: PreviewProvider {
    static var previews: some View {
        HouseDetail(movie: houses[0])
    }
}

struct HouseDetailImage: View {
    var movie: House
    var body: some View {
        Image(movie.name)
            .resizable()
            .scaledToFill()
            //.frame(height: 500)
            .clipped()
    }
}

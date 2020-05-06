//
//  MovieDetail.swift
//  HW2
//
//  Created by User15 on 2020/4/9.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    var body: some View {
        ScrollView(.vertical){
            VStack {
                MovieDetailImage(movie: movie).padding(20)
                Text(movie.intro)
                    .font(Font.custom("HiraginoSans-W7", size: 20))
                        .bold().padding(10)
                        .multilineTextAlignment(.leading)
                        .cornerRadius(30)
                        
                    Spacer()
            }
            .navigationBarTitle(movie.name)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movies[0])
    }
}

struct MovieDetailImage: View {
    var movie: Movie
    var body: some View {
        Image(movie.name)
            .resizable()
            .scaledToFill()
            //.frame(height: 500)
            .clipped()
    }
}


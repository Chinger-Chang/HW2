//
//  AppView.swift
//  HW2
//
//  Created by User15 on 2020/4/15.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        ZStack(alignment:.bottom){
        TabView {
            HomeView()
            .tabItem {
                    Image(systemName: "house.fill")
                    Text("首頁")
            }
            MovieList()
                .tabItem {
                    Image(systemName: "film.fill")
                    Text("電影介紹")
            }
            CharacterList()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("角色")
            }
           }  .accentColor(Color(red: 238/255, green: 173/255, blue: 34/255)) 
            MusicView()
                .padding(.bottom, 50)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

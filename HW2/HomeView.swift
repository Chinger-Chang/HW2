//
//  HomeView.swift
//  HW2
//
//  Created by User15 on 2020/4/23.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State private var show = false
    func printFollow() {
        self.show.toggle()
    }
    var body: some View {
        ZStack(alignment:.top) {
            if show {
                ZStack{
                Image("background")
                .resizable()
                //.scaledToFill()
                .edgesIgnoringSafeArea(.all)
                    .opacity(0.5)
                VStack{
                Image("jkrowling")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                Text("喬安娜·羅琳，筆名J. K. Rowling及Robert Galbraith，英國小說家、電影編劇及製片人，代表作為《哈利波特》系列作品。她的《哈利波特》暢銷全球，熱賣超過4億本，成為史上最暢銷的書籍之一；其同名改編電影也成為電影史上票房收入最高的電影之一。該系列電影獲得羅琳的完整授權，她還親自擔任《哈利波特－死神的聖物 (上)》和《哈利波特－死神的聖物 (下)》的電影監製。")
                    .font(Font.custom("HiraginoSans-W7", size: 22))
                    .foregroundColor(Color(red: 148/255, green: 0/255, blue: 211/255))
                        .bold()
                   .background(Color(red: 221/255, green: 160/255, blue: 221/255)).padding(50)
                    .multilineTextAlignment(.center)
                    }.padding(20)
                }
                    }
            else{
                Image("background")
                .resizable()
                //.scaledToFill()
                .edgesIgnoringSafeArea(.all)

                Button(action: printFollow) {
                Text("ENTRY")
                .font(Font.custom("DevanagariSangamMN-Bold", size: 28))
                .background(Color(red: 122/255, green: 55/255, blue: 139/255))
                .foregroundColor(Color(red: 255/255, green: 131/255, blue: 120/255))
                .cornerRadius(20)
                }
            }
        }
        .animation(.easeInOut(duration: 5))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  ContentView.swift
//  homework1-1
//
//  Created by jojo on 2021/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack
        {
            //背景圖
            Image("Background1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 10.0){
                Text("往生堂會員優惠")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                HStack(alignment: .bottom, spacing: 30.0){
                    Text("第二碑半價")
                        .foregroundColor(.white)
                    
                    Text("滿三碑送一碑")
                        .foregroundColor(.white)
                }
                
                Text("送禮自用兩相宜歐")
                    .foregroundColor(.white)
                    .font(.title)
            }
            .offset(x: -250, y: -100)
            
            //放上角色
            HuTao(positionX: 700, positionY: 120, rotationDegrees: 0, scale: 0.5)
            
            //放上墳墓
            TombView(positionX: 550, positionY: 250, rotationDegrees: 0, scale: 0.35)
            TombView(positionX: 500, positionY: 280, rotationDegrees: 0, scale: 0.35)
            ChocolateView(offsetX: 150, offsetY: 40, scale: 0.0605)
            BiiView(offsetX: 100, offsetY: 70, scale: 0.0605)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

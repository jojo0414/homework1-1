//
//  hat.swift
//  homework1
//
//  Created by jojo on 2021/10/16.
//

import Foundation
import SwiftUI

struct HatView: View{
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    let scale: CGFloat
    
    var body: some View{
        ZStack{
            //製作帽子前面的牌牌
            Group{
                Card()
                    .fill(Color(red: 199 / 255, green: 184 / 255, blue: 163 / 255))
                    .frame(width: 281 * scale, height: 175 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Card()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 281 * scale, height: 175 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作帽子的本體
            hat()
                .frame(width: 281 * scale, height: 175 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            //                .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: 2)
            
            //製作帽子灰色的部分
            Group{
                Gray1()
                    .fill(Color(red: 152 / 255, green: 141 / 255, blue: 137 / 255))
                    .frame(width: 281 * scale, height: 175 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Gray1()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 281 * scale, height: 175 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            Group{
                Gray2()
                    .fill(Color(red: 99 / 255, green: 120 / 255, blue: 142 / 255))
                    .frame(width: 281 * scale, height: 175 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Gray2()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 281 * scale, height: 175 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作帽子上面的花
            FlowerView(positionX: positionX, positionY: positionY, rotationDegrees: rotationDegrees, scaleFlower: scale)
            
        }
        
        
    }
    
    
}

struct Gray1: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 166 / 281 * rect.width, y: 63 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 166 / 281 * rect.width, y: 63 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 176 / 281 * rect.width, y: 57 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 172 / 281 * rect.width, y: 71 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 168 / 281 * rect.width, y: 70 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 170 / 281 * rect.width, y: 73 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 169 / 281 * rect.width, y: 75 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 168 / 281 * rect.width, y: 81 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 156 / 281 * rect.width, y: 84 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 154 / 281 * rect.width, y: 80 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 160 / 281 * rect.width, y: 75 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 166 / 281 * rect.width, y: 63 / 175 * rect.height))
        }
    }
}

struct Gray2: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 267 / 281 * rect.width, y: 169 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 267 / 281 * rect.width, y: 169 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 272 / 281 * rect.width, y: 168 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 280 / 281 * rect.width, y: 167 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 281 / 281 * rect.width, y: 168 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 281 / 281 * rect.width, y: 172 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 275 / 281 * rect.width, y: 173 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 272 / 281 * rect.width, y: 173 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 268 / 281 * rect.width, y: 175 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 267 / 281 * rect.width, y: 169 / 175 * rect.height))
        }
    }
}

struct Card: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 30 / 281 * rect.width, y: 0 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 26 / 281 * rect.width, y: 0 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 26 / 281 * rect.width, y: 1 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 281 * rect.width, y: 5 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 25 / 281 * rect.width, y: 15 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 27 / 281 * rect.width, y: 17 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 27 / 281 * rect.width, y: 23 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 281 * rect.width, y: 30 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 281 * rect.width, y: 44 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 281 * rect.width, y: 51 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 32 / 281 * rect.width, y: 56 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 281 * rect.width, y: 54 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 281 * rect.width, y: 44 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 281 * rect.width, y: 34 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 38 / 281 * rect.width, y: 20 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 37 / 281 * rect.width, y: 9 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 32 / 281 * rect.width, y: 2 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 281 * rect.width, y: 0 / 175 * rect.height))
        }
    }
}

struct hat: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 36 / 281 * rect.width, y: 17 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 281 * rect.width, y: 17 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 281 * rect.width, y: 31 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 281 * rect.width, y: 48 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 35 / 281 * rect.width, y: 56 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 33 / 281 * rect.width, y: 57 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 29 / 281 * rect.width, y: 56 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 0 / 281 * rect.width, y: 76 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 12 / 281 * rect.width, y: 76 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 21 / 281 * rect.width, y: 77 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 46 / 281 * rect.width, y: 80 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 56 / 281 * rect.width, y: 83 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 281 * rect.width, y: 84 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 76 / 281 * rect.width, y: 85 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 120 / 281 * rect.width, y: 94 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 132 / 281 * rect.width, y: 98 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 148 / 281 * rect.width, y: 105 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 168 / 281 * rect.width, y: 112 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 168 / 281 * rect.width, y: 108 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 177 / 281 * rect.width, y: 116 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 186 / 281 * rect.width, y: 128 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 195 / 281 * rect.width, y: 137 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 201 / 281 * rect.width, y: 144 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 218 / 281 * rect.width, y: 157 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 228 / 281 * rect.width, y: 163 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 234 / 281 * rect.width, y: 167 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 243 / 281 * rect.width, y: 170 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 253 / 281 * rect.width, y: 174 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 265 / 281 * rect.width, y: 175 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 280 / 281 * rect.width, y: 167 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 267 / 281 * rect.width, y: 169 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 272 / 281 * rect.width, y: 168 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 251 / 281 * rect.width, y: 168 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 242 / 281 * rect.width, y: 164 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 244 / 281 * rect.width, y: 166 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 236 / 281 * rect.width, y: 162 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 232 / 281 * rect.width, y: 159 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 223 / 281 * rect.width, y: 153 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 212 / 281 * rect.width, y: 146 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 204 / 281 * rect.width, y: 139 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 195 / 281 * rect.width, y: 129 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 188 / 281 * rect.width, y: 123 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 180 / 281 * rect.width, y: 114 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 173 / 281 * rect.width, y: 106 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 169 / 281 * rect.width, y: 101 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 165 / 281 * rect.width, y: 96 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 162 / 281 * rect.width, y: 92 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 158 / 281 * rect.width, y: 87 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 155 / 281 * rect.width, y: 82 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 160 / 281 * rect.width, y: 76 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 162 / 281 * rect.width, y: 71 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 164 / 281 * rect.width, y: 66 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 169 / 281 * rect.width, y: 59 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 172 / 281 * rect.width, y: 52 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 169 / 281 * rect.width, y: 48 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 164 / 281 * rect.width, y: 44 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 160 / 281 * rect.width, y: 40 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 152 / 281 * rect.width, y: 37 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 142 / 281 * rect.width, y: 34 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 135 / 281 * rect.width, y: 31 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 127 / 281 * rect.width, y: 28 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 103 / 281 * rect.width, y: 24 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 88 / 281 * rect.width, y: 20 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 76 / 281 * rect.width, y: 19 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 60 / 281 * rect.width, y: 17 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 281 * rect.width, y: 17 / 175 * rect.height))
        }
    }
}

struct Flower: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 80 / 281 * rect.width, y: 64 / 175 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 86 / 281 * rect.width, y: 75 / 175 * rect.height), control: CGPoint(x: 70 / 281 * rect.width, y: 75 / 175 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 102 / 281 * rect.width, y: 74 / 175 * rect.height), control: CGPoint(x: 97 / 281 * rect.width, y: 85 / 175 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 105 / 281 * rect.width, y: 63 / 175 * rect.height), control: CGPoint(x: 113 / 281 * rect.width, y: 70 / 175 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 94 / 281 * rect.width, y: 56 / 175 * rect.height), control: CGPoint(x: 106 / 281 * rect.width, y: 49 / 175 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 80 / 281 * rect.width, y: 64 / 175 * rect.height), control: CGPoint(x: 80 / 281 * rect.width, y: 51 / 175 * rect.height))
        }
    }
}

struct Branch1: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 96 / 281 * rect.width, y: 48 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 281 * rect.width, y: 48 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 281 * rect.width, y: 44 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 281 * rect.width, y: 40 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 107 / 281 * rect.width, y: 38 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 110 / 281 * rect.width, y: 33 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 112 / 281 * rect.width, y: 37 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 109 / 281 * rect.width, y: 40 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 107 / 281 * rect.width, y: 42 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 105 / 281 * rect.width, y: 44 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 281 * rect.width, y: 48 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 99 / 281 * rect.width, y: 50 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 281 * rect.width, y: 53 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 281 * rect.width, y: 48 / 175 * rect.height))
        }
    }
}

struct Branch2: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 122 / 281 * rect.width, y: 22 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 122 / 281 * rect.width, y: 22 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 129 / 281 * rect.width, y: 12 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 132 / 281 * rect.width, y: 9 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 133 / 281 * rect.width, y: 8 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 133 / 281 * rect.width, y: 12 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 130 / 281 * rect.width, y: 16 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 128 / 281 * rect.width, y: 19 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 127 / 281 * rect.width, y: 21 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 122 / 281 * rect.width, y: 22 / 175 * rect.height))
        }
    }
}

struct Branch3: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 104 / 281 * rect.width, y: 56 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 109 / 281 * rect.width, y: 56 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 116 / 281 * rect.width, y: 54 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 120 / 281 * rect.width, y: 52 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 136 / 281 * rect.width, y: 48 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 140 / 281 * rect.width, y: 45 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 142 / 281 * rect.width, y: 48 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 140 / 281 * rect.width, y: 50 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 132 / 281 * rect.width, y: 52 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 128 / 281 * rect.width, y: 53 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 118 / 281 * rect.width, y: 57 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 113 / 281 * rect.width, y: 59 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 109 / 281 * rect.width, y: 59 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 281 * rect.width, y: 60 / 175 * rect.height))
        }
    }
}

struct Branch4: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 120 / 281 * rect.width, y: 55 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 120 / 281 * rect.width, y: 55 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 125 / 281 * rect.width, y: 58 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 129 / 281 * rect.width, y: 59 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 133 / 281 * rect.width, y: 60 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 135 / 281 * rect.width, y: 60 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 135 / 281 * rect.width, y: 63 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 132 / 281 * rect.width, y: 63 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 128 / 281 * rect.width, y: 62 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 124 / 281 * rect.width, y: 62 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 120 / 281 * rect.width, y: 60 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 118 / 281 * rect.width, y: 58 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 116 / 281 * rect.width, y: 56 / 175 * rect.height))
            path.addLine(to: CGPoint(x: 120 / 281 * rect.width, y: 55 / 175 * rect.height))
        }
    }
}

struct Bud1: Shape {
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.addArc(center: CGPoint(x: 131 / 281 * rect.width, y: 8 / 175 * rect.height), radius: 2 / 281 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct Bud2: Shape {
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.addArc(center: CGPoint(x: 130 / 281 * rect.width, y: 49 / 175 * rect.height), radius: 2 / 281 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
        }
    }
}


struct Bud3: Shape {
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.addArc(center: CGPoint(x: 136 / 281 * rect.width, y: 59 / 175 * rect.height), radius: 2 / 281 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct Circle1: Shape {
    func path(in rect: CGRect) -> Path {
        
        Path{ path in
            path.addArc(center: CGPoint(x: 78 / 281 * rect.width, y: 54 / 175 * rect.height), radius: 3 / 281 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct Circle2: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.addArc(center: CGPoint(x: 81 / 281 * rect.width, y: 45 / 175 * rect.height), radius: 3 / 281 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct Circle3: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.addArc(center: CGPoint(x: 91 / 281 * rect.width, y: 64 / 175 * rect.height), radius: 3 / 281 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct Circle4: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.addArc(center: CGPoint(x: 116 / 281 * rect.width, y: 30 / 175 * rect.height), radius: 2.5 / 281 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct FlowerView: View{
    
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    let scaleFlower: CGFloat
    
    var body: some View{
        ZStack{
            //製作樹枝
            Group{
                //樹枝１
                Branch1()
                    .fill(Color(red: 94 / 255, green: 77 / 255, blue: 54 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Branch1()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                //樹枝２
                Branch2()
                    .fill(Color(red: 94 / 255, green: 77 / 255, blue: 54 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Branch2()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                //樹枝３
                Branch3()
                    .fill(Color(red: 94 / 255, green: 77 / 255, blue: 54 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Branch3()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                //樹枝４
                Branch4()
                    .fill(Color(red: 94 / 255, green: 77 / 255, blue: 54 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Branch4()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作樹枝上的花苞
            Group{
                //花苞１
                Bud1()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                
                Bud1()
                    .fill(Color(red: 160 / 255, green: 67 / 255, blue: 64 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                //花苞２
                Bud2()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Bud2()
                    .fill(Color(red: 160 / 255, green: 67 / 255, blue: 64 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                //花苞３
                Bud3()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Bud3()
                    .fill(Color(red: 160 / 255, green: 67 / 255, blue: 64 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作中間的花
            Group{
                Flower()
                    .fill(Color(red: 170 / 255, green: 73 / 255, blue: 59 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .rotationEffect(.degrees(60))
                    .position(x: positionX - 57 * scaleFlower, y: positionY + 20 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Flower()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .rotationEffect(.degrees(60))
                    .position(x: positionX - 57 * scaleFlower, y: positionY + 20 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Circle1()
                    .fill(Color(red: 253 / 255, green: 142 / 255, blue: 125 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作中間上面的花
            Group{
                Flower()
                    .fill(Color(red: 170 / 255, green: 73 / 255, blue: 59 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .rotationEffect(.degrees(-30))
                    .position(x: positionX - 4 * scaleFlower, y: positionY - 48 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Flower()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .rotationEffect(.degrees(-30))
                    .position(x: positionX - 4 * scaleFlower, y: positionY - 48 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Circle2()
                    .fill(Color(red: 253 / 255, green: 142 / 255, blue: 125 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作最下面的花
            Group{
                Flower()
                    .fill(Color(red: 170 / 255, green: 73 / 255, blue: 59 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX + 1 * scaleFlower, y: positionY - 3 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Flower()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX + 1 * scaleFlower, y: positionY - 3 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Circle3()
                    .fill(Color(red: 253 / 255, green: 142 / 255, blue: 125 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作最上面的花
            Group{
                Flower()
                    .fill(Color(red: 170 / 255, green: 73 / 255, blue: 59 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 281 * 0.8 * scaleFlower, height: 175 * 0.8 * scaleFlower)
                    .rotationEffect(.degrees(10))
                    .position(x: positionX + 10 * scaleFlower, y: positionY - 35 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Flower()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scaleFlower)
                    .frame(width: 281 * 0.8 *  scaleFlower, height: 175 * 0.8 * scaleFlower)
                    .rotationEffect(.degrees(10))
                    .position(x: positionX + 10 * scaleFlower, y: positionY - 35 * scaleFlower)
                    .rotationEffect(.degrees(rotationDegrees))
                    
                Circle4()
                    .fill(Color(red: 253 / 255, green: 142 / 255, blue: 125 / 255))
                    .frame(width: 281 * scaleFlower, height: 175 * scaleFlower)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
        }
    }
}

struct  hat_Previews: PreviewProvider {
    static var previews: some View {
        HatView(positionX: 150, positionY: 300, rotationDegrees: 0, scale: 1)
    }
}

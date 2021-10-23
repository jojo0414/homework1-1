//
//  Body.swift
//  homework1-1
//
//  Created by jojo on 2021/10/19.
//

import Foundation
import SwiftUI

struct BodyView: View{
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    let scale: CGFloat
    
    var body: some View{
        ZStack{
            //製作雙手
            Group
            {
                Hands()
                    .fill(Color(red: 247 / 255, green: 233 / 255, blue: 212 / 255))
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Hands()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作雙腳
            Group
            {
                Legs()
                    .fill(Color(red: 247 / 255, green: 233 / 255, blue: 212 / 255))
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Legs()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作褲子
            Shorts()
                .frame(width: 148 * scale, height: 363 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //製作上衣
            Group
            {
                //袖口
                Shirts1()
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                //大褂
                Shirts2()
                    .fill(Color(red: 70 / 255, green: 48 / 255, blue: 46 / 255))
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Shirts2()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                //衣領
                Shirts3()
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Shirts4()
                    .fill(Color(red: 62 / 255, green: 20 / 255, blue: 10 / 255))
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Shirts4()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作襪子
            Group
            {
                Socks1()
                    .fill(Color(red: 1, green: 1, blue: 1))
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Socks1()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Socks2()
                    .fill(Color(red: 170 / 255, green: 73 / 255, blue: 59 / 255))
//                    .fill(Color(red: 255 / 255, green: 217 / 255, blue: 230 / 255))
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
                
                Socks2()
                    .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
            
            //製作鞋子
            Group
            {
                Shoose()
                    .frame(width: 148 * scale, height: 363 * scale)
                    .position(x: positionX, y: positionY)
                    .rotationEffect(.degrees(rotationDegrees))
            }
        }
    }
}

struct Shoose: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 75 / 148 * rect.width, y: 321 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 64 / 148 * rect.width, y: 332 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 54 / 148 * rect.width, y: 340 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 49 / 148 * rect.width, y: 343 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 43 / 148 * rect.width, y: 347 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 43 / 148 * rect.width, y: 359 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 44 / 148 * rect.width, y: 362 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 48 / 148 * rect.width, y: 362 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 70 / 148 * rect.width, y: 363 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 78 / 148 * rect.width, y: 358 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 148 * rect.width, y: 360 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 81 / 148 * rect.width, y: 362 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 109 / 148 * rect.width, y: 357 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 110 / 148 * rect.width, y: 349 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 111 / 148 * rect.width, y: 344 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 108 / 148 * rect.width, y: 339 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 108 / 148 * rect.width, y: 336 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 107 / 148 * rect.width, y: 330 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 327 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 90 / 148 * rect.width, y: 332 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 75 / 148 * rect.width, y: 321 / 363 * rect.height))
        }
    }
}

struct Socks2: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 81 / 148 * rect.width, y: 270 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 81 / 148 * rect.width, y: 266 / 363 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 89 / 148 * rect.width, y: 266 / 363 * rect.height), control: CGPoint(x: 85 / 148 * rect.width, y: 259 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 89 / 148 * rect.width, y: 273 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 93 / 148 * rect.width, y: 270 / 363 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 93 / 148 * rect.width, y: 278 / 363 * rect.height), control: CGPoint(x: 104 / 148 * rect.width, y: 274 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 89 / 148 * rect.width, y: 278 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 89 / 148 * rect.width, y: 282 / 363 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 81 / 148 * rect.width, y: 282 / 363 * rect.height), control: CGPoint(x: 85 / 148 * rect.width, y: 289 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 81 / 148 * rect.width, y: 278 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 77 / 148 * rect.width, y: 276 / 363 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 77 / 148 * rect.width, y: 270 / 363 * rect.height), control: CGPoint(x: 69 / 148 * rect.width, y: 274 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 81 / 148 * rect.width, y: 270 / 363 * rect.height))
        }
    }
}

struct Socks1: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 72 / 148 * rect.width, y: 267 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 148 * rect.width, y: 306 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 148 * rect.width, y: 325 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 148 * rect.width, y: 334 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 102 / 148 * rect.width, y: 337 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 329 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 99 / 148 * rect.width, y: 324 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 99 / 148 * rect.width, y: 309 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 304 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 298 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 283 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 272 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 265 / 363 * rect.height))
            
            path.move(to: CGPoint(x: 102 / 148 * rect.width, y: 337 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 105 / 148 * rect.width, y: 324 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 148 * rect.width, y: 314 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 106 / 148 * rect.width, y: 294 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 107 / 148 * rect.width, y: 276 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 108 / 148 * rect.width, y: 268 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 110 / 148 * rect.width, y: 267 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 265 / 363 * rect.height))
        }
    }
}

struct Legs: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 45 / 148 * rect.width, y: 180 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 50 / 148 * rect.width, y: 196 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 57 / 148 * rect.width, y: 219 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 61 / 148 * rect.width, y: 231 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 61 / 148 * rect.width, y: 235 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 62 / 148 * rect.width, y: 241 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 66 / 148 * rect.width, y: 248 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 148 * rect.width, y: 254 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 72 / 148 * rect.width, y: 267 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 148 * rect.width, y: 267 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 148 * rect.width, y: 264 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 264 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 259 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 98 / 148 * rect.width, y: 249 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 148 * rect.width, y: 244 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 148 * rect.width, y: 240 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 92 / 148 * rect.width, y: 233 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 93 / 148 * rect.width, y: 220 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 93 / 148 * rect.width, y: 210 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 148 * rect.width, y: 190 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 148 * rect.width, y: 169 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 45 / 148 * rect.width, y: 180 / 363 * rect.height))
            
            path.move(to: CGPoint(x: 95 / 148 * rect.width, y: 177 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 109 / 148 * rect.width, y: 183 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 209 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 230 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 148 * rect.width, y: 240 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 105 / 148 * rect.width, y: 248 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 110 / 148 * rect.width, y: 258 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 109 / 148 * rect.width, y: 264 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 264 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 259 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 98 / 148 * rect.width, y: 249 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 148 * rect.width, y: 244 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 148 * rect.width, y: 240 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 92 / 148 * rect.width, y: 230 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 93 / 148 * rect.width, y: 220 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 93 / 148 * rect.width, y: 207 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 148 * rect.width, y: 190 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 148 * rect.width, y: 169 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 148 * rect.width, y: 177 / 363 * rect.height))
        }
    }
}

struct Shorts: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 41 / 148 * rect.width, y: 157 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 43 / 148 * rect.width, y: 166 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 44 / 148 * rect.width, y: 180 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 51 / 148 * rect.width, y: 178 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 59 / 148 * rect.width, y: 177 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 71 / 148 * rect.width, y: 179 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 83 / 148 * rect.width, y: 180 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 94 / 148 * rect.width, y: 181 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 102 / 148 * rect.width, y: 180 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 91 / 148 * rect.width, y: 152 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 84 / 148 * rect.width, y: 132 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 70 / 148 * rect.width, y: 127 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 41 / 148 * rect.width, y: 157 / 363 * rect.height))
        }
    }
}

struct Shirts4: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 73 / 148 * rect.width, y: 32 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 79 / 148 * rect.width, y: 29 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 84 / 148 * rect.width, y: 27 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 88 / 148 * rect.width, y: 26 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 94 / 148 * rect.width, y: 24 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 24 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 105 / 148 * rect.width, y: 24 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 106 / 148 * rect.width, y: 29 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 106 / 148 * rect.width, y: 37 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 73 / 148 * rect.width, y: 32 / 363 * rect.height))
        }
    }
}

struct Shirts3: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 71 / 148 * rect.width, y: 34 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 84 / 148 * rect.width, y: 34 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 94 / 148 * rect.width, y: 35 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 110 / 148 * rect.width, y: 38 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 112 / 148 * rect.width, y: 44 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 116 / 148 * rect.width, y: 64 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 112 / 148 * rect.width, y: 61 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 105 / 148 * rect.width, y: 54 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 82 / 148 * rect.width, y: 35 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 71 / 148 * rect.width, y: 34 / 363 * rect.height))
        }
    }
}

struct Shirts2: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 18 / 148 * rect.width, y: 109 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 148 * rect.width, y: 119 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 33 / 148 * rect.width, y: 118 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 148 * rect.width, y: 116 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 43 / 148 * rect.width, y: 111 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 55 / 148 * rect.width, y: 101 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 45 / 148 * rect.width, y: 116 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 47 / 148 * rect.width, y: 125 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 44 / 148 * rect.width, y: 141 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 41 / 148 * rect.width, y: 157 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 50 / 148 * rect.width, y: 149 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 72 / 148 * rect.width, y: 133 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 76 / 148 * rect.width, y: 138 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 86 / 148 * rect.width, y: 147 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 92 / 148 * rect.width, y: 160 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 148 * rect.width, y: 173 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 196 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 106 / 148 * rect.width, y: 231 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 110 / 148 * rect.width, y: 256 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 113 / 148 * rect.width, y: 299 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 129 / 148 * rect.width, y: 294 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 144 / 148 * rect.width, y: 288 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 139 / 148 * rect.width, y: 269 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 130 / 148 * rect.width, y: 214 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 125 / 148 * rect.width, y: 192 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 120 / 148 * rect.width, y: 169 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 112 / 148 * rect.width, y: 148 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 108 / 148 * rect.width, y: 139 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 148 * rect.width, y: 132 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 148 * rect.width, y: 120 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 148 * rect.width, y: 113 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 148 * rect.width, y: 106 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 101 / 148 * rect.width, y: 98 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 105 / 148 * rect.width, y: 92 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 108 / 148 * rect.width, y: 80 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 109 / 148 * rect.width, y: 72 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 111 / 148 * rect.width, y: 60 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 94 / 148 * rect.width, y: 45 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 94 / 148 * rect.width, y: 36 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 75 / 148 * rect.width, y: 31 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 71 / 148 * rect.width, y: 35 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 67 / 148 * rect.width, y: 39 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 63 / 148 * rect.width, y: 44 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 59 / 148 * rect.width, y: 50 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 53 / 148 * rect.width, y: 59 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 49 / 148 * rect.width, y: 60 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 51 / 148 * rect.width, y: 60 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 46 / 148 * rect.width, y: 52 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 40 / 148 * rect.width, y: 41 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 18 / 148 * rect.width, y: 109 / 363 * rect.height))
            
            
            path.move(to: CGPoint(x: 55 / 148 * rect.width, y: 101 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 83 / 148 * rect.width, y: 68 / 363 * rect.height))
            
            path.move(to: CGPoint(x: 72 / 148 * rect.width, y: 133 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 75 / 148 * rect.width, y: 93 / 363 * rect.height))
            
        }
    }
}

struct Shirts1: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 40 / 148 * rect.width, y: 41 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 148 * rect.width, y: 43 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 27 / 148 * rect.width, y: 44 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 148 * rect.width, y: 48 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 20 / 148 * rect.width, y: 52 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 16 / 148 * rect.width, y: 61 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 12 / 148 * rect.width, y: 67 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 8 / 148 * rect.width, y: 76 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 4 / 148 * rect.width, y: 88 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 0 / 148 * rect.width, y: 103 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 4 / 148 * rect.width, y: 107 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 8 / 148 * rect.width, y: 108 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 15 / 148 * rect.width, y: 113 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 17 / 148 * rect.width, y: 112 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 20 / 148 * rect.width, y: 106 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 23 / 148 * rect.width, y: 99 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 27 / 148 * rect.width, y: 110 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 148 * rect.width, y: 82 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 34 / 148 * rect.width, y: 76 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 45 / 148 * rect.width, y: 67 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 51 / 148 * rect.width, y: 60 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 46 / 148 * rect.width, y: 52 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 40 / 148 * rect.width, y: 41 / 363 * rect.height))
        }
    }
}

struct Hands: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 17 / 148 * rect.width, y: 63 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 16 / 148 * rect.width, y: 50 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 15 / 148 * rect.width, y: 47 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 13 / 148 * rect.width, y: 42 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 12 / 148 * rect.width, y: 40 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 10 / 148 * rect.width, y: 38 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 9 / 148 * rect.width, y: 34 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 8 / 148 * rect.width, y: 25 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 8 / 148 * rect.width, y: 19 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 10 / 148 * rect.width, y: 15 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 12 / 148 * rect.width, y: 8 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 12 / 148 * rect.width, y: 7 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 16 / 148 * rect.width, y: 4 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 19 / 148 * rect.width, y: 1 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 23 / 148 * rect.width, y: 1 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 26 / 148 * rect.width, y: 0 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 148 * rect.width, y: 1 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 148 * rect.width, y: 1 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 32 / 148 * rect.width, y: 10 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 32 / 148 * rect.width, y: 16 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 33 / 148 * rect.width, y: 24 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 148 * rect.width, y: 32 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 31 / 148 * rect.width, y: 57 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 17 / 148 * rect.width, y: 63 / 363 * rect.height))
            
            path.move(to: CGPoint(x: 32 / 148 * rect.width, y: 11 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 148 * rect.width, y: 13 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 148 * rect.width, y: 19 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 148 * rect.width, y: 30 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 37 / 148 * rect.width, y: 36 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 37 / 148 * rect.width, y: 40 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 17 / 148 * rect.width, y: 63 / 363 * rect.height))
            
            path.move(to: CGPoint(x: 16 / 148 * rect.width, y: 5 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 17 / 148 * rect.width, y: 7 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 16 / 148 * rect.width, y: 15 / 363 * rect.height))
            
            path.move(to: CGPoint(x: 24 / 148 * rect.width, y: 2 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 148 * rect.width, y: 6 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 22 / 148 * rect.width, y: 13 / 363 * rect.height))
            
            path.move(to: CGPoint(x: 27 / 148 * rect.width, y: 1 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 148 * rect.width, y: 4 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 148 * rect.width, y: 12 / 363 * rect.height))
            path.addLine(to: CGPoint(x: 27 / 148 * rect.width, y: 20 / 363 * rect.height))
        }
    }
}

struct Body_Previews: PreviewProvider {
    static var previews: some View {
        BodyView(positionX: 100, positionY: 300, rotationDegrees: 0, scale: 1)
    }
}

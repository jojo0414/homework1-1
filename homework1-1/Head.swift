//
//  Head.swift
//  homework1-1
//
//  Created by jojo on 2021/10/16.
//

import Foundation
import SwiftUI

struct HeadView: View{
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    let scale: CGFloat
    
    var body: some View{
        ZStack{
            //製作臉的輪廓
            Face1()
                .fill(Color(red: 247 / 255, green: 233 / 255, blue: 212 / 255))
                .frame(width: 194 * scale, height: 316 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            Face1()
                .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                .frame(width: 194 * scale, height: 316 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //製作眼睛
            Eye()
                .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale * 2)
                .frame(width: 194 * scale, height: 316 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //製作嘴巴
            Mouth()
                .fill(Color(red: 187 / 255, green: 153 / 255, blue: 142 / 255))
                .frame(width: 194 * scale, height: 316 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            Mouth()
                .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                .frame(width: 194 * scale, height: 316 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //製作頭髮輪廓
            Hair1()
                .fill(Color(red: 57 / 255, green: 32 / 255, blue: 27 / 255))
                .frame(width: 194 * scale, height: 316 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            Hair1()
                .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                .frame(width: 194 * scale, height: 316 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //製作頭髮陰影（有時間再做）
            
            
        }
    }
}

struct Mouth: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 20 / 194 * rect.width, y: 64 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 20 / 194 * rect.width, y: 64 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 23 / 194 * rect.width, y: 63 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 194 * rect.width, y: 64 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 194 * rect.width, y: 69 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 194 * rect.width, y: 69 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 194 * rect.width, y: 70 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 22 / 194 * rect.width, y: 69 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 20 / 194 * rect.width, y: 67 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 20 / 194 * rect.width, y: 64 / 316 * rect.height))
        }
    }
}

struct Eye: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 20 / 194 * rect.width, y: 44 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 20 / 194 * rect.width, y: 44 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 194 * rect.width, y: 44 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 27 / 194 * rect.width, y: 44 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 31 / 194 * rect.width, y: 43 / 316 * rect.height))
        }
    }
}
    
struct Face1: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 14 / 194 * rect.width, y: 43 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 3 / 194 * rect.width, y: 50 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 6 / 194 * rect.width, y: 56 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 9 / 194 * rect.width, y: 61 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 12 / 194 * rect.width, y: 64 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 18 / 194 * rect.width, y: 71 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 194 * rect.width, y: 77 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 28 / 194 * rect.width, y: 81 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 33 / 194 * rect.width, y: 82 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 194 * rect.width, y: 82 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 40 / 194 * rect.width, y: 81 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 44 / 194 * rect.width, y: 80 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 49 / 194 * rect.width, y: 77 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 51 / 194 * rect.width, y: 83 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 54 / 194 * rect.width, y: 81 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 63 / 194 * rect.width, y: 78 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 194 * rect.width, y: 77 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 72 / 194 * rect.width, y: 77 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 194 * rect.width, y: 77 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 194 * rect.width, y: 74 / 316 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 14 / 194 * rect.width, y: 43 / 316 * rect.height), control: CGPoint(x: 22 / 194 * rect.width, y: -43 / 316 * rect.height))
        }
    }
}

struct Hair1: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            path.move(to: CGPoint(x: 0 / 194 * rect.width, y: 0 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 0 / 194 * rect.width, y: 0 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 1 / 194 * rect.width, y: 8 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 6 / 194 * rect.width, y: 29 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 10 / 194 * rect.width, y: 39 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 18 / 194 * rect.width, y: 51 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 18 / 194 * rect.width, y: 43 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 18 / 194 * rect.width, y: 38 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 18 / 194 * rect.width, y: 30 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 19 / 194 * rect.width, y: 26 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 22 / 194 * rect.width, y: 18 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 22 / 194 * rect.width, y: 11 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 23 / 194 * rect.width, y: 17 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 25 / 194 * rect.width, y: 21 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 26 / 194 * rect.width, y: 27 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 29 / 194 * rect.width, y: 32 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 194 * rect.width, y: 35 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 194 * rect.width, y: 28 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 30 / 194 * rect.width, y: 21 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 34 / 194 * rect.width, y: 29 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 38 / 194 * rect.width, y: 36 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 41 / 194 * rect.width, y: 40 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 42 / 194 * rect.width, y: 52 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 41 / 194 * rect.width, y: 48 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 194 * rect.width, y: 61 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 42 / 194 * rect.width, y: 60 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 42 / 194 * rect.width, y: 62 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 38 / 194 * rect.width, y: 69 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 42 / 194 * rect.width, y: 70 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 48 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 54 / 194 * rect.width, y: 65 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 60 / 194 * rect.width, y: 58 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 65 / 194 * rect.width, y: 52 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 71 / 194 * rect.width, y: 59 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 74 / 194 * rect.width, y: 60 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 82 / 194 * rect.width, y: 64 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 88 / 194 * rect.width, y: 65 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 103 / 194 * rect.width, y: 67 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 194 * rect.width, y: 57 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 92 / 194 * rect.width, y: 52 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 89 / 194 * rect.width, y: 47 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 85 / 194 * rect.width, y: 39 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 83 / 194 * rect.width, y: 35 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 82 / 194 * rect.width, y: 26 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 80 / 194 * rect.width, y: 16 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 81 / 194 * rect.width, y: 12 / 316 * rect.height))
            
            path.move(to: CGPoint(x: 71 / 194 * rect.width, y: 59 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 71 / 194 * rect.width, y: 59 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 67 / 194 * rect.width, y: 62 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 61 / 194 * rect.width, y: 64 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 66 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 70 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 72 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 73 / 194 * rect.width, y: 73 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 76 / 194 * rect.width, y: 73 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 79 / 194 * rect.width, y: 74 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 84 / 194 * rect.width, y: 71 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 86 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 90 / 194 * rect.width, y: 65 / 316 * rect.height))
            
            path.move(to: CGPoint(x: 94 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 94 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 194 * rect.width, y: 77 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 194 * rect.width, y: 80 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 194 * rect.width, y: 84 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 194 * rect.width, y: 90 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 194 * rect.width, y: 105 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 194 * rect.width, y: 121 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 194 * rect.width, y: 138 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 97 / 194 * rect.width, y: 155 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 98 / 194 * rect.width, y: 160 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 194 * rect.width, y: 171 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 108 / 194 * rect.width, y: 186 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 114 / 194 * rect.width, y: 194 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 122 / 194 * rect.width, y: 201 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 127 / 194 * rect.width, y: 208 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 132 / 194 * rect.width, y: 217 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 136 / 194 * rect.width, y: 228 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 138 / 194 * rect.width, y: 240 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 139 / 194 * rect.width, y: 257 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 139 / 194 * rect.width, y: 264 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 138 / 194 * rect.width, y: 276 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 137 / 194 * rect.width, y: 279 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 141 / 194 * rect.width, y: 276 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 143 / 194 * rect.width, y: 272 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 145 / 194 * rect.width, y: 266 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 147 / 194 * rect.width, y: 257 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 147 / 194 * rect.width, y: 252 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 150 / 194 * rect.width, y: 258 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 152 / 194 * rect.width, y: 268 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 150 / 194 * rect.width, y: 275 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 149 / 194 * rect.width, y: 278 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 144 / 194 * rect.width, y: 287 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 139 / 194 * rect.width, y: 293 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 135 / 194 * rect.width, y: 295 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 127 / 194 * rect.width, y: 299 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 135 / 194 * rect.width, y: 299 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 142 / 194 * rect.width, y: 299 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 137 / 194 * rect.width, y: 302 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 134 / 194 * rect.width, y: 302 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 127 / 194 * rect.width, y: 302 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 125 / 194 * rect.width, y: 301 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 119 / 194 * rect.width, y: 298 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 123 / 194 * rect.width, y: 304 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 126 / 194 * rect.width, y: 307 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 132 / 194 * rect.width, y: 310 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 142 / 194 * rect.width, y: 310 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 146 / 194 * rect.width, y: 310 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 150 / 194 * rect.width, y: 308 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 158 / 194 * rect.width, y: 304 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 156 / 194 * rect.width, y: 308 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 151 / 194 * rect.width, y: 316 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 162 / 194 * rect.width, y: 312 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 170 / 194 * rect.width, y: 306 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 175 / 194 * rect.width, y: 297 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 180 / 194 * rect.width, y: 288 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 183 / 194 * rect.width, y: 279 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 185 / 194 * rect.width, y: 272 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 188 / 194 * rect.width, y: 260 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 190 / 194 * rect.width, y: 269 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 190 / 194 * rect.width, y: 278 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 192 / 194 * rect.width, y: 268 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 194 / 194 * rect.width, y: 263 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 194 / 194 * rect.width, y: 256 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 194 / 194 * rect.width, y: 247 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 191 / 194 * rect.width, y: 237 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 187 / 194 * rect.width, y: 226 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 182 / 194 * rect.width, y: 215 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 178 / 194 * rect.width, y: 207 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 170 / 194 * rect.width, y: 198 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 163 / 194 * rect.width, y: 190 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 158 / 194 * rect.width, y: 184 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 148 / 194 * rect.width, y: 171 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 142 / 194 * rect.width, y: 162 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 138 / 194 * rect.width, y: 149 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 135 / 194 * rect.width, y: 137 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 134 / 194 * rect.width, y: 124 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 132 / 194 * rect.width, y: 104 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 130 / 194 * rect.width, y: 84 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 130 / 194 * rect.width, y: 68 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 127 / 194 * rect.width, y: 54 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 126 / 194 * rect.width, y: 40 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 121 / 194 * rect.width, y: 27 / 316 * rect.height))
            path.addLine(to: CGPoint(x: 118 / 194 * rect.width, y: 20 / 316 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 0 / 194 * rect.width, y: 0 / 316 * rect.height), control: CGPoint(x: 79 / 194 * rect.width, y: -43 / 316 * rect.height))
        }
    }
}

struct Head_Previews: PreviewProvider {
    static var previews: some View {
        HeadView(positionX: 200, positionY: 400, rotationDegrees: 0, scale: 1)
    }
}

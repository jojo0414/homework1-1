//
//  Tomb.swift
//  homework1-1
//
//  Created by jojo on 2021/10/19.
//

import Foundation
import SwiftUI

struct TombView: View {
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    let scale: CGFloat
    
    var body: some View{
        ZStack{
            //製作墓碑的石頭
            Rock1()
                .fill(Color(red: 173 / 255, green: 167 / 255, blue: 167 / 255))
                .frame(width: 296 * scale, height: 292 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            Rock2()
                .fill(Color(red: 108 / 255, green: 107 / 255, blue: 105 / 255))
                .frame(width: 296 * scale, height: 292 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            Rock3()
                .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale)
                .frame(width: 296 * scale, height: 292 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //製作下面的土
            Soil()
                .fill(Color(red: 70 / 255, green: 58 / 255, blue: 46 / 255))
                .frame(width: 296 * scale, height: 292 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //製作照片
            Photo1()
                .fill(Color(red: 1, green: 1, blue: 1))
                .frame(width: 296 * scale, height: 292 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            //遺照的位置
            Object1()
                .fill(Color(red: 252 / 255, green: 224 / 255, blue: 203 / 255))
                .frame(width: 296 * scale, height: 292 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
            
            Photo1()
                .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: scale * 8)
                .frame(width: 296 * scale, height: 292 * scale)
                .position(x: positionX, y: positionY)
                .rotationEffect(.degrees(rotationDegrees))
        }
    }
}

struct Object1: Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.addArc(center: CGPoint(x: 135 / 296 * rect.width, y: 86 / 292 * rect.height), radius: 20 / 296 * rect.width, startAngle: .zero, endAngle: .degrees(360), clockwise: false)
            path.move(to: CGPoint(x: 100 / 296 * rect.width, y: 132 / 292 * rect.height))
            path.addQuadCurve(to: CGPoint(x: 185 / 296 * rect.width, y: 125 / 292 * rect.height), control: CGPoint(x: 135 / 296 * rect.width, y: 70 / 292 * rect.height))
        }
    }
}

struct Photo1: Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.move(to: CGPoint(x: 90 / 296 * rect.width, y: 45 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 90 / 296 * rect.width, y: 42 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 100 / 296 * rect.width, y: 132 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 185 / 296 * rect.width, y: 125 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 175 / 296 * rect.width, y: 38 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 90 / 296 * rect.width, y: 45 / 292 * rect.height))
            
            path.move(to: CGPoint(x: 132.5 / 296 * rect.width, y: 41.5 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 95 / 296 * rect.width, y: 88.5 / 292 * rect.height))
            
            path.move(to: CGPoint(x: 132.5 / 296 * rect.width, y: 41.5 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 180 / 296 * rect.width, y: 81.5 / 292 * rect.height))
        }
    }
}

struct Soil: Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.move(to: CGPoint(x: 0 / 296 * rect.width, y: 262 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 1 / 296 * rect.width, y: 258 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 5 / 296 * rect.width, y: 259 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 7 / 296 * rect.width, y: 260 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 12 / 296 * rect.width, y: 256 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 15 / 296 * rect.width, y: 255 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 17 / 296 * rect.width, y: 253 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 20 / 296 * rect.width, y: 251 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 296 * rect.width, y: 248 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 31 / 296 * rect.width, y: 246 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 29 / 296 * rect.width, y: 241 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 34 / 296 * rect.width, y: 240 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 296 * rect.width, y: 240 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 36 / 296 * rect.width, y: 237 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 40 / 296 * rect.width, y: 233 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 44 / 296 * rect.width, y: 232 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 48 / 296 * rect.width, y: 230 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 51 / 296 * rect.width, y: 226 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 57 / 296 * rect.width, y: 227 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 61 / 296 * rect.width, y: 220 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 64 / 296 * rect.width, y: 215 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 69 / 296 * rect.width, y: 212 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 75 / 296 * rect.width, y: 210 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 75 / 296 * rect.width, y: 211 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 81 / 296 * rect.width, y: 207 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 84 / 296 * rect.width, y: 205 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 88 / 296 * rect.width, y: 208 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 93 / 296 * rect.width, y: 204 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 296 * rect.width, y: 202 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 102 / 296 * rect.width, y: 198 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 108 / 296 * rect.width, y: 199 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 116 / 296 * rect.width, y: 200 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 120 / 296 * rect.width, y: 200 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 140 / 296 * rect.width, y: 198 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 151 / 296 * rect.width, y: 202 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 160 / 296 * rect.width, y: 199 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 168 / 296 * rect.width, y: 203 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 175 / 296 * rect.width, y: 202 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 182 / 296 * rect.width, y: 201 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 190 / 296 * rect.width, y: 201 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 198 / 296 * rect.width, y: 196 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 201 / 296 * rect.width, y: 202 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 211 / 296 * rect.width, y: 204 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 219 / 296 * rect.width, y: 209 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 230 / 296 * rect.width, y: 214 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 240 / 296 * rect.width, y: 223 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 244 / 296 * rect.width, y: 226 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 256 / 296 * rect.width, y: 229 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 261 / 296 * rect.width, y: 236 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 269 / 296 * rect.width, y: 243 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 277 / 296 * rect.width, y: 247 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 285 / 296 * rect.width, y: 255 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 296 / 296 * rect.width, y: 262 / 292 * rect.height))
            
            path.addLine(to: CGPoint(x: 292 / 296 * rect.width, y: 268 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 274 / 296 * rect.width, y: 273 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 270 / 296 * rect.width, y: 278 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 266 / 296 * rect.width, y: 277 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 249 / 296 * rect.width, y: 279 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 245 / 296 * rect.width, y: 284 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 239 / 296 * rect.width, y: 280 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 229 / 296 * rect.width, y: 284 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 222 / 296 * rect.width, y: 287 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 216 / 296 * rect.width, y: 287 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 204 / 296 * rect.width, y: 286 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 198 / 296 * rect.width, y: 290 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 191 / 296 * rect.width, y: 286 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 181 / 296 * rect.width, y: 291 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 166 / 296 * rect.width, y: 289 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 155 / 296 * rect.width, y: 292 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 148 / 296 * rect.width, y: 291 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 140 / 296 * rect.width, y: 290 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 129 / 296 * rect.width, y: 286 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 114 / 296 * rect.width, y: 288 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 296 * rect.width, y: 286 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 96 / 296 * rect.width, y: 288 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 83 / 296 * rect.width, y: 285 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 75 / 296 * rect.width, y: 288 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 66 / 296 * rect.width, y: 284 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 53 / 296 * rect.width, y: 282 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 42 / 296 * rect.width, y: 277 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 24 / 296 * rect.width, y: 272 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 16 / 296 * rect.width, y: 274 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 9 / 296 * rect.width, y: 266 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 0 / 296 * rect.width, y: 266 / 292 * rect.height))
        }
    }
}

struct Rock3: Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.move(to: CGPoint(x: 67 / 296 * rect.width, y: 219 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 296 * rect.width, y: 211 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 60 / 296 * rect.width, y: 124 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 56 / 296 * rect.width, y: 92 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 56 / 296 * rect.width, y: 78 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 58 / 296 * rect.width, y: 66 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 60 / 296 * rect.width, y: 56 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 62 / 296 * rect.width, y: 48 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 296 * rect.width, y: 34 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 70 / 296 * rect.width, y: 31 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 84 / 296 * rect.width, y: 14 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 91 / 296 * rect.width, y: 9 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 296 * rect.width, y: 4 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 115 / 296 * rect.width, y: 1 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 125 / 296 * rect.width, y: 0 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 141 / 296 * rect.width, y: 1 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 151 / 296 * rect.width, y: 4 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 164 / 296 * rect.width, y: 11 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 175 / 296 * rect.width, y: 19 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 187 / 296 * rect.width, y: 32 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 192 / 296 * rect.width, y: 42 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 195 / 296 * rect.width, y: 51 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 197 / 296 * rect.width, y: 64 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 210 / 296 * rect.width, y: 203 / 292 * rect.height))
        }
    }
}

struct Rock2: Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.move(to: CGPoint(x: 85 / 296 * rect.width, y: 207 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 85 / 296 * rect.width, y: 207 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 69 / 296 * rect.width, y: 68 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 296 * rect.width, y: 58 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 70 / 296 * rect.width, y: 44 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 74 / 296 * rect.width, y: 34 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 77 / 296 * rect.width, y: 25 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 296 * rect.width, y: 34 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 62 / 296 * rect.width, y: 48 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 60 / 296 * rect.width, y: 56 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 58 / 296 * rect.width, y: 66 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 56 / 296 * rect.width, y: 78 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 56 / 296 * rect.width, y: 92 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 60 / 296 * rect.width, y: 124 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 67 / 296 * rect.width, y: 219 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 85 / 296 * rect.width, y: 207 / 292 * rect.height))
        }
    }
}

struct Rock1: Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.move(to: CGPoint(x: 85 / 296 * rect.width, y: 207 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 85 / 296 * rect.width, y: 207 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 69 / 296 * rect.width, y: 68 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 68 / 296 * rect.width, y: 58 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 70 / 296 * rect.width, y: 44 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 74 / 296 * rect.width, y: 34 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 77 / 296 * rect.width, y: 25 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 84 / 296 * rect.width, y: 14 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 91 / 296 * rect.width, y: 9 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 104 / 296 * rect.width, y: 4 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 115 / 296 * rect.width, y: 1 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 125 / 296 * rect.width, y: 0 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 141 / 296 * rect.width, y: 1 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 151 / 296 * rect.width, y: 4 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 164 / 296 * rect.width, y: 11 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 175 / 296 * rect.width, y: 19 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 187 / 296 * rect.width, y: 32 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 192 / 296 * rect.width, y: 42 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 195 / 296 * rect.width, y: 51 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 197 / 296 * rect.width, y: 64 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 210 / 296 * rect.width, y: 203 / 292 * rect.height))
            path.addLine(to: CGPoint(x: 85 / 296 * rect.width, y: 207 / 292 * rect.height))
        }
    }
}

struct Tomb_Previews: PreviewProvider {
    static var previews: some View {
        TombView(positionX: 180, positionY: 300, rotationDegrees: 0, scale: 2)
    }
}

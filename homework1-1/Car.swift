//
//  Car.swift
//  homework1-1
//
//  Created by jojo on 2021/10/20.
//

import Foundation
import SwiftUI

struct Car: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in//身體線
            path.move(to: CGPoint(x: 253, y: 444))
            path.addQuadCurve(to:CGPoint(x: 230, y: 436),control: CGPoint(x:230,y:430))//頭
            path.addQuadCurve(to:CGPoint(x: 186, y: 375),control: CGPoint(x:200,y:400))//頭
            path.addQuadCurve(to:CGPoint(x: 215, y: 210),control: CGPoint(x:150,y:300))//頭
            path.addQuadCurve(to:CGPoint(x: 428, y: 198),control: CGPoint(x:300,y:150))//頭
            
            path.addQuadCurve(to:CGPoint(x: 504, y: 353),control: CGPoint(x:500,y:300))//左臉
            path.addQuadCurve(to:CGPoint(x: 493, y: 384),control: CGPoint(x:500,y:380))//左臉
            path.addQuadCurve(to:CGPoint(x: 447, y: 413),control: CGPoint(x:470,y:420))//臉頰
            path.addQuadCurve(to:CGPoint(x: 406, y: 383),control: CGPoint(x:440,y:420))//臉頰
            path.addQuadCurve(to:CGPoint(x: 328, y: 422),control: CGPoint(x:400,y:410))//臉頰
            path.addQuadCurve(to:CGPoint(x: 274, y: 404),control: CGPoint(x:330,y:430))//臉頰
        }
    }
}
struct LeftEyes:Shape{
    func path(in rect: CGRect) -> Path {
        
        Path { path in//左眼睛
            path.move(to: CGPoint(x: 416, y: 248))
            path.addQuadCurve(to:CGPoint(x: 446, y: 258),control: CGPoint(x:430,y:240))
            path.addQuadCurve(to:CGPoint(x: 439, y: 286),control: CGPoint(x:452,y:275))
            path.addQuadCurve(to:CGPoint(x: 421, y: 273),control: CGPoint(x:416,y:278))
            path.addQuadCurve(to:CGPoint(x: 416, y: 248),control: CGPoint(x:415,y:270))
            path.closeSubpath()
            
        }
    }
}
struct RightEyes:Shape{
    func path(in rect: CGRect) -> Path {
        Path { path in//右眼睛
            path.addArc(center: CGPoint(x: 357, y: 277), radius: 18,
                        startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true)
            
        }
    }
}
struct Nose: Shape{
    func path(in rect: CGRect) -> Path {
        Path { path in//鼻子
            path.move(to: CGPoint(x: 406, y: 388))
            path.addQuadCurve(to:CGPoint(x: 412, y: 356),control: CGPoint(x:410,y:350))
            path.addQuadCurve(to:CGPoint(x: 382, y: 334),control: CGPoint(x:380,y:330))
            
            path.move(to: CGPoint(x: 412, y: 356))
            path.addQuadCurve(to:CGPoint(x: 440, y: 335),control: CGPoint(x:450,y:325))
        }
    }
}

struct Mouth1: Shape{
    func path(in rect: CGRect) -> Path {
        Path { path in//鼻子
            path.move(to: CGPoint(x: 372, y: 413))
            path.addQuadCurve(to:CGPoint(x: 396, y: 443),control: CGPoint(x:380,y:440))
            path.addQuadCurve(to:CGPoint(x: 422, y: 401),control: CGPoint(x:432,y:435))
            path.addQuadCurve(to:CGPoint(x: 406, y: 388),control: CGPoint(x:432,y:410))
        }
        
    }
}

struct Tire: Shape {
    func path(in rect: CGRect) -> Path {
        Path{path in
            //左輪子
            path.move(to: CGPoint(x: 493, y:384))
            path.addQuadCurve(to:CGPoint(x: 488, y: 452),control: CGPoint(x:510,y:410))//左腳
            path.addQuadCurve(to:CGPoint(x: 461, y: 469),control: CGPoint(x:485,y:465))//左腳
            path.addQuadCurve(to:CGPoint(x: 449, y: 421),control: CGPoint(x:440,y:455))//左腳
            //右前輪
            path.move(to: CGPoint(x: 332, y:431))
            path.addQuadCurve(to:CGPoint(x: 319, y: 480),control: CGPoint(x:360,y:455))//左腳
            path.addQuadCurve(to:CGPoint(x: 250, y: 440),control: CGPoint(x:260,y:470))//左腳
            path.addQuadCurve(to:CGPoint(x: 276, y: 404),control: CGPoint(x:250,y:400))//左腳
            
            //右後輪
            path.move(to: CGPoint(x: 230, y:433))
            path.addQuadCurve(to:CGPoint(x: 210, y: 465),control: CGPoint(x:250,y:450))//左腳
            path.addQuadCurve(to:CGPoint(x: 162, y: 405),control: CGPoint(x:150,y:450))//左腳
            path.addQuadCurve(to:CGPoint(x: 188, y: 377),control: CGPoint(x:160,y:400))//左腳
            
        }
    }
}
struct Windows:Shape{
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            //右窗
            path.move(to: CGPoint(x: 198, y:243))
            path.addQuadCurve(to:CGPoint(x: 228, y: 228),control: CGPoint(x:215,y:230))
            path.addQuadCurve(to:CGPoint(x: 249, y: 278),control: CGPoint(x:215,y:250))
            path.addQuadCurve(to:CGPoint(x: 180, y: 300),control: CGPoint(x:180,y:310))
            path.addQuadCurve(to:CGPoint(x: 198, y: 233),control: CGPoint(x:200,y:230))
            //左窗
            path.move(to: CGPoint(x: 261, y:223))
            path.addQuadCurve(to:CGPoint(x: 401, y: 190),control: CGPoint(x:245,y:190))
            path.addQuadCurve(to:CGPoint(x: 434, y: 227),control: CGPoint(x:470,y:240))
            path.addQuadCurve(to:CGPoint(x: 275, y: 265),control: CGPoint(x:290,y:235))
            path.closeSubpath()
        }
        
    }
}
struct Ears:Shape{
    func path(in rect: CGRect) -> Path {
        Path { path in
            //右耳
            path.move(to: CGPoint(x: 228, y:228))
            path.addQuadCurve(to:CGPoint(x: 242, y: 215),control: CGPoint(x:230,y:220))
            path.addQuadCurve(to:CGPoint(x: 268, y: 249),control: CGPoint(x:260,y:230))
            path.addQuadCurve(to:CGPoint(x: 250, y: 285),control: CGPoint(x:270,y:280))
            //左耳
            
            path.move(to: CGPoint(x: 428, y:198))
            path.addQuadCurve(to:CGPoint(x: 448, y: 166),control: CGPoint(x:450,y:160))
            path.addQuadCurve(to:CGPoint(x: 463, y: 190),control: CGPoint(x:470,y:150))
            path.addQuadCurve(to:CGPoint(x: 447, y: 227),control: CGPoint(x:470,y:170))
        }
    }
}
struct BiiView:View{
    var offsetX : CGFloat = -340
    var offsetY : CGFloat  = -60
    var scale : CGFloat = 0.7
    
    var body: some View{
        
        
        Car()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 1, green: 0.92, blue: 0.8))
        Car()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .stroke(lineWidth: 2)
        LeftEyes()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(.black))
        RightEyes()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(.black))
        Nose()
            .stroke(lineWidth: 2)
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
        Mouth()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 1, green: 0.7, blue: 0.7))
        Tire()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 0.1, green: 0.55, blue: 0.01))
        Windows()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 0.79, green: 0.65, blue: 0.65))
        Ears()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .stroke(lineWidth: 2)
        Ears()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 1, green: 0.92, blue: 0.8))
        
    }
}
struct ChocolateView:View{
    
    var offsetX : CGFloat = -180
    var offsetY : CGFloat  = -60
    var scale : CGFloat = 0.7
    
    var body: some View{
        Car()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 139/255, green: 69/255, blue: 19/255))
        Car()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .stroke(lineWidth: 2)
        LeftEyes()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(.black))
        RightEyes()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(.black))
        Nose()
            .stroke(lineWidth: 2)
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
        Mouth()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 1, green: 0.7, blue: 0.7))
        Tire()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 1, green: 0.38, blue: 0.27))
        Windows()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .fill(Color(red: 204/255, green: 85/255, blue: 0/255))
        Ears()
            .scale(scale)
            .offset(x: offsetX, y: offsetY)
            .stroke(lineWidth: 2)
        Ears()
            .scale(scale)
            .offset(x: offsetX, y: offsetY).fill(Color(red: 139/255, green: 69/255, blue: 19/255))
    }
}
struct CarView: View {
    var body: some View {
        ZStack{
            HStack{
                ZStack{
                    //BiiView()
                    ChocolateView()
                }
                ZStack{
                    BiiView()
                    //ChocolateView()
                }
            }
        }
    }
}


struct Car_Previews: PreviewProvider {
    static var previews: some View {
        CarView()
    }
}

struct Car_LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(CarView(), title: "天竺鼠車車")
    }
}

//
//  HuTao.swift
//  homework1-1
//
//  Created by jojo on 2021/10/18.
//

import Foundation
import SwiftUI

struct HuTao: View {
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    let scale: CGFloat
    
    var body: some View{
        ZStack{
            HeadView(positionX: positionX - 10 * scale, positionY: positionY + 150 * scale, rotationDegrees: rotationDegrees, scale: scale)
            HatView(positionX: positionX, positionY: positionY, rotationDegrees: rotationDegrees, scale: scale)
            BodyView(positionX: positionX - 55 * scale, positionY: positionY + 225 * scale, rotationDegrees: rotationDegrees, scale: scale)
        }
    }
}

struct HuTao_Previews: PreviewProvider {
    static var previews: some View {
        HuTao(positionX: 200, positionY: 250, rotationDegrees: 0, scale: 1)
    }
}

struct HuTao_LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(HuTao(scale: 1), title: "胡桃")
    }
}

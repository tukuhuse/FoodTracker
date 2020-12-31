//
//  CircleImage.swift
//  FoodTracker
//
//  Created by 高橋優人 on 2021/01/01.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("IMG_0060")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 10))
            .shadow(radius: 20)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

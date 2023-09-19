//
//  CircleImage.swift
//  Landmarks
//
//  Created by Herman Orlando Morales Lòpez on 18/9/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtle")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

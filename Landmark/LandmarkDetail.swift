//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Mike Liao on 2019/10/12.
//  Copyright © 2019 Mike Liao. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}

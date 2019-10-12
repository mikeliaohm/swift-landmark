//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Mike Liao on 2019/10/12.
//  Copyright © 2019 Mike Liao. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[1])
    }
}

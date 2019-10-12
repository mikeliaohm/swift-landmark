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
        Text("Hello Row!")
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}

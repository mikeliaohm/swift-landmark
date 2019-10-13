//
//  LandmarkList.swift
//  Landmark
//
//  Created by Mike Liao on 2019/10/13.
//  Copyright © 2019 Mike Liao. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        List {
            Toggle(isOn: $userData.showFavoriteOnly) {
                Text("Favorites only")
            }
            
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoriteOnly || landmark.isFavorite {
                    
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            NavigationView {
                LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .environmentObject(UserData())
            }
            // make sure environment object is added to preview as well
        }
    }
}

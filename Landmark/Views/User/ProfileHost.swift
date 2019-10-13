//
//  ProfileHost.swift
//  Landmark
//
//  Created by Mike Liao on 2019/10/13.
//  Copyright © 2019 Mike Liao. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State var draftProfit = Profile.default
    
    var body: some View {
        VStack {
            ProfileSummary(profile: draftProfit)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}

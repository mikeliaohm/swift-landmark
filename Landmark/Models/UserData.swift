//
//  UserData.swift
//  Landmark
//
//  Created by Mike Liao on 2019/10/13.
//  Copyright © 2019 Mike Liao. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}

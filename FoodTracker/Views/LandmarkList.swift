//
//  LandmarkList.swift
//  FoodTracker
//
//  Created by 高橋優人 on 2021/01/01.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        /*
        ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro (12.9-inch) (2nd generation)"], id: \.self) { deviceName in
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        */
    }
}

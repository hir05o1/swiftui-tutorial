//
//  LandmarkList.swift
//  creating-conbining-view
//
//  Created by hiro on 2025/06/15.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = true
    
    var filteredLandmarks: [Landmark]{
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}

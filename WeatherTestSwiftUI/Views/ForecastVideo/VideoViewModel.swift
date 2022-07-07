//
//  VideoViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation

extension VideoView {
    class ViewModel: ObservableObject {
        
        @Published var videoID: String?
        
        init() {
            getVideoID()
        }
        
        func getVideoID() {
            // do some networking
            videoID = "7I_IH2TehJA"
            
//            ForecastController().getYoutubeVideoID { videoID in
//                self.videoID = videoID
//            }
        }
        
    }
}

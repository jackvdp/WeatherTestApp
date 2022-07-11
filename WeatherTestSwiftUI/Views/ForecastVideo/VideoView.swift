//
//  VideoView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI
import AVKit
import WebKit

struct VideoView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 50) {
            Text("Latest Forecast Video")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            if let id = viewModel.videoID {
                YouTubeView(id: id)
                    .aspectRatio(16/9, contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .accessibilityIdentifier("Video")
            } else {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .aspectRatio(16/9, contentMode: .fit)
                        .foregroundColor(.primary.opacity(0.5))
                    ProgressView()
                        .progressViewStyle(.circular)
                }
            }
            Spacer()
        }
    }
    
}

struct VideoView_Previews: PreviewProvider {
    
    static var previews: some View {
        VideoView()
    }
}

struct YouTubeView: UIViewRepresentable {
    
    var id: String
    
    func makeUIView(context: Context) -> WKWebView  {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        let path = "https://www.youtube.com/embed/\(id)"
        guard let url = URL(string: path) else { return }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(.init(url: url))
    }
}

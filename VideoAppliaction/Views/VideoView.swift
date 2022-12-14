//
//  VideoView.swift
//  VideoAppliaction
//
//  Created by Apple on 09/12/2022.
//
import SwiftUI
import AVKit

struct VideoView: View {
    var video: Video
    @State private var player = AVPlayer()

    var body: some View {
        VideoPlayer(player: player)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                // Unwrapping optional
                if let link = video.videoFiles.first?.link {
                    // Setting the URL of the video file
                    player = AVPlayer(url: URL(string: link)!)
                    
                    // Play the video
                    player.play()
                }
            }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(video: previewVideo)
    }
}

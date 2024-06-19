//
//  VideoListDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 19/06/24.
//

import SwiftUI

struct VideoListDemo: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationStack {
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetailsView(video: video)) {
                   VideoCell(video: video)
                }
                .navigationTitle("SwiftUI's Top 10 ")
            }
        }
    }
}

struct VideoCell: View {
    
    var video: Video
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(4)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    VideoListDemo()
}

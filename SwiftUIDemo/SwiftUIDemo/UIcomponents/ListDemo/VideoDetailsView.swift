//
//  VideoDetailsView.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 19/06/24.
//

import SwiftUI

struct VideoDetailsView: View {
    
    var video: Video
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(10.0)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(Color(.systemRed))
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            })
            
        }
    }
}

#Preview {
    VideoDetailsView(video: VideoList.topTen.first!)
}

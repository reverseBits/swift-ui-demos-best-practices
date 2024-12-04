//
//  FormDemo.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 16/03/24.
//

import SwiftUI

struct FormDemo: View {
    @State private var notifyMeAbout: NotifyMeAbouttype = .directMessage
    @State private var playNotification: Bool = true
    @State private var sendReadReceipts: Bool = false
    @State private var profileImagesize: ProfileImageSizeType = .Large
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notification")) {
                    Picker("Notify Me About", selection: $notifyMeAbout) {
                        Text("Direct Messages").tag(NotifyMeAbouttype.directMessage)
                        Text("Mentions").tag(NotifyMeAbouttype.mentions)
                        Text("Anything").tag(NotifyMeAbouttype.anything)
                    }
                    Toggle("Play notification sounds", isOn: $playNotification)
                    Toggle("Send read receipts", isOn: $sendReadReceipts)
                }
                Section(header: Text("User Profiles")) {
                    Picker("Profile Image Size", selection: $profileImagesize) {
                        Text("Large").tag(ProfileImageSizeType.Large)
                        Text("Medium").tag(ProfileImageSizeType.Medium)
                        Text("Small").tag(ProfileImageSizeType.Small)
                    }
                    Button("Clear Image Cache") { }
                }
            }
        }
    }
}

#Preview {
    FormDemo()
}

enum NotifyMeAbouttype: CaseIterable {
    case directMessage, mentions, anything
}

enum ProfileImageSizeType: CaseIterable {
    case Large, Medium, Small
}

//
//  HomeScreen.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 25/05/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                Image("home_bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack {
                    Text("IN NSA to AE JEA")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.top, 70)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .top)
                
                HStack {
                    Text("Vessel Details")
                        .font(.headline)
                        .foregroundStyle(.white)
                    Spacer()
                    Button("Vessel schedule") {
                        print("Open Vessel schedule")
                    }
                    .padding(6)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.white, lineWidth: 1)
                    )
                }
                .padding(.top, 150)
                .padding(.leading, 14)
                .padding(.trailing, 14)
                
                HStack(alignment: .top) {
                    Image("ship")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 33, height: 33)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("MONTEPELLIER")
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundStyle(.white)
                            Text("Carrier: NAVIO")
                                .font(.caption2)
                                .foregroundStyle(.white)
                        }
                        
                        HStack(alignment: .top, spacing: 38) {
                            VStack(alignment: .leading, spacing: 3) {
                                Text("21/07/2022")
                                    .font(.caption2)
                                    .foregroundStyle(.white)
                                Text("ETD")
                                    .font(.caption2)
                                    .foregroundStyle(.white)
                                    
                            }
                            
                            VStack(alignment: .leading, spacing: 3) {
                                Text("21/07/2022")
                                    .font(.caption2)
                                    .foregroundStyle(.white)
                                Text("ETA")
                                    .font(.caption2)
                                    .foregroundStyle(.white)
                                    
                            }
                        }
                    }
                }
                .padding(.top, 200)
                .padding(.leading, 14)
                
                VStack {
                    Button(action: {
                        print("Button Tapped!")
                    }) {
                        HStack {
                            Text("Add Transportation & Customs Clearance")
                            Image(systemName: "plus")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.caption)
                        .fontWeight(.medium)
                        .background(Color.white)
                        .foregroundColor(Color(red: 1/255, green: 131/255, blue: 80/255))
                        .cornerRadius(6)
                    }
                    .padding(.horizontal, 14)
                    .padding(.top, 300)
                }
                
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeScreen()
}

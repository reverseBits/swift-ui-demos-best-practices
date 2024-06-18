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
                    .font(.caption2)
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
                
                VStack(spacing: 18) {
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
                        .cornerRadius(3)
                    }
                    .padding(.horizontal, 14)
                    .padding(.top, 300)
                    
                    ZStack() {
                        Rectangle()
                            .frame(height: 150)
                            .foregroundStyle(.white)
                            .cornerRadius(3.0)
                            .shadow(radius: 0.8)
                            .padding(.horizontal, 14)
                        
                        VStack(spacing: 7) {
                            HStack(alignment: .center) {
                                Text("Transport & Custom Clearance")
                                    .font(.custom("Roboto-Regular", size: 15))
                                    .foregroundColor(Color("blackColor"))
                                    .bold()
                                Spacer()
                                Image("arrow_forward_ios")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.horizontal, 18)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            HStack(alignment: .center) {
                                HStack(alignment: .center) {
                                    Image("location-blue")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                    Text("Stuffing Location")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                }
                                Spacer()
                                Text("Jalgaon - Raver")
                                    .font(.custom("Roboto-Medium", size: 12))
                                    .foregroundColor(Color("blackColor"))
                            }
                            .padding(.horizontal, 18)
                            
                            HStack(alignment: .top) {
                                HStack(alignment: .top) {
                                    Image("building")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                    Text("Clearance port")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("Nahva Sheva")
                                        .font(.custom("Roboto-Medium", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Text("On Wheel")
                                        .font(.custom("Roboto-Medium", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                }
                            }
                            .padding(.horizontal, 18)
                            
                            HStack(alignment: .center) {
                                HStack(alignment: .center) {
                                    Image("folder")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 22, height: 22)
                                    Text("Stuffing Location")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                }
                                Spacer()
                                Text("Surrender")
                                    .font(.custom("Roboto-Medium", size: 12))
                                    .foregroundColor(Color("blackColor"))
                            }
                            .padding(.horizontal, 18)
                        }
                        .padding(.horizontal)
                    }
                    
                    ZStack() {
                        Rectangle()
                            .frame(height: 320)
                            .foregroundStyle(.white)
                            .cornerRadius(3.0)
                            .shadow(radius: 0.8)
                            .padding(.horizontal, 14)
                        
                        VStack(spacing: 10) {
                            HStack(alignment: .center) {
                                VStack(alignment: .leading, spacing: 3) {
                                    Text("Quotation")
                                        .font(.custom("Roboto-Regular", size: 15))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                    Text("This quotation includes GST")
                                        .font(.custom("Roboto-Regular", size: 10))
                                        .foregroundColor(Color("blackColor"))
                                }
                                Spacer()
                                Image("arrow_forward_ios")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.horizontal, 18)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            VStack(spacing: 10) {
                                HStack {
                                    Text("Freight Charge")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Spacer()
                                    Text("₹4,000")
                                        .font(.custom("Roboto-Regular", size: 14))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                }
                                .padding(.horizontal, 18)
                                
                                HStack {
                                    Text("Origin Charge")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Spacer()
                                    Text("₹4,000")
                                        .font(.custom("Roboto-Regular", size: 14))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                }
                                .padding(.horizontal, 18)
                                
                                HStack {
                                    Text("Custom Clearance")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Spacer()
                                    Text("₹4,000")
                                        .font(.custom("Roboto-Regular", size: 14))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                }
                                .padding(.horizontal, 18)
                                
                                HStack {
                                    Text("Transportation Charge")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Spacer()
                                    Text("₹4,000")
                                        .font(.custom("Roboto-Regular", size: 14))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                }
                                .padding(.horizontal, 18)
                                
                                HStack {
                                    Text("Additional Service’s Cost")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Spacer()
                                    Text("₹4,000")
                                        .font(.custom("Roboto-Regular", size: 14))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                }
                                .padding(.horizontal, 18)
                                
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(.lightGray)
                                    .padding(.horizontal, 18)
                                
                                HStack {
                                    Text("Total")
                                        .font(.custom("Roboto-Regular", size: 15))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                    Spacer()
                                    Text("₹24,000")
                                        .font(.custom("Roboto-Regular", size: 15))
                                        .foregroundColor(Color("blackColor"))
                                        .bold()
                                }
                                .padding(.horizontal, 18)
                                
                                Button(action: {
                                    print("Button Tapped!")
                                }) {
                                    HStack {
                                        Text("VIEW FULL QUOTE")
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .font(.caption)
                                    .fontWeight(.medium)
                                    .background(Color(red: 217/255, green: 217/255, blue: 217/255).opacity(0.3))
                                    .foregroundColor(Color(red: 0/255, green: 121/255, blue: 213/255))
                                    .cornerRadius(3)
                                }
                                .padding()
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    ZStack() {
                        Rectangle()
                            .frame(height: 100)
                            .foregroundStyle(.white)
                            .cornerRadius(3.0)
                            .shadow(radius: 0.8)
                            .padding(.horizontal, 14)
                        
                        VStack(spacing: 10) {
                            HStack(alignment: .center) {
                                Text("You Should Know")
                                    .font(.custom("Roboto-Regular", size: 15))
                                    .foregroundColor(Color("blackColor"))
                                    .bold()
                                Spacer()
                                Text("View All")
                                    .font(.custom("Roboto-Regular", size: 12))
                                    .foregroundColor(Color("blueTextColor"))
                            }
                            .padding(.horizontal, 18)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Circle()
                                        .frame(width: 6, height: 6)
                                        .foregroundStyle(Color("grayColor"))
                                    Text("SSR charges are Subject to applicability")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Spacer()
                                }
                                .padding(.leading, 18)
                                
                                HStack {
                                    Circle()
                                        .frame(width: 6, height: 6)
                                        .foregroundStyle(Color("grayColor"))
                                    Text("Plug in charges are Subject to applicability")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("blackColor"))
                                    Spacer()
                                }
                                .padding(.leading, 18)
                            }
                        }
                        .padding(.horizontal)
                    }
                        
                    ZStack() {
                        Rectangle()
                            .frame(height: 100)
                            .foregroundStyle(.white)
                            .cornerRadius(3.0)
                            .shadow(radius: 0.8)
                            .padding(.horizontal, 14)
                        
                        VStack(spacing: 10) {
                            HStack(alignment: .center) {
                                Text("Add On Services")
                                    .font(.custom("Roboto-Regular", size: 15))
                                    .foregroundColor(Color("blackColor"))
                                    .bold()
                                Spacer()
                                Text("View All")
                                    .font(.custom("Roboto-Regular", size: 12))
                                    .foregroundColor(Color("blueTextColor"))
                            }
                            .padding(.horizontal, 18)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                        
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeScreen()
}

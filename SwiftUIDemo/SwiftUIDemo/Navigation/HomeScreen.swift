//
//  HomeScreen.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 25/05/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var coupon: String = ""
    var quotations: [Quotation] = Quotation.quotationDetails()
    var services: [AddOnService] = AddOnService.addOnServiceDetails()
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                Image("home_bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, -2)
                
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
                                .font(.custom("Roboto-Regular", size: 13))
                                .bold()
                            Image(systemName: "plus")
                                .bold()
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
                        RectangleWithCorners()
                        
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
                            .padding(.horizontal, 14)
                            
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
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                    }
                    
                    ZStack() {
                        Rectangle()
                            .frame(height: 310)
                            .foregroundStyle(.white)
                            .cornerRadius(6.0)
                            .shadow(radius: 1)
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
                            .padding(.horizontal, 14)
                            .padding(.top, 10)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            VStack {
                                List(quotations, id: \.id) { quotation in
                                    QuotationCell(quotation: quotation)
                                        .listRowSeparator(.hidden)
                                        .listRowInsets(.init()) // To remove extra space from rows but this doe not remove top-bottom space
                                }
                                .listStyle(.plain)
                                .environment(\.defaultMinListRowHeight, 25) // Remove extra top-bottom space from list
                                .padding(.horizontal, 18)
                                .scrollIndicators(.hidden)
                                .scrollDisabled(true)
                                
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
                        RectangleWithCorners()
                        
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
                            .padding(.horizontal, 14)
                            .padding(.top, 12)
                            
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
                                .padding(.bottom, 12)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    ZStack() {
                        Rectangle()
                            .frame(height: 150)
                            .foregroundStyle(.white)
                            .cornerRadius(6.0)
                            .shadow(radius: 1)
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
                            .padding(.horizontal, 14)
                            .padding(.top, 10)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            List(services, id: \.id) { service in
                                AddOnServiceCell(service: service)
                                    .listRowSeparator(.hidden)
                                    .listRowInsets(.init())
                            }
                            .listStyle(.plain)
                            .padding(.horizontal, 14)
                        }
                        .padding(.horizontal, 18)
                    }
                    
                    ZStack {
                        RectangleWithCorners()
                        
                        HStack(alignment: .top) {
                            Image("banana")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 57)
                                .cornerRadius(3)
                            
                            VStack(alignment: .leading, spacing: 7) {
                                Text("Banana")
                                    .font(.custom("Roboto-Regular", size: 18))
                                    .foregroundColor(Color("blackColor"))
                                    .bold()
                                
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundStyle(.lightGray)
                                
                                HStack {
                                    Text("1° C")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("citrusGreen"))
                                    Text("|")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color(.secondaryLabel))
                                    Text("29 MT")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("citrusGreen"))
                                    Text("|")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color(.secondaryLabel))
                                    Text("65.0%")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("citrusGreen"))
                                    Text("|")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color(.secondaryLabel))
                                    Text("15.0")
                                        .font(.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color("citrusGreen"))
                                }
                            }
                            Spacer()
                            Image("edit")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18)
                        }
                        .padding(.horizontal, 28)
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                    }
                    
                    ZStack {
                        RectangleWithCorners()
                        
                        VStack(spacing: 7) {
                            HStack(alignment: .center) {
                                Text("Offers & Coupon Codes")
                                    .font(.custom("Roboto-Regular", size: 15))
                                    .foregroundColor(Color("blackColor"))
                                    .bold()
                                Spacer()
                                Image("arrow_forward_ios")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.horizontal, 14)
                            .padding(.top, 12)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            HStack {
                                VStack {
                                    TextField("Enter Coupon code", text: $coupon)
                                        .textFieldStyle(.plain)
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(Color("grayColor"))
                                }
                                
                                Button("APPLY") {
                                    print("Button tapped")
                                }
                                .font(.custom("Roboto-Regular", size: 12))
                                .foregroundStyle(Color("citrusGreen"))
                                .padding(.leading, 10)
                            }
                            .padding(.top, 10)
                            .padding(.horizontal, 14)
                            
                            HStack {
                                Image("offer")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("ZEROFEE")
                                        .font(.custom("Roboto-Regular", size: 14))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("blackColor"))
                                    
                                    Text("Don’t pay any booking fee using this coupon")
                                        .lineLimit(2)
                                        .font(.custom("Roboto-Regular", size: 10))
                                        .foregroundStyle(.secondary)
                                }
                                
                                Spacer()
                                Button("APPLY") {
                                    print("Button tapped")
                                }
                                .font(.custom("Roboto-Regular", size: 12))
                                .foregroundStyle(Color("citrusGreen"))
                            }
                            .padding(.horizontal, 14)
                            .padding(.bottom, 12)
                            .padding(.top, 10)
                        }
                        .padding(.horizontal, 14)
                    }
                    
                    ZStack {
                        RectangleWithCorners()
                        
                        VStack(alignment: .leading, spacing: 7) {
                            HStack(alignment: .center) {
                                Text("Cancellation Policy")
                                    .font(.custom("Roboto-Regular", size: 15))
                                    .foregroundColor(Color("blackColor"))
                                    .bold()
                                Spacer()
                                Image("arrow_forward_ios")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.horizontal, 14)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            HStack(alignment: .top) {
                                Image("timer")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24)
                                
                                Text("Booking cancellation fee of $25/container will be applicable if the booking is cancelled.")
                                    .font(.custom("Roboto-Regular", size: 12))
                                    .foregroundStyle(Color("grayColor"))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .padding(.horizontal, 14)
                            
                            Text("Check  commodity , POL, POD and other details before booking.")
                                .font(.custom("Roboto-Regular", size: 13))
                                .foregroundStyle(Color("citrusGreen"))
                                .fixedSize(horizontal: false, vertical: true) // It will set text to grow vertically
                                .padding(.horizontal, 14)
                                .padding(.top, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Read Terms & Conditions")
                                    .font(.custom("Roboto-Regular", size: 10))
                                    .foregroundColor(Color("blueDottedColor"))
                                    .background(
                                        GeometryReader { geometry in
                                            Path { path in
                                                let width = geometry.size.width
                                                path.move(to: CGPoint(x: 0, y: 0))
                                                path.addLine(to: CGPoint(x: width, y: 0))
                                            }
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [2, 2]))
                                            .foregroundColor(Color("blueDottedColor"))
                                            .frame(height: 1)
                                            .offset(y: geometry.size.height + 2)
                                        }
                                    )
                            }
                            .padding(.top, 11)
                            .padding(.leading, 14)
                        }
                        .padding(.horizontal, 14)
                        .padding(.vertical, 12)
                    }
                    
                    ZStack {
                        RectangleWithCorners()
                        
                        VStack(alignment: .leading, spacing: 7) {
                            HStack(alignment: .center) {
                                Text("FAQ’s")
                                    .font(.custom("Roboto-Regular", size: 15))
                                    .foregroundColor(Color("blackColor"))
                                    .bold()
                                Spacer()
                                Image("arrow_forward_ios")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 15, height: 15)
                            }
                            .padding(.horizontal, 14)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.lightGray)
                            
                            VStack(alignment: .leading) {
                                Text("What are the next steps?")
                                    .font(.custom("Roboto-Regular", size: 12))
                                    .foregroundColor(Color("citrusGreen"))
                                
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundStyle(.lightGray)
                                
                                Text("Customer support appointment.\nPayment for transportation.\nOrder acceptance.")
                                    .font(.custom("Roboto-Regular", size: 12))
                                    .foregroundColor(Color(.secondaryLabel))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .padding(.horizontal, 14)
                            .padding(.top, 10)
                        }
                        .padding(.horizontal, 14)
                        .padding(.vertical, 12)
                    }
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(hex: "#038555"), Color(hex: "#0FB477")]),
                        startPoint: .top,
                        endPoint: .bottom
                    ))
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("₹ 5,24,000")
                        .font(.custom("Roboto-Regular", size: 18))
                        .foregroundColor(Color(.white))
                        .bold()
                    
                    Text("FOR 2 CONTAINER")
                        .font(.custom("Roboto-Regular", size: 11))
                        .foregroundColor(Color(.white))
                }
                
                Spacer()
                
                Button(action: {
                    print("Button Tapped!")
                }) {
                    Text("PLACE ORDER")
                        .font(.custom("Roboto-Regular", size: 15))
                        .foregroundStyle(Color("citrusGreen"))
                }
                .frame(width: 149, height: 39)
                .background(
                    RoundedRectangle(cornerRadius: 31)
                        .fill(.white)
                )
            }
            .padding(.horizontal, 21)
        }
        .ignoresSafeArea(edges: .bottom)
        .frame(height: 50)
    }
}

struct AddOnServiceCell: View {
    
    var service: AddOnService
    var body: some View {
        HStack(alignment: .center) {
            Image(service.image)
                .resizable()
                .scaledToFit()
                .frame(height: 28)
                .cornerRadius(3)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(service.serviceName)
                    .font(.custom("Roboto-Regular", size: 12))
                    .foregroundStyle(Color("blackColor"))
                
                Text(service.serviceDetails)
                    .font(.custom("Roboto-Regular", size: 10))
                    .foregroundStyle(Color(.secondaryLabel))
                
            }
            Spacer()
            Button(action: {
                print("Button Tapped!")
            }) {
                Text("Add")
                    .font(.custom("Roboto-Regular", size: 12))
                    .foregroundStyle(Color("citrusGreen"))
            }
            .padding()
            .frame(width: 80, height: 25)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color("citrusGreen"), lineWidth: 1)
            )
        }
    }
}

struct QuotationCell: View {
    
    var quotation: Quotation
    var body: some View {
        HStack {
            Text(quotation.name)
                .font(.custom("Roboto-Regular", size: 12))
                .foregroundColor(Color("blackColor"))
            Spacer()
            Text(quotation.charge)
                .font(.custom("Roboto-Regular", size: 14))
                .foregroundColor(Color("blackColor"))
                .bold()
        }
    }
}

struct RectangleWithCorners: View {
    
    var body: some View {
        Rectangle()
            .frame(maxHeight: .infinity)
            .foregroundStyle(.white)
            .cornerRadius(6.0)
            .shadow(radius: 1)
            .padding(.horizontal, 14)
    }
}


#Preview {
    HomeScreen()
}

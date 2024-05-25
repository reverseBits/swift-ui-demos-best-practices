//
//  Login.swift
//  SwiftUIDemo
//
//  Created by Vidhi Patel reverseBits on 25/05/24.
//

import SwiftUI

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                Image("login_bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack {
                    HStack {
                        Button(action: {
                            // action
                        }) {
                            Image("back")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .padding(.leading, 15)
                        .padding(.top, 61)
                        Spacer()
                    }
                    .padding()
                    Image("Citrus_white")
                        .resizable()
                        .frame(width: 165, height: 60)
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
            }
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(Color.white)
                .frame(height: 550)
                .overlay(
                    VStack {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Login")
                                .font(.title2)
                                .foregroundStyle(Color(red: 1/255, green: 131/255, blue: 80/255))
                                .fontWeight(.medium)
                            
                            VStack(alignment: .leading, spacing: 22) {
                                VStack(alignment: .leading, spacing: 7) {
                                    Text("Email ID")
                                        .font(.subheadline)
                                        .foregroundStyle(Color(red: 1/255, green: 131/255, blue: 80/255))
                                    VStack(spacing: 2) {
                                        TextField("Enter email", text: $email)
                                            .submitLabel(.next)
                                            .textFieldStyle(.plain)
                                            .textContentType(.emailAddress)
                                            .keyboardType(.emailAddress)
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundStyle(Color(red: 217/255, green: 217/255, blue: 217/255))
                                    }
                                    
                                }
                                VStack(alignment: .leading, spacing: 7) {
                                    Text("Password")
                                        .font(.subheadline)
                                        .foregroundStyle(Color(red: 1/255, green: 131/255, blue: 80/255))
                                    VStack(spacing: 2) {
                                        HStack {
                                            if isPasswordVisible {
                                                TextField("Enter a password", text: $password)
                                                    .textFieldStyle(.plain)
                                                    .textContentType(.password)
                                                    .keyboardType(.default)
                                            } else {
                                                SecureField("Enter a password", text: $password)
                                                    .textFieldStyle(.plain)
                                                    .textContentType(.password)
                                                    .keyboardType(.default)
                                            }
                                            
                                            Button(action: {
                                                isPasswordVisible.toggle()
                                            }) {
                                                Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                                                    .foregroundColor(.gray)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                        }
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundStyle(Color(red: 217/255, green: 217/255, blue: 217/255))
                                    }
                                }
                            }
                        }
                        
                        HStack {
                            Spacer()
                            Text("Forgot password?")
                                .font(.caption)
                                .foregroundStyle(Color(red: 89/255, green: 144/255, blue: 253/255))
                        }
                        .padding(.top, 22)
                        
                        Button("Login") {
                            print("Button Tapped!")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .foregroundStyle(.white)
                        .background(Color(red: 1/255, green: 131/255, blue: 80/255))
                        .cornerRadius(6)
                        .padding(.top, 50)
                        
                        HStack{
                            Text("Don’t have an account?")
                                .font(.caption)
                                .foregroundStyle(Color(red: 123/255, green: 121/255, blue: 121/255))
                            Text("Signup here")
                                .font(.caption)
                                .underline()
                                .foregroundStyle(Color(red: 89/255, green: 144/255, blue: 253/255))
                        }
                        .padding(.top, 24)
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(Color(red: 217/255, green: 217/255, blue: 217/255))
                            .padding(.top, 30)
                        
                        VStack {
                            HStack(spacing: 5) {
                                Text("By proceeding, you agree to Citrus’s")
                                    .font(.caption2)
                                    .padding(0.0)
                                    .foregroundStyle(Color(red: 123/255, green: 121/255, blue: 121/255))
                                Text("Privacy Policy,")
                                    .font(.caption2)
                                    .foregroundStyle(Color(red: 89/255, green: 144/255, blue: 253/255))
                            }
                            HStack(spacing: 5) {
                                Text("Terms & Conditions,")
                                    .font(.caption2)
                                    .foregroundStyle(Color(red: 89/255, green: 144/255, blue: 253/255))
                                Text("Refund & Cancellation Policy")
                                    .font(.caption2)
                                    .foregroundStyle(Color(red: 89/255, green: 144/255, blue: 253/255))
                            }
                        }
                        .padding(.top, 14)
                    }
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                )
                .padding(.top, -30)
                .ignoresSafeArea()
        }
        .ignoresSafeArea()
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    Login()
}

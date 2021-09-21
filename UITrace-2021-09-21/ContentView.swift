//
//  ContentView.swift
//  UITrace-2021-09-21
//
//  Created by 吉田周平 on 2021/09/21.
//

import SwiftUI

struct ContentView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(red: 238/255,green: 238/255,blue: 238/255,alpha: 1.0)]
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(red: 238/255,green: 238/255,blue: 238/255,alpha: 1.0)]
    }
    var body: some View {
        NavigationView {
            ZStack {
                Color(.sRGB,
                      red: 238/255,
                      green: 238/255,
                      blue: 238/255,
                      opacity: 1.0)
                VStack {
                    MainCard()
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Start a Cocoon")
                            Text("Choose a template to get started")
                                .foregroundColor(.secondary)
                        }
                        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                        SubCard(color: .purple, text: "Family")
                        SubCard(color: .blue, text: "Close Friends")
                        SubCard(color: .green, text: "Couple")
                        SubCard(color: .yellow, text: "Just Testing")
                        SubCard(color: .red, text: "Other")
                    }
                    .background(Color.white)
                    .cornerRadius(12)
                    .padding()
                    .shadow(color: .gray, radius: 8, x: 0.0, y: 8)
                    Spacer()
                }
            }
            .ignoresSafeArea(.all, edges: .bottom)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .navigation) {
                    Button(action: {}, label: {
                        Image(systemName: "gear")
                            .foregroundColor(.black)
                    })
                }
                ToolbarItem(placement: .principal) {
                    Text("Cocoon")
                }
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainCard: View {
    var body: some View {
        VStack {
            HStack {
                Text("Welcome to Cocoon!")
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.gray)
                })
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
            HStack {
                Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                RoundedRectangle(cornerRadius: 8)
                    .frame(height: 82)
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
        }
        .background(Color.white)
        .cornerRadius(12)
        .padding()
        .shadow(color: .gray, radius: 8, x: 0.0, y: 8)
    }
}

struct SubCard: View {
    var color: Color
    var bgColor: Color {
        return color.opacity(0.3)
    }
    var text: String
    var body: some View {
        HStack {
            Text(text)
                .foregroundColor(color)
                .padding()
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "chevron.right")
                    .foregroundColor(color)
                    .padding()
            })
        }
        .background(bgColor)
        .cornerRadius(12)
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
    }
}

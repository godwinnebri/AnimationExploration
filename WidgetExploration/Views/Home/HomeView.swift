//
//  HomeView.swift
//  WidgetExploration
//
//  Created by Godwin IE on 23/12/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var menuPressed = false
    @State private var editPressed = false

    var body: some View {
        VStack{
            VStack{
                HStack{
                    
                    // burger
                    HStack (spacing: 16) {
                        Text("🍔")
                            .font(.title)
                            .padding(12)
                            .background(.gray.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                        
                        //lunch
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Lunch")
                                .font(.system(size: 15, weight: .regular))
                                .foregroundStyle(.gray)
                            Text("Burger")
                                .font(.system(size: 17, weight: .semibold))
                                .foregroundStyle(.black.opacity(0.7))
                            
                        }
                    }
                    
                    Spacer()
                    
                    // edit/delete
                    HStack(spacing: 4){
                        if menuPressed {
                            
                            DeleteButton()
                            
                            Button{
                                withAnimation(.bouncy(duration: 0.4)){
                                    editPressed = true
                                }
                            } label: {
                                CustomTextButton(title: "Edit")
                            }

                        }
                            
                    }
                    .scaleEffect(menuPressed ? 1 : 0)
                    .opacity(editPressed ? 0 : 1)

                    

                    
                    // kebab
                    Button{
                        withAnimation(.bouncy(duration: 0.4)){
                            if menuPressed {
                                menuPressed = false
                            } else {
                                menuPressed = true
                            }
                        }
                    } label: {
                        if menuPressed {
                            CancelButton()
                        } else {
                            ZStack{
                                Text("...")
                                    .font(.title)
                                    .padding(.bottom, 16)
                                    .clipShape(Circle())
                                    .foregroundStyle(.black)
                                
                                Color.gray.opacity(0.1)
                                    .frame(width: 48, height: 48)
                                    .clipShape(Circle())
                                
                            }
                        }
                    }
                    .opacity(editPressed ? 0 : 1)
                }
                
                // edit
                    HStack(spacing: 14){
                        if editPressed {
                            Chip(title: "Lunch", isSelected: true)
                            Chip(title: "Snack", isSelected: false)
                            
                            Spacer()
                            
                            Button{
                                withAnimation(.bouncy(duration: 0.4)){
                                    editPressed = false
                                    menuPressed = false
                                }
                            } label: {
                                CustomTextButton(title: "Done")
                            }
                        }
                    }
                    .padding(.top, editPressed ? 10 : 0)
                    .scaleEffect(editPressed ? 1 : 0)

            }
            .padding(18)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(28)
            .shadow(color: Color.gray.opacity(0.15), radius: 14, x: 0, y: 7)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}

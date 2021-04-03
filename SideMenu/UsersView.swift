//
//  DashBoardView.swift
//  SideMenu
//
//  Created by Prathap on 01/04/21.
//

import SwiftUI

struct UsersView: View {
    
    @Binding var isShowMenu : Bool
    
    
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -50 {
                    withAnimation {
                        isShowMenu.toggle()
                    }
                }
            }
        
        ZStack {
            Color.init(hex: "#bcb6db")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .overlay(
            Image(systemName: "xmark.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .frame(width: 40, height: 40)
                .position(x: 30, y: 40)
                .foregroundColor(.white)
                .opacity(isShowMenu ? 1.0 : 0.0)
                .onTapGesture {
                    withAnimation {
                        isShowMenu.toggle()
                    }
                }
            
        )
        .gesture(drag)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    withAnimation {
                        isShowMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                    
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Image("profile_pic")
                    .resizable()
                    .frame(width: 30, height: 40)
                    .clipShape(Circle())
            }
            
            
        })
        .navigationTitle(Text("Dash Board"))
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

extension UIInputViewController {
    override open func viewDidLoad() {
        let appearance = UINavigationBar.appearance()
        appearance.backgroundColor = .red
    }
}

//struct DashBoardView_Previews: PreviewProvider {
//    static var previews: some View {
//        DashBoardView(isShowMenu: false)
//    }
//}

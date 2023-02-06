//
//  MainScreenView.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI


struct MainScreenView: View {
    @EnvironmentObject var titleTest: TitleTest
    @EnvironmentObject var Emailuser: emailuser
    @State private var emailEntry = ""
    @State private var showMenu = false
    @State private var showSettings: Bool = false
   
    
    
    let usersEmail: [String] =
    ["detroit@gmail.com", "johndoe@apple.com", "mikedoe424@yahoo.com","glove@mail.com","same@apple.com","timCook32@apple.com","swiftcoder432@yahoo.com", "newmacsam@rocketmail.com", "pistionslover42@yahoo.com","detroit@gmail.com", "johndoe@apple.com", "mikedoe424@yahoo.com","glove@mail.com","same@apple.com","timCook32@apple.com","swiftcoder432@yahoo.com", "newmacsam@rocketmail.com", "pistionslover42@yahoo.com","detroit@gmail.com", "johndoe@apple.com", "mikedoe424@yahoo.com","glove@mail.com","same@apple.com","timCook32@apple.com","swiftcoder432@yahoo.com", "newmacsam@rocketmail.com", "pistionslover42@yahoo.com","detroit@gmail.com", "johndoe@apple.com", "mikedoe424@yahoo.com","glove@mail.com","same@apple.com","timCook32@apple.com","swiftcoder432@yahoo.com", "newmacsam@rocketmail.com", "pistionslover42@yahoo.com","loser@yahoo.com"]
  
    
    var body: some View {
        
        NavigationStack{
            VStack{
                VStack{
                    ZStack(alignment: .topLeading){
                        
//                        MainScreenWelcome(titleOne: "\(self.titleTest.title ?? "hello world")", titleTwo: "")
                        
                        
                        //      .ignoresSafeArea()
                        NavigationLink(destination: SettingsPage()) {
                            Image(systemName: "gearshape.2")
                        }
                        .padding(.horizontal,15)
                        .navigationViewStyle(.columns)
                        
                        
                    }
                    Text("Thank you for volunteering! ")
                        .font(.custom("Vanilla Caramel", size: 55))
                        .padding(-9)
                    
                    
                }
                
                HStack{
                    ImputField(imagename: "envelope",
                               placeholdertext: "Please Enter Your Email to Clock In:", text: $emailEntry)
                    
                    
                    
                    Button {
                       
                    } label: {
                        
                        Text("Sign in".uppercased())
                            .font(.caption)
                            .bold()
                            .foregroundColor(.gray)
                        
                        
                        
                            .padding()
                        
                            .background(
                                Capsule()
                                    .stroke(Color.gray, lineWidth: 3.0))
                    }
                    .padding()
                    
                    //
                }
                ScrollView{
                    
                    VStack{
                        
                        ForEach(0..<usersEmail.count) { Index in
                            
                            UserRow( usermail: usersEmail[Index])
                            
                            
                            
                        }
                    }
                    //                HStack{
                    //                    ImputField(imagename: "envelope",
                    //                               placeholdertext: "Email", text: $emailEntry)
                    //
                    //
                    //
                    //                    Button {
                    //                        saveEmail()
                    //                    } label: {
                    //
                    //                        Text("Sign in".uppercased())
                    //                            .font(.caption)
                    //                            .bold()
                    //                            .foregroundColor(.gray)
                    //
                    //
                    //                            .padding()
                    //
                    //                            .background(
                    //                                Capsule()
                    //                                    .stroke(Color.gray, lineWidth: 2.0))
                    //                    }
                    //
                    //
                    //                }
                }
            }
            
            
            
            
            VStack(spacing: 10){
                //                ImputField(imagename: "envelope",
                //                           placeholdertext: "Email", text: $email)
                // .padding()
                
                
                
                
            }
        }
        
    }
    }


//var SigninButton: some View{
//
//    Button {
//        saveEmail()
//    } label: {
//
//        Text("Sign in".uppercased())
//            .font(.caption)
//            .bold()
//            .foregroundColor(.gray)
//
//
//            .padding()
//
//            .background(
//                Capsule()
//                    .stroke(Color.gray, lineWidth: 2.0))
//    }
//}


struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}


//
//  ContentView.swift
//  Onboard
//
//  Created by Nazish Ali on 04/01/22.
//

import SwiftUI
import Combine

/***************/
// Model, View, ViewModel



class LoginViewModel: ObservableObject {
    
    @Published var loginData = LoginData() {
        didSet {
            print(loginData.email)
        }
    }
    
    @Published var isEmailError = false
    @Published var isPasswordError = false
    @Published var isLogin = false
  
    var subscription = Set<AnyCancellable>()
    var publisher = PassthroughSubject<String, Never>()
    
   // var subscriptions = Set<AnyCan>()
    
    init() {
        publisher.sink { [unowned self] (_) in
            print("button pressed")
            self.loginClicked()
        }.store(in: &subscription)
    }
    
    
    func loginClicked() {
        if validateEmail() == false {
            isEmailError = true
        } else if validatePassword() == false {
            isPasswordError = true
        } else {
            self.isLogin = true
            self.loginData.loginApiCalled()
        }
    }
    
    
    func validateEmail() -> Bool {
        // Logic for email validation
        return false
    }
    
    func validatePassword() -> Bool {
        // Logic for valid password
        return true
    }
    
    
    
    
   
}


class LoginData {
    var email: String = ""
    var password: String = ""
    
    func loginApiCalled() {
        
    }
    
}


struct ContentView: View {
    @StateObject var model = LoginViewModel()
 
    var body: some View {
   
        
    NavigationView {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Sign in to continue!")
                .font(.largeTitle)
            VStack(alignment: .leading, spacing: 5) {
                Text("Email")
                TextField("Email", text: $model.loginData.email) { (isChange) in
                print(isChange)
            } onCommit: {
                print("Commit value")
            }
                .textFieldStyle(BorderCustomTextFieldStyle(isError: model.isEmailError))
               // .textFieldStyle(RoundedBorderTextFieldStyle())
           }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Password")
                TextField("Password", text: $model.loginData.password) { (isChange) in
                print(isChange)
            } onCommit: {
                print("Commit value")
            }
            .textFieldStyle(BorderCustomTextFieldStyle(isError: model.isPasswordError))
           }
         
//            NavigationLink(destination: EmptyView(), isActive: $model.isLogin) {
//                ButtonView(title: "Sign In", textColor: .white, publisher: self.model.publisher)
//            }
           
            NavigationLink(destination: EmptyView(), isActive: $model.isLogin) {
                ButtonView(title: "Sign In", textColor: .white, publisher: self.model.publisher)
            }
                
            
            .background(Color.black)
           Spacer()
            
        }
        .padding([.leading, .trailing], 30)
        .padding(.top, 100)
        
//        .toolbar {
//            ToolbarItem(placement: ToolbarItemPlacement.navigation) {
//                Text("Login")
//            }
//        }
        // NavigationLink("Logged In", destination: EmptyView(), isActive: $model.isLogin)
        .navigationTitle("Log In")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button("Notify", action: {
            print("Notification Clicked")
        }))
      }
        //.border(Color.green, width: 3)
       // .navigationTitle("Sign in to continue!")
        //.navigationViewStyle(DefaultNavigationViewStyle())
      //}
        
    }
    
    
//    func signInClicked() {
//        print("action tapped")
//        print("email")
//        print(model.email)
//        print("password")
//        print(model.password)
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

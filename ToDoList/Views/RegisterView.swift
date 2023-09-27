//
//  RegisterView.swift
//  ToDoList
//
//  Created by Ali Mert Kaya on 20.09.2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    // Otomatik harf büyütme kapatır
                    .autocapitalization(.none)
                    // Otomatik düzeltme kapalı
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ) {
                    // Attempt registration
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
                        
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

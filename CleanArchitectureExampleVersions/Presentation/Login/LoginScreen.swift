//
//  LoginScreen.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import SwiftUI

struct LoginScreen: View {

    @StateObject private var vm = LoginVM()
    
    @State var phone: String
    @State var password: String

    var body: some View {
        VStack {
            TextField("Phone", text: $phone)
            SecureField("Password", text: $password)

            Button("Login") {
                Task { await vm.login(phone: phone, password: password) }
            }

            if let token = vm.token {
                Text("Token: \(token)")
            }
        }
        .padding()
    }
}

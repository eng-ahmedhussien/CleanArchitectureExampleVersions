//
//  LoginScreen.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import SwiftUI

struct LoginScreen: View {

    @StateObject private var vm = LoginVM()

    var body: some View {
        VStack {
            TextField("Phone", text: $vm.phone)
            SecureField("Password", text: $vm.password)

            Button("Login") {
                Task { await vm.login() }
            }

            if let token = vm.token {
                Text("Token: \(token)")
            }
        }
        .padding()
    }
}

//
//  LoginVM.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation

@MainActor
final class LoginVM: ObservableObject {

    @Published var phone = ""
    @Published var password = ""
    @Published var token: String?

    func login() async {
        // ❌ Bad: API directly in VM
        let response = await fakeApiCall()
        self.token = response
    }

    private func fakeApiCall() async -> String {
        return "token_123"
    }
}

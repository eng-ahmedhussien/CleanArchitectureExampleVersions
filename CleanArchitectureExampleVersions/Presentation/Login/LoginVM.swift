//
//  LoginVM.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation

@MainActor
final class LoginVM: ObservableObject {

    @Published var token: String?

    private let repository: LoginRepositoryProtocol = LoginRepository()

    func login(phone: String, password: String) async {
        token = await repository.login(phone: phone, password: password)
    }
}

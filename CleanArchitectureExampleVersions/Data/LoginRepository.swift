//
//  LoginRepository.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation


final class LoginRepository: LoginRepositoryProtocol {
    func login(phone: String, password: String) async -> UserDataLogin {
        UserDataLogin(token: "token_123")
    }
}

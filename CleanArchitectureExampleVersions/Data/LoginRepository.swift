//
//  LoginRepository.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation

protocol LoginRepositoryProtocol {
    func login(phone: String, password: String) async -> String
}

final class LoginRepository: LoginRepositoryProtocol {
    func login(phone: String, password: String) async -> String {
        return "token_123"
    }
}

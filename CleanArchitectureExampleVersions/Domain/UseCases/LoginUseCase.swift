//
//  LoginUseCase.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation

protocol LoginUseCaseProtocol {
    func execute(phone: String, password: String) async -> LoginResult
}

final class LoginUseCase: LoginUseCaseProtocol {

    private let repository: LoginRepositoryProtocol

    init(repository: LoginRepositoryProtocol) {
        self.repository = repository
    }

    func execute(phone: String, password: String) async -> LoginResult {
        let user = await repository.login(phone: phone, password: password)
        return LoginResult(token: user.token, isLoggedIn: true)
    }
}


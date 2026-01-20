//
//  LoginUseCase.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation

protocol LoginUseCaseProtocol {
    func execute(phone: String, password: String) async -> UserDataLogin
}

final class LoginUseCase: LoginUseCaseProtocol {

    private let repository: LoginRepositoryProtocol

    init(repository: LoginRepositoryProtocol) {
        self.repository = repository
    }

    func execute(phone: String, password: String) async -> UserDataLogin {
        await repository.login(phone: phone, password: password)
    }
}

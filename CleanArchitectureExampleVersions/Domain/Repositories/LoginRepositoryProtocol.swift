//
//  LoginRepositoryProtocol.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation

protocol LoginRepositoryProtocol {
    func login(phone: String, password: String) async -> UserDataLogin
}

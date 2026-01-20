//
//  LoginMapper.swift
//  CleanArchitectureExampleVersions
//
//  Created by Ahmed Hussien on 20/01/2026.
//

import Foundation

struct LoginMapper {
    static func map(dto: LoginResponseDTO) -> UserDataLogin {
        UserDataLogin(token: dto.token)
    }
}

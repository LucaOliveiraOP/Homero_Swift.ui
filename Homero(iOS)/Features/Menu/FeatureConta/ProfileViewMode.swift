//
//  ProfileViewMode.swift
//  Homero(iOS)
//
//  Created by userext on 14/06/23.
//

import SwiftUI

class ProfileViewModel: ObservableObject{
    @Published var name: String = ""
    @Published var nascimento: String = ""
    @Published var cpf: String = ""
    @Published var senha: String = "" 
    
}

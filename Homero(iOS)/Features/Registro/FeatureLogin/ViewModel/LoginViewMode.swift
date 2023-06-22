//
//  LoginViewMode.swift
//  Homero(iOS)
//
//  Created by userext on 30/05/23.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published private var isLoading: Bool = false
    @Published private var email: String = ""
    @Published private var password: String = ""
    @Published private var isLoggedIn: Bool = false
    @Published var isSecuredEye: Bool = false
    
//    init(isLoading: Bool, email: String, password: String, isLoggedIn: Bool) {
//        self.isLoading = isLoading
//        self.email = email
//        self.password = password
//        self.isLoggedIn = isLoggedIn
//    }
    
    func performToggle(){
        isSecuredEye.toggle()
    }
    func authenticate() {
        isLoading = true
        
        let urlString = "https://exemplo.com/auth" // URL do servidor de autenticação
        guard let url = URL(string: urlString) else {
            isLoading = false
            return
        }
        
        let credentials = ["email": email, "password": password]
        guard let jsonData = try? JSONSerialization.data(withJSONObject: credentials) else {
            isLoading = false
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                self.isLoading = false
                
                guard error == nil else {
                    print("Erro: \(error!.localizedDescription)")
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    print("Falha na autenticação")
                    return
                }
                
                // Autenticação bem-sucedida
                self.isLoggedIn = true
            }
        }
        
        task.resume()
    }
}

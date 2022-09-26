//
//  UserData.swift
//  RandomUsers
//
//  Created by Michał Gerlach on 20/09/2022.
//

import Foundation
@MainActor
class UserData: ObservableObject {
 @Published   var users: [User] = []
    
    init() {
        Task {
        await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        }
        catch {
            print(error)
        }
    }
}

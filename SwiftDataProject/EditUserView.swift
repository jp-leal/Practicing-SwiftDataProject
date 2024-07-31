//
//  EditUserView.swift
//  SwiftDataProject
//
//  Created by Joao Leal on 31/07/2024.
//

import SwiftUI
import SwiftData

struct EditUserView: View {
    @Bindable var user: User
    
    var body: some View {
        TextField("Name", text: $user.name)
        TextField("City", text: $user.city)
        
            DatePicker("Date", selection: $user.joinDate)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: User.self, configurations: config)
        let user = User(name: "Taylor Swift", city: "Nashville", joinDate: .now)
        return EditUserView(user: user)
            .modelContainer(container)
    } catch {
        return Text("Failed to create container: \(error.localizedDescription)")
    }
}

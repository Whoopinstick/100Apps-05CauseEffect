//
//  DetailView.swift
//  05 - CauseEffect
//
//  Created by Kevin Paul on 8/4/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var person: Person
    var body: some View {
        ScrollView {
            VStack {
                Image(person.firstName)
                    .resizable()
                    .scaledToFit()
                Text("Name: \(person.firstName + " " + person.lastName)")
                    .padding()
                Text("Age: \(person.age)")
                    .padding()
                if person.street2 != nil {
                    Text("Address Line 1: \(person.street)")
                        .padding()
                } else {
                    Text("Address: \(person.street)")
                        .padding()
                }
                if person.street2 != nil {
                    Text("Address Line 2: \(person.street2 ?? "")")
                        .padding()
                }
                Text("City: \(person.city)")
                    .padding()
                Text("State: \(person.state)")
                    .padding()
                Text("Zip Code: \(person.zip)")
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static let people: [Person] = Bundle.main.decode("people.json")
    static var previews: some View {
        DetailView(person: people[0])
    }
}

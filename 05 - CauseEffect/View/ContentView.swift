//
//  ContentView.swift
//  05 - CauseEffect
//
//  Created by Kevin Paul on 8/2/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let people: [Person] = Bundle.main.decode("people.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(people) { person in
                    Text(person.firstName)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

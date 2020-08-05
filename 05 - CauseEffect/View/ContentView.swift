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
                    NavigationLink(destination: DetailView(person: person)) {
                        HStack {
                            Image(person.firstName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            
                            
                            VStack(alignment: .leading) {
                                Text(person.firstName)
                                Text(person.lastName)
                            }
                        }
                    }
                }
            }
                
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

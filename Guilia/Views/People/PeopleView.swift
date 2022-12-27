//
//  ContentView.swift
//  Guilia
//
//  Created by Theophane on 2022/12/26.
//

import SwiftUI

struct PeopleView: View {
  
  @ObservedObject var viewModel = PeopleViewModel();
  
  var body: some View {
    VStack {
      HeaderView(title: "people")
      ScrollView {
        ForEach(viewModel.people) { person in
          self.row(forPerson: person)
        }
      }
      footerView
    }
  }
  
  private var footerView: some View {
    Text("people count: \(viewModel.people.count)").padding()
  }
  
  private func row(forPerson person: PeopleViewModel.Person) -> some View {
    VStack (alignment: .leading) {
      Text(person.name)
      Text(person.twitterHandle)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      PeopleView()
    }
  }
}


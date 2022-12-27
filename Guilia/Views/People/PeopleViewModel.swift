//
//  PeopleViewModel.swift
//  Guilia
//
//  Created by Theophane on 2022/12/27.
//

import Foundation

final class PeopleViewModel: ObservableObject {
  
  struct Person: Identifiable {
    var id = UUID()
    var name: String
    var twitterHandle: String
    
  }
  
  @Published var people = [Person(name: "Black Adam", twitterHandle: "@blackadammovie")]
}

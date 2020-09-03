//
//  FactModel.swift
//  Avocados
//
//  Created by Rick Brown on 03/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}

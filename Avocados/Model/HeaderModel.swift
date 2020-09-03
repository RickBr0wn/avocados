//
//  HeaderModel.swift
//  Avocados
//
//  Created by Rick Brown on 03/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct Header: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}

//
//  Flag.swift
//  Flags of the World
//
//  Created by John Barth on 7/31/19.
//  Copyright © 2019 Nuntium. All rights reserved.
//

import Foundation

class Flag {
    var flag: String
    var country: String
    var region: String
    var population: String
    
    init(flag: String, country: String, region: String, population: String) {
        self.flag = flag
        self.country = country
        self.region = region
        self.population = population
    }
}

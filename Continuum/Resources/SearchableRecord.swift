//
//  SearchableRecord.swift
//  Continum
//
//  Created by Carson Buckley on 4/11/19.
//  Copyright © 2019 Launch. All rights reserved.
//

import Foundation

protocol SearchableRecord {
    func matches(searchTerm: String) -> Bool
}

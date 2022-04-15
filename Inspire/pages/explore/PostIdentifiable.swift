//
//  Post.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import Foundation
import SwiftUI

struct PostIdentifiable: Identifiable{
    var id = UUID()
    var post : PostObject
}

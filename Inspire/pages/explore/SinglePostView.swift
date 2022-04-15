//
//  SinglePostView.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import SwiftUI

struct SinglePostView: View {
    
    var currentPost: PostObject
    
    var body: some View {
        
        List{
            PostCell(currentPost: currentPost)
        }
        
    }
}


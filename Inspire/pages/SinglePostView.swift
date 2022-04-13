//
//  SinglePostView.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import SwiftUI

struct SinglePostView: View {
    var body: some View {
        List{
            PostCell()
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct SinglePostView_Previews: PreviewProvider {
    static var previews: some View {
        SinglePostView()
    }
}

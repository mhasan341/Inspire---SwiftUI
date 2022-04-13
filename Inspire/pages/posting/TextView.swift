//
//  TextView.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-13.
//

import UIKit
import SwiftUI

struct TextView: UIViewRepresentable {
    
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        view.backgroundColor = .systemGray5
        return view
    }
    
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
}

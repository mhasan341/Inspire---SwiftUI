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
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.delegate = context.coordinator
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        view.backgroundColor = .systemGray5
        return view
    }
    
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
    class Coordinator: NSObject, UITextViewDelegate{
        
        var parent: TextView
        
        init(_ parent: TextView){
            self.parent = parent
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }
}

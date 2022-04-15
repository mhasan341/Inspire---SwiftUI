//
//  Date+Ext.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import Foundation

extension Date{
    func convertToPast()-> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: self)
    }
}

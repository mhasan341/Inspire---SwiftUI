//
//  DataHandler.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-15.
//

import Foundation
import SwiftUI
import Firebase

class DataHandler: ObservableObject{
    
    @Published var homePagePosts = [PostObject]()
    @Published var explorePagePosts = [PostIdentifiable]()
    
    func loadHomePagePosts(){
        let ref = Database.database().reference()
        ref.child("posts").observe(.value) { snapshot in
            for snap in snapshot.children.allObjects as! [DataSnapshot]{
                guard let dict = snap.value as? [String: AnyObject] else {return}
                
                let post = PostObject()
                post.id = dict["id"] as? String ?? ""
                post.comment = dict["comment"] as? String ?? ""
                post.imageURL = dict["imageURL"] as? String ?? ""
                post.date = dict["created"] as? Date ?? Date.now
                post.aspectRatio = dict["aspectRatio"] as? Double ?? 1
                
                self.homePagePosts.append(post)
                self.homePagePosts.sort(by: {$0.date!.compare($1.date!) == .orderedDescending})
                post.writeToRealm()
                
            }
            
        }
    }
    
    
    func loadExplorePage(){
        let ref = Database.database().reference()
        ref.child("posts").observe(.value) { snapshot in
            for snap in snapshot.children.allObjects as! [DataSnapshot]{
                guard let dict = snap.value as? [String: AnyObject] else {return}
                
                let post = PostObject()
                post.id = dict["id"] as? String ?? ""
                post.comment = dict["comment"] as? String ?? ""
                post.imageURL = dict["imageURL"] as? String ?? ""
                post.date = dict["created"] as? Date ?? Date.now
                post.aspectRatio = dict["aspectRatio"] as? Double ?? 1
                
                self.explorePagePosts.append(PostIdentifiable(post: post))
                self.homePagePosts.sort(by: {$0.date!.compare($1.date!) == .orderedDescending})
                post.writeToRealm()
                
            }
            
        }
    }
    
    
}

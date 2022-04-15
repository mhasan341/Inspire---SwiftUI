//
//  RealmObjects.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//
import Foundation
import RealmSwift

class PostObject: Object{
    @objc dynamic var id: String = ""
    @objc dynamic var imageURL: String = ""
    @objc dynamic var comment: String = ""
    @objc dynamic var user: UserObject? = nil
    @objc dynamic var aspectRatio: Double = 0
    @objc dynamic var date: Date? = nil
    var isFavorited = RealmProperty<Bool?>()
    
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

class UserObject: Object{
    @objc dynamic var id: String = ""
    @objc dynamic var avatarURL: String = ""
    @objc dynamic var username: String = ""
    @objc dynamic var followerCount: String = ""
    @objc dynamic var followingCount: String = ""
    var isLoggedIn = RealmProperty<Bool?>()
    var isFollowing = RealmProperty<Bool?>()
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

extension Object{
    func writeToRealm(){
        try! globalRealm.write({
            globalRealm.add(self, update: .modified)
        })
    }
}

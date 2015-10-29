//
//  FamousMovie.swift
//  Famous Movies, Famous Quotes
//
//  Created by Mounika Ankam on 3/1/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import Foundation

class FamousMovie
{
    var name:String!
    var director:String!
    var year:Int!
    var famousquotes:[String]!
    
    init( name:String , director:String, year:Int, famousquotes:[String])
    {
        self.name = name
        self.director = director
        self.year = year
        self.famousquotes = famousquotes
    }
    
    convenience init()
    {
        self.init(name:"The Lazarous Effect", director:"Lance Bangs", year:2015, famousquotes :["Reannimation Horror","Restoration of life"])
    }
    
    
    
    
}
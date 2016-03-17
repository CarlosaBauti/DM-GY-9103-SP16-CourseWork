//
//  SectionsData.swift
//  multiple_sections
//
//  Created by Carlos Bautista on 3/16/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class SectionsData {
    func getSectionsFromData() -> [Section] {
        
        // you could replace the contents of this function with an HTTP GET,
        // a database fetch request,
        // or anything you like, as long as you return an array of Sections
        // this program will
        // function the same way.
        
        var sectionsArray = [Section]()
        
        let animals = Section(title: "Animals", objects: ["Cats", "Dogs","Birds","Lions"])
        let vehicules = Section(title: "Vehicules", objects: ["Cars", "Boats", "Planes", "Motorcycles", "Trucks"])
        let movies = Section(title: "Movies", objects: ["Blade Runner", "Mad Max", "Transcendent Man", "Jurassic World"])
        
        sectionsArray.append(animals)
        sectionsArray.append(vehicules)
        sectionsArray.append(movies)
        
        return sectionsArray
        
    }
}

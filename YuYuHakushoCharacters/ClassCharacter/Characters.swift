//
//  Characters.swift
//  YuYuHakushoCharacters
//
//  Created by Daniel Washington Ignacio on 07/07/21.
//

import Foundation


class Character {
    
    var name: String?
    var surname: String?
    var species: String?
    var classCharacter: String?
    
    
    init(name: String?, surname: String?,species: String?, classCharacter: String?){
        
        self.name = name
        self.surname = surname
        self.species = species
        self.classCharacter =  classCharacter
        
    }
    
}

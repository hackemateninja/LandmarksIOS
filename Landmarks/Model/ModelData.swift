//
//  ModelData.swift
//  Landmarks
//
//  Created by Herman Orlando Morales Lòpez on 18/9/23.
//

import Foundation

var landmarks: [Landmark] = load(filename: "landmakData.json")

func load<T: Decodable>(filename:String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in main bunndle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

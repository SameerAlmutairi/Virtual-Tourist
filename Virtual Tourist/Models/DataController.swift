//
//  DataController.swift
//  Virtual Tourist
//
//  Created by Sameer Almutairi on 02/06/2019.
//  Copyright © 2019 Sameer Almutairi. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    
    let persistentContainer: NSPersistentContainer
    
    init(modelName:String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores{(storeDescription, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
}


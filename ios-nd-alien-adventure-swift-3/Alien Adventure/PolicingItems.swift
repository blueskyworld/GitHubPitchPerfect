//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        
        var errorDictCount:
            [UDPolicingError:Int] = [.itemFromCunia:0, .nameContainsLaser:0, .valueLessThan10: 0]
        
        for item in inventory {
            do {
                try policingFilter(item)
            } catch UDPolicingError.itemFromCunia {
                errorDictCount[.itemFromCunia]! += 1
            } catch UDPolicingError.nameContainsLaser{
                errorDictCount[.nameContainsLaser]! += 1
            } catch UDPolicingError.valueLessThan10{
                errorDictCount[.valueLessThan10]! += 1
            } catch {
                //I don't know what the default case should be... help?
            }
            
        }
        return errorDictCount
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"

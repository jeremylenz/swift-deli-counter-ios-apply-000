//  Sandbox.swift

import Foundation

/**

 * Write your functions here!


 
 */

func stringForDeliLine(_ deliLineString:[String]) -> String {
    
    var deliLineStringOutput:String = "The line is currently empty."
    var deliLineArray:[String] = ["\(deliLineStringOutput)"]
    
    if !deliLineString.isEmpty {
        
        deliLineArray[0] = "The line is:"
        
        
        for (index, name) in deliLineString.enumerated() {
            deliLineArray.append("\(index + 1). \(name)")
        }
        
        deliLineStringOutput = deliLineArray[0]
        
        for (index, line) in deliLineArray.enumerated() {
            print("\(line)\n")
            
            if index > 0 {
                deliLineStringOutput.append("\n\(line)")
            }
            
        }
        
    }
    
    
    
    
    return deliLineStringOutput
    
    
}




func addName(_ name:String, toDeliLine deliLine:[String]) -> [String] {
    
    var deliLineOutput:[String] = deliLine
    deliLineOutput.append(name)
    print("Welcome \(name)! You are in position number \(deliLineOutput.count).")
    return deliLineOutput
    
}


func serveNextCustomerInDeliLine(_ deliLine:[String]) -> [String] {
    
    var deliLineOutput:[String] = deliLine
    
    if !deliLineOutput.isEmpty {
        
        print("\(deliLineOutput[0]), you're next!")
        deliLineOutput.removeFirst()
    }
        
    else {
        print("There's no one on line.")
    }
    
    return deliLineOutput
    
}


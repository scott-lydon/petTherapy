import Foundation


class Get {
    
    static let shared = Get()
    init() {}
    
    func secondGiphData(giphARr: [[String]], completion: @escaping ([Data]) -> Void ) {
        
        let disGroup = DispatchGroup()
        
        var exitArr = [Data]()
        
        for giph in giphARr {
            
            disGroup.enter()
            
            let url = URL(string: "\(giph[0])")
            
            let task = URLSession.shared.dataTask(with: url! as URL)
            {
                (data, response, error) in
                
                if error != nil
                {
                    print("there is an error -SL")
                }
                    
                else
                {
                    exitArr += [data!]
                    
                    disGroup.leave()
                }
            }
            
            task.resume()
            
        }
        
        disGroup.notify(queue: .main) {
            
            completion(exitArr)
        }
        
        
        
    }//func secondGifphData
}//Class Get

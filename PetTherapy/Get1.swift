

import Foundation

extension Get {
        func firstGiphData(searchTerms: [String], completion: @escaping ([[String]]) -> Void)  {
        let kURL = "http://api.giphy.com/v1/gifs/search?q=dogs&api_key=291f380b87884fc8996bd9d0078c42e3&limit=12"
        let newsURL = URL(string: kURL)
        let task = URLSession.shared.dataTask(with: newsURL! as URL) {
            (data, response, error) in
            if error != nil {
                print("there is an error -SL")
            } else {
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
                    if let giphData = json["data"] as? [[String: Any]] {
                        
                        var giphArr = [[String]]()
                        for giphy in giphData {
                            if let id = giphy["id"] as? String {
                                if let images = giphy["images"] as? [String: Any] {
                                    if let fixedWidth = images["fixed_width"] as? [String: String] {
                                        if let url = fixedWidth["url"] {
                                            giphArr += [[url, id]]
                                        }
                                    }
                                }
                            }
                        }
                        
                        completion(giphArr)
                    }
                } catch {print("caught")}
            }
        }// URLSession...
        task.resume()
        
    }//firstGiphData
}//Get

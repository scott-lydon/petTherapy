
import UIKit
import Foundation


extension ViewController {
    func getSetGifs()  {
        Get.shared.firstGiphData(searchTerms: ["dog", "cat", "koala", "kitten", "puppy", "sloth"]) {
            (gifArr) in
            
            Get.shared.secondGiphData(giphARr: gifArr, completion: {
                (dataArr) in
                
                DispatchQueue.main.async {
                    
                    self.gifDatas = dataArr
                    self.activityIndicator.stopAnimating()
                    self.tableView.reloadData()
                }
            })
        }
    }
}

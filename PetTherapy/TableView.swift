
import UIKit
import Foundation

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gifDatas.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: giphCellReuseIdentifier, for: indexPath) as! GifTableViewCell
        cell.img.image = UIImage.gif(data: gifDatas[indexPath.row])
        //cell.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
        //cell.layoutMargins = UIEdgeInsets.zero
        //cell.img.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
        //cell.imageView?.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
       
        
        //had wrong effect
        //cell.contentMode = .scaleAspectFit
        //cell.img.contentMode = .scaleAspectFill
        //cell.img.contentMode = .scaleAspectFit
        
        
        //no effect
        //cell.imageView?.contentMode = .scaleAspectFill
        //cell.imageView?.contentMode = .scaleAspectFit
        //cell.imageView?.contentMode = .scaleToFill
        //cell.img.contentMode = .scaleToFill
        return cell
    }
}


import UIKit

class ViewController: UIViewController {

    let giphCellReuseIdentifier = "giphCellReuseIdentifier"
    var gifDatas = [Data]()
    let tableView = UITableView()
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //FAILED: view.contentMode = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        title = "Gifs"
        configureActivityIndicator()
        getSetGifs()
        configureTableView()
    }
}





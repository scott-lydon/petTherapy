
import Foundation
import UIKit

class GifTableViewCell: UITableViewCell {
    
    let img = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let marginGuide = contentView.layoutMarginsGuide
        
        contentView.addSubview(img)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        //img.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
    
        img.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor).isActive = true
        img.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
        img.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        img.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

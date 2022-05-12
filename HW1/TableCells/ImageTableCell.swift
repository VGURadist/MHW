//
//  ImageTableCell.swift
//  HW1
//
//  Created by proff on 4/26/22.
//

import UIKit

final class ImageTableCell: UITableViewCell {
    
    static let reuseIdentifier = String(describing: ImageTableCell.self)
    
    var onButtonTap: (() -> Void)?
    var likesCount: Int = 0
    
    
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var heartImageView: UIImageView!
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var nameViewLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
           onButtonTap?()
           }
    
    func likeOrLikes(likes: Int) -> String {
        var LikesEnd: String = ""
        if likes%100 > 20 {
            switch likes%10{
            case 0, (5...10):
                LikesEnd = "ов"
            case 2, 3, 4:
                LikesEnd = "а"
            default:
                LikesEnd = ""
            }
        }
        else {
            switch likes%100 {
            case 0, (5...20):
                    LikesEnd = "ов"
                case 2, 3, 4:
                    LikesEnd = "а"
                default:
                    LikesEnd = ""
                }
        }
         
        return (String(likes) + " лайк" + LikesEnd)
    }
    
    var isCh = false {
         didSet {
             if isCh {
                 likesCount += 1
             } else {
                 likesCount -= 1
             }
            heartImageView.alpha = isCh ? 1 : 0.3
            likeLabel.text = likeOrLikes(likes: likesCount)
         }
    }
    
    func configure(dbModelArray:[DataModel], indexPath: IndexPath)
    {
        likesCount = dbModelArray[indexPath.row].likesCount
        mainImageView.image = dbModelArray[indexPath.row].image
        mainImageView.clipsToBounds = true
        mainImageView.layer.cornerRadius = 3
        authorLabel.text = dbModelArray[indexPath.row].author
        nameViewLabel.text = String(indexPath.row+1) + ". " + dbModelArray[indexPath.row].description
        likeLabel.text = likeOrLikes(likes: likesCount)
        heartImageView.alpha = isCh ? 1 : 0.3
        onButtonTap = {
            self.isCh.toggle()
        }
 
     }
}

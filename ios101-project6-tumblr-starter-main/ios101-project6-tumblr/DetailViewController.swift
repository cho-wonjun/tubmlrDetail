//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Won Jun Cho on 10/23/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        postSummary.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImage)
        }
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postSummary: UITextView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    var post: Post!

}

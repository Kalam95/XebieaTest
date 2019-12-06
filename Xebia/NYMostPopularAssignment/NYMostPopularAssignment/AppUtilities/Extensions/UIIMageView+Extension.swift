//
//  UIIMageView+Extension.swift
//  Assignement_BigStep
//
//  Created by Mehboob Alam on 19/09/19.
//  Copyright © 2019 Alam. All rights reserved.
//

import UIKit

extension UIImageView {
    func downloadImage(atURL url: String?, placeholder: String?) {
        image = UIImage(named: placeholder ?? "")
//        NetworkManager.shared.downloadImage(fromUrl: url) { [weak self] image,urlString  in
//            if urlString != url {
//                return
//            }
//            DispatchQueue.main.async {
//                self?.image = image
//            }
//        }
    }
}

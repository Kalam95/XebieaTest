//
//  ProgressView.swift
//  EZRyder
//
//  Created by Mehboob Alam on 21/11/18.
//  Copyright © 2018 virtual Employee. All rights reserved.
//

import UIKit
import MapKit

class ProgressView: UIView {
    static let ID = "ProgressView"
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var activityView: UIView!
    @IBOutlet weak var noteLabel: UILabel!
 
    
    var headingText: String? {
        willSet {
            self.noteLabel.text = newValue ?? ""
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSettings()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func loadFromNib() {
        guard let view = Bundle.main.loadNibNamed(ProgressView.ID, owner: self, options: nil)?.last as? UIView else { return }
        view.frame = bounds
        addSubview(view)
        addConstraints(forView: view)
    }
    
    private func addConstraints(forView view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    func initialSettings() {
        loadFromNib()
        activityView.layer.cornerRadius = 8
        activityView.getShadow(radius: 8)
        activityIndicator.startAnimating()
    }
    
}

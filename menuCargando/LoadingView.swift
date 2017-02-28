//
//  Loading.swift
//  menuCargando
//
//  Created by Wilmer Mendoza on 27/2/17.
//  Copyright © 2017 Wilmer Mendoza. All rights reserved.
//

import UIKit

class LoadingView: NSObject {
    
    let blackView = UIView()
    let borderView = UIView()
    let myActivityIndicator = UIActivityIndicatorView()
    let messageLabel = UILabel()
    
    
    
    func showMenuLoad(){
        
        setupViews()
        
        
    }
    
    
    func hideLoadingView(){
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            self.blackView.alpha = 0
        }, completion: nil)
    
    }
    
    
    private func setupViews(){
    
        if let window = UIApplication.shared.keyWindow{
            
            //AÑADIENDO LAS VISTAS A LA VENTANA
            window.addSubview(blackView)
            blackView.addSubview(borderView)
            borderView.addSubview(myActivityIndicator)
            borderView.addSubview(messageLabel)
            
            
            
            //SETEANDO LAS VISTAS
            blackView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
            blackView.alpha = 0
            
            UIView.animate(withDuration: 1.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.blackView.alpha = 1
            }, completion: nil)
            
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideLoadingView)))
            blackView.frame = window.frame
            
            borderView.translatesAutoresizingMaskIntoConstraints = false
            borderView.backgroundColor = UIColor.white
            borderView.layer.cornerRadius = 22
            
            myActivityIndicator.translatesAutoresizingMaskIntoConstraints = false
            myActivityIndicator.startAnimating()
            myActivityIndicator.activityIndicatorViewStyle = .whiteLarge
            myActivityIndicator.color = UIColor.blue
            
            messageLabel.text = "Cargando..."
            messageLabel.translatesAutoresizingMaskIntoConstraints = false
            
            
            //CONSTRAINTS DEL BORDERVIEW Y MYACTIVITYINDICATOR
            let widthConstraint = NSLayoutConstraint(item: borderView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 138)
            
            let heightConstraint = NSLayoutConstraint(item: borderView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 138)
            
            let xConstraint = NSLayoutConstraint(item: borderView, attribute: .centerX, relatedBy: .equal, toItem: self.blackView, attribute: .centerX, multiplier: 1, constant: 0)
            
            let yConstraint = NSLayoutConstraint(item: borderView, attribute: .centerY, relatedBy: .equal, toItem: self.blackView, attribute: .centerY, multiplier: 1, constant: 0)
            
            let xConstraint2 = NSLayoutConstraint(item: myActivityIndicator, attribute: .centerX, relatedBy: .equal, toItem: self.borderView, attribute: .centerX, multiplier: 1, constant: 0)
            
            let yConstraint2 = NSLayoutConstraint(item: myActivityIndicator, attribute: .centerY, relatedBy: .equal, toItem: self.borderView, attribute: .centerY, multiplier: 1, constant: -15)
            
            let xConstraint3 = NSLayoutConstraint(item: messageLabel, attribute: .centerX, relatedBy: .equal, toItem: self.borderView, attribute: .centerX, multiplier: 1, constant: 0)
            
            let yConstraint3 = NSLayoutConstraint(item: messageLabel, attribute: .centerY, relatedBy: .equal, toItem: self.borderView, attribute: .centerY, multiplier: 1, constant: 14)
            
            NSLayoutConstraint.activate([widthConstraint,heightConstraint,xConstraint, yConstraint,yConstraint2,xConstraint2,yConstraint3,xConstraint3])
        }

    
    
    
    }

}

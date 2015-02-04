//
//  ViewController.swift
//  JSON Demo
//
//  Created by Marco F.A. Corzani on 23.01.15.
//  Copyright (c) 2015 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
        let urlPath = "http://www.telize.com/geoip"
        
        let url = NSURL(string: urlPath)
        
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithURL(url!, completionHandler: { data, response, error -> Void in
           
            if (error != nil) {
                println(error)
            } else {
                //println(data)
                
             let jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
                
                //println(jsonResult)
                
                
                
                println(jsonResult["city"])
                
               
                
            }
        })
        task.resume()
    
    }

    


}


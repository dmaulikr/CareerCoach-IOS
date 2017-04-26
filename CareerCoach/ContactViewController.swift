//
//  ContactViewController.swift
//  JobInterviewApp
//
//  Created by Rohit Dabra on 17/03/17.
//  Copyright © 2017 TMA. All rights reserved.
//

import UIKit
import MapKit

class ContactViewController: UIViewController,MKMapViewDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "btn_contact".localized;
        
        let center = CLLocationCoordinate2D(latitude: Constants.TMALattitude, longitude: Constants.TMALongitude)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        
        self.mapView?.setRegion(region, animated: true)
        self.mapView?.isZoomEnabled = true;
        
        let TMAlocation = CLLocationCoordinate2DMake(Constants.TMALattitude, Constants.TMALongitude)
        // Drop a pin
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = TMAlocation
        dropPin.title = "TMA Method"
        mapView.addAnnotation(dropPin)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

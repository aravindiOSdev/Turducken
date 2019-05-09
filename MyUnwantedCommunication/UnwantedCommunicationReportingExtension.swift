//
//  UnwantedCommunicationReportingExtension.swift
//  MyUnwantedCommunication
//
//  Created by Jeff Kelley on 5/9/19.
//  Copyright © 2019 Jeff Kelley. All rights reserved.
//

import UIKit
import IdentityLookup
import IdentityLookupUI

class UnwantedCommunicationReportingExtension: ILClassificationUIExtensionViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Notify the system when you have completed gathering information
        // from the user and you are ready with a classification response
        self.extensionContext.isReadyForClassificationResponse = true
    }
    
    // Customize UI based on the classification request before the view is loaded
    override func prepare(for classificationRequest: ILClassificationRequest) {
        // Configure your views for the classification request
    }
    
    // Provide a classification response for the classification request
    override func classificationResponse(for request:ILClassificationRequest) -> ILClassificationResponse {
        return ILClassificationResponse(action: .none)
    }

}

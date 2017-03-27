//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___Wireframe {
    
    weak var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController{
        
        let view = R.storyboard.main.rootView()
        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        let router = ___FILEBASENAMEASIDENTIFIER___Router()
    
        view?.presenter = presenter
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        
        return view!
    }
    
}

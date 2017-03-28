//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

protocol ___FILEBASENAMEASIDENTIFIER___View: class {
    var presenter: ___FILEBASENAMEASIDENTIFIER___Presentation! { get set }
    
}

protocol ___FILEBASENAMEASIDENTIFIER___Presentation: class {
    weak var view: ___FILEBASENAMEASIDENTIFIER___View? { get set }
    var interactor: ___FILEBASENAMEASIDENTIFIER___UseCase! { get set }
    var router: ___FILEBASENAMEASIDENTIFIER___Wireframe! { get set }
    
    func viewDidLoad()

}

protocol ___FILEBASENAMEASIDENTIFIER___UseCase: class {
    weak var output: ___FILEBASENAMEASIDENTIFIER___InteractorOutput! { get set }
    
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorOutput: class {

}

protocol ___FILEBASENAMEASIDENTIFIER___Wireframe: class {
    weak var viewController: UIViewController? { get set }
    
    static func assembleModule() -> UIViewController
}

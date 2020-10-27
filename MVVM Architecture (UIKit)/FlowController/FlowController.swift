//
//  FlowController.swift
//  MVVM Architecture (UIKit)
//
//  Created by Wladmir Edmar Silva Junior on 25/10/20.
//

import UIKit
import RxSwift

class FlowController: UINavigationController {

  let mainStoryboard: UIStoryboard
  let disposeBag = DisposeBag()
  
  init() {
    mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let mainViewController = mainStoryboard.instantiateViewController(
         withIdentifier: "MainViewController") as! MainViewController
    super.init(rootViewController: mainViewController)
    mainViewController.flowController = self
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - ROUTES
  
  func goToEditScreen(_ viewController: MainViewController, animated: Bool) {
    let editScreenViewController = mainStoryboard.instantiateViewController(
         withIdentifier: "EditScreenViewController") as! EditScreenViewController
    
    editScreenViewController.writeText
      .bind(to: viewController.writeTextSubject)
      .disposed(by: disposeBag)
    
    pushViewController(editScreenViewController, animated: animated)
  }
}

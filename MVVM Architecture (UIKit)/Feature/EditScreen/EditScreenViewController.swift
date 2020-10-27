
//
//  EditScreenViewController.swift
//  MVVM Architecture (UIKit)
//
//  Created Wladmir Edmar Silva Junior on 25/10/20.
//  Copyright © 2020 Wlad Code. All rights reserved.
//
//

import UIKit
import RxSwift

public protocol EditScreenViewControllerType: AnyObject {
    
}

public class EditScreenViewController: UIViewController {
  
  @IBOutlet var textArea: UITextView!
  
  // MARK: - PUBLIC PROPERTIES
  
  public var writeText: Observable<String> { // output
    return writeTextSubject.asObserver()
  }
  
  // MARK: PRIVATE PROPERTIES
  
  private let writeTextSubject = PublishSubject<String>() // input
  
  // MARK: - INITIALIZERS
  
  public init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  // MARK: - LIFE CYCLE
  
  override public func viewDidLoad() {
    super.viewDidLoad()
  }
  
  // MARK: - ACTIONS
  
  @IBAction func addAction(_ sender: Any) {
    writeTextSubject.onNext(textArea.text)    
    navigationController?.popViewController(animated: true)
  }
}

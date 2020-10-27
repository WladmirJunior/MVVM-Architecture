//
//  MainViewController.swift
//  MVVM Architecture (UIKit)
//
//  Created by Wladmir Edmar Silva Junior on 25/10/20.
//

import UIKit
import RxSwift
import RxCocoa
import RxTimelane

class MainViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: - PUBLIC PROPERTIES
  
  public var writeTextSubject = PublishSubject<String>() // input from another screen
  
  public var flowController: FlowController?
  
  // MARK: PRIVATE PROPERTIES
  
  private var notes = BehaviorRelay<[String]>(value: ["Nota de teste"]) // output to view
  private let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    bindTableView()
    bindObservables()
  }
  
  @IBAction func addAction(_ sender: Any) {
    flowController?.goToEditScreen(self, animated: true)
  }
  
  private func bindTableView() {
    notes
      .bind(to: tableView.rx.items) { tableView, index, element in
        let indexPath = IndexPath(item: index, section: 0)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = element
        return cell
      }
      .disposed(by: disposeBag)
  }
  
  private func bindObservables() {
    writeTextSubject
      .lane("Chegou uma entrada")
      .subscribe(onNext: { [weak notes] element in
        guard let notes = notes else { return }
        notes.accept(notes.value + [element])
      }).disposed(by: disposeBag)
  }
}

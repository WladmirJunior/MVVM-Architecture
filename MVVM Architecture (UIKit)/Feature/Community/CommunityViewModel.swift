//
//  CommunityViewModel.swift
//  MVVM Architecture (UIKit)
//
//  Created Wladmir Edmar Silva Junior on 26/10/20.
//  Copyright © 2020 Wlad Code. All rights reserved.
//
//

public class CommunityViewModel: CommunityViewModelType {

    // MARK: - PROPERTIES
    
    public weak var viewController: CommunityViewControllerType?
    public var viewEntity: CommunityViewEntity?
    public var viewState: CommunityViewState = .isEmpty {
        didSet {
            viewController?.updateView(with: viewState)
        }
    }
    
    // MARK: - INITIALIZERS

    public init() {

    }
    
    // MARK: - PUBLIC API

    public func initState() {
        
    }
}

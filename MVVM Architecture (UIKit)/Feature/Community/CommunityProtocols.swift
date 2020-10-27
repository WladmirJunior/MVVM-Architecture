//
//  CommunityProtocols.swift
//  MVVM Architecture (UIKit)
//
//  Created Wladmir Edmar Silva Junior on 26/10/20.
//  Copyright © 2020 Wlad Code. All rights reserved.
//
//

public protocol CommunityViewControllerType: AnyObject {
    var contentView: CommunityViewType? { get }
    var viewModel: CommunityViewModelType? { get }
}

public protocol CommunityViewModelType: AnyObject {
    var viewController: CommunityViewControllerType? { get }
    var viewEntity: CommunityViewEntity? { get set }
    var viewState: CommunityViewState { get }
    
    func initState()
}

public protocol CommunityViewControllerDelegate: AnyObject {
    
}

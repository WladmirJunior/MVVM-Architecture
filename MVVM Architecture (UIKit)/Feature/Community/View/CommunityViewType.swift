//
//  CommunityViewType.swift
//  MVVM Architecture (UIKit)
//
//  Created Wladmir Edmar Silva Junior on 26/10/20.
//  Copyright © 2020 Wlad Code. All rights reserved.
//
//
import UIKit

public protocol CommunityViewType: AnyObject {
    var content: UIView { get }
    var delegate: CommunityViewDelegate? { get set }
    func updateView(with viewState: CommunityViewState)
}

public protocol CommunityViewDelegate: AnyObject {
    // events clicks on view
}

extension CommunityViewType where Self: UIView {
    public var content: UIView { return self }
}

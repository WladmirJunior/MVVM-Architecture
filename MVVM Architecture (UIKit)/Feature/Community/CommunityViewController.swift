
//
//  CommunityViewController.swift
//  MVVM Architecture (UIKit)
//
//  Created Wladmir Edmar Silva Junior on 26/10/20.
//  Copyright © 2020 Wlad Code. All rights reserved.
//
//

import UIKit

public class CommunityViewController: UIViewController {

    // MARK: - PROPERTIES

    public let viewModel: CommunityViewModelType?
    public let contentView: CommunityViewType?


    // MARK: - INITIALIZERS

    public init(contentView: CommunityViewType = CommunityView(),
                viewModel: CommunityViewModelType) {
        self.contentView = contentView
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available (*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LIFE CYCLE

    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
        viewModel?.initState()
    }
    
    // MARK: - PRIVATE
    
    private func setup() {
        contentSetup()
    }
    
    private func contentSetup() {
        if let contentView = contentView {
            self.view = contentView.content
        }
        contentView?.delegate = self
    }
}

extension CommunityViewController: CommunityViewControllerType {
    public func updateView(with viewState: CommunityViewState) {
        contentView?.updateView(with: viewState)
    }
}


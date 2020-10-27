//
//  CommunityView.swift
//  MVVM Architecture (UIKit)
//
//  Created Wladmir Edmar Silva Junior on 26/10/20.
//  Copyright © 2020 Wlad Code. All rights reserved.
//
//

import UIKit

public class CommunityView: UIView {
    
    // MARK: - UI
    
    private lazy var view: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    // MARK: - PUBLIC API

    public weak var delegate: CommunityViewDelegate?
    
    // MARK: - INITIALIZERS
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setup()
    }

    @available (*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - PRIVATE
    
    func setup() {
        buildViewHierarchy()
        addConstraints()
    }
    
    private func buildViewHierarchy() {
        
    }
    
    private func addConstraints() {
    
    }
    
    private func updateView(with entity: CommunityViewEntity) {
        
    }
}

extension CommunityView: CommunityViewType {
    public func updateView(with viewState: CommunityViewState) {
        
    }
}

//
//  CommunityViewState.swift
//  MVVM Architecture (UIKit)
//
//  Created Wladmir Edmar Silva Junior on 26/10/20.
//  Copyright © 2020 Wlad Code. All rights reserved.
//
//

public enum CommunityViewState: Equatable {
    case hasData(CommunityViewEntity)
    case isEmpty
}

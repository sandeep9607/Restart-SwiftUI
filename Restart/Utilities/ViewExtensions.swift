//
//  ViewExtensions.swift
//  Restart
//
//  Created by Sam Maurya on 13/11/21.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
    }

}

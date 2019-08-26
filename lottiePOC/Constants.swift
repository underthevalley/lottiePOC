//
//  Constants.swift
//  lottiePOC
//
//  Created by Natalia Sibaja on 8/26/19.
//  Copyright © 2019 Natalia Sibaja. All rights reserved.
//

import UIKit

enum ColorPalette {
    case
    blue,
    cyan,
    green,
    yellow,
    purple,
    red
    
    var color:  CGColor  {
        switch self {
        case .blue:     return UIColor.blue.cgColor
        case .cyan:      return UIColor.cyan.cgColor
        case .green:    return UIColor.green.cgColor
        case .yellow:   return UIColor.yellow.cgColor
        case .purple:   return UIColor.purple.cgColor
        case .red:      return UIColor.red.cgColor
        }
    }
}

enum Animation : String {
    case good = "particles_rotating/particle_good"
    case medium = "particles_rotating/particle_moderate"
    case bad = "particles_rotating/particle_unhealthy"
}

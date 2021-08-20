//
//  Temperature.swift
//  ConvertidorTemperatura
//
//  Created by user194078 on 8/18/21.
//

import Foundation

public class Temperature {
    public let value : Float16
    public let unit: Unit
    
    public init(value: Float16, unit: Unit) {
        self.value = value
        self.unit = unit
    }

    public enum Unit {
        case FAHRENHEIT
        case CELSIUS
    }
}


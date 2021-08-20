//
//  TempertureConverter.swift
//  ConvertidorTemperatura
//
//  Created by user194078 on 8/18/21.
//

import Foundation

public class TemperatureConverter {
    public func convert(temperature: Temperature, unitToConvert: Temperature.Unit) -> Temperature {
        if (temperature.unit == Temperature.Unit.CELSIUS && unitToConvert == Temperature.Unit.FAHRENHEIT) {
            let convertedValue: Float16 = (temperature.value * 9/5) + 32
            return Temperature(value: convertedValue, unit: Temperature.Unit.FAHRENHEIT)
        } else if (temperature.unit == Temperature.Unit.FAHRENHEIT && unitToConvert == Temperature.Unit.CELSIUS) {
            let convertedValue: Float16 = (temperature.value - 32) * 5/9
            return Temperature(value: convertedValue, unit: Temperature.Unit.CELSIUS)
        } else {
            return Temperature(value: temperature.value, unit: temperature.unit)
        }
    }
}




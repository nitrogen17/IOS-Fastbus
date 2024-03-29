//
//  BusCompany.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 11/30/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

struct BusCompany {
    private var busName: String = ""
    private var busPrice: String = ""
    private var busResult: String = ""
    private var busLogo: String = ""

    init(busName: String, busPrice: String, busResult: String, busLogo: String) {
        self.busName = busName
        self.busPrice = busPrice
        self.busResult = busResult
        self.busLogo = busLogo
    }

    func getterBusName() -> String {
        return self.busName
    }

    func getterBusPrice() -> String {
        return self.busPrice
    }

    func getterBusResult() -> String {
        return self.busResult
    }

    func getterBusLogo() -> String {
        return self.busLogo
    }
}

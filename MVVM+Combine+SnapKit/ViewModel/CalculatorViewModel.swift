//
//  CalculatorViewModel.swift
//  MVVM+Combine+SnapKit
//
//  Created by Андрей Важенов on 04.04.2024.
//

import Foundation
import Combine

class CalculatorViewModel {
    
    struct Input {
        let billPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
    }
    
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    private var cancellabels = Set<AnyCancellable>()
    
    func transform(input: Input) -> Output {
        
//        input.billPublisher.sink { bill in
//            print("Text \(bill)")
//        }.store(in: &cancellabels)
        
        let result = Result(amountPerPerson: 500,
                            totalBill: 1000,
                            totalTip: 50.0)
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
}

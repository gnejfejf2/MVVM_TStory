//
//  Observable.swift
//  MVVMTestApp
//
//  Created by 강지윤 on 2022/03/09.
//

import Foundation
import UIKit

//Observable 객체 참고
//https://fomaios.tistory.com/m/entry/Design-Pattern-MVVMModel-View-ViewModel-%ED%8C%A8%ED%84%B4%EC%9D%B4%EB%9E%80-feat-Swift
//RxSwift , Combine 으로 대채해서 구현해볼 예정
class Observable<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    var value: T {
        didSet {
            listener?(value)
        }
    }
    init(_ value: T) {
        self.value = value
    }
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}

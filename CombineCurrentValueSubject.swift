//
//  CombineCurrentValueSubject.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/16/23.
//

import Foundation


import PlaygroundSupport

class TextFieldViewController : UIViewController, UITextFieldDelegate {
    
    
    var label : UILabel = UILabel()
    var textField : UITextField = UITextField()
    
    
// current value subject is used to display the current data stream value
    var textViewCurrentValue  = CurrentValueSubject<String, Never> ("hello world")
    var subscriptions = Set<AnyCancellable> ()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.text = textViewCurrentValue .value
        view.addSubview(textField)
       
        self.view = view
        textField.addTarget(self, action: #selector(didUpdateText), for: .editingChanged)
        
        
        view.addSubview(label)

        label = UILabel()
        textViewCurrentValue
            .compactMap({$0}) //
            .map ({"you typed:  \(0)"})
            .assign(to: \.text, on: label)
            .store(in: &subscriptions)
        
    }
    
    @objc func didUpdateText() {
        self.textViewCurrentValue .value = textField.text ?? ""
    }
}


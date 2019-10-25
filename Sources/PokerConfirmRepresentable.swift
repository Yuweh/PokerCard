//
//  PokerConfirmRepresentable.swift
//  PokerCard
//
//  Created by Weslie Chen on 2019/10/16.
//  Copyright © 2019 Weslie (https://www.iweslie.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

internal let buttonHorizontalInset: CGFloat = 40

protocol PokerConfirmRepresentable {
    func setupCancelButton(with title: String?)
}

extension PokerConfirmRepresentable {
    func setupCancelButton(with title: String) {}
    
    func setupConfirmButton(for pokerView: PokerView, with title: String) -> PKButton {
        let button = PKButton(title: "Confirm", fontSize: 20)
        button.isConfirmButton = true
        button.addTarget(pokerView, action: #selector(pokerView.dismiss), for: .touchUpInside)
        button.backgroundColor = PKColor.blue
        pokerView.addSubview(button)
        button.constraint(withLeadingTrailing: buttonHorizontalInset)
        button.heightAnchor.constraint(equalToConstant: 38).isActive = true
        
        return button
    }
}

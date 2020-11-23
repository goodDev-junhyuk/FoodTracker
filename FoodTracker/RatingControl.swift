//
//  RatingControl.swift
//  FoodTracker
//
//  Created by junhyuk on 2020/11/18.
//

import UIKit

class RatingControl: UIStackView {
    
    // MARK: - 이니셜라이저(Swift Language)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)

    }
    
    func ratingButtonTapped(button: UIButton) {
        
        
    }
    
    // MARK: - Private Methods.
    private func setupButtons() {
        
        // 커스텀방식으로 버튼 만들기.
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // 제약 조건
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        addArrangedSubview(button)
    }
    

}



/*
// Only override draw() if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
override func draw(_ rect: CGRect) {
    // Drawing code
}
*/


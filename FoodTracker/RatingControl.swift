//
//  RatingControl.swift
//  FoodTracker
//
//  Created by junhyuk on 2020/11/18.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    @IBDesignable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
    @IBDesignable var starCount: Int = 5
    
    // MARK: - 이니셜라이저(Swift Language)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        setupButtons()

    }
    
    @objc func ratingButtonTapped(button: UIButton) {
        
        print("커스텀 버튼 만들기 ..!")
        
    }
    
    // MARK: - Private Methods.
    private func setupButtons() {
        
        for _ in 0..<5 {
            
            // 커스텀방식으로 버튼 만들기.
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // 제약 조건
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            addArrangedSubview(button)
            
            ratingButtons.append(button)
            
            
        }
    }
}



/*
// Only override draw() if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
override func draw(_ rect: CGRect) {
    // Drawing code
}
*/


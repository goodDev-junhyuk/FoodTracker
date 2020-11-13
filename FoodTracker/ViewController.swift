//
//  ViewController.swift
//  FoodTracker
//
//  Created by junhyuk on 2020/11/02.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Hello iOS !!")
        
        nameTextField.delegate = self
    }
    
    // MARK: Action
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Label"
        
    }
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        // 키보드 숨기기.
        nameTextField.resignFirstResponder()
        // 사용자 사진보관함에서 미디어를 선택할 수 있는 ViewController.
        let imagePickerController = UIImagePickerController()
        // 찍은 사진만 선택하기.
        imagePickerController.sourceType = .photoLibrary
        // 사용자가 이미지를 선택할 때 알람이 나오는지.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
        
        
    }
    
    // MARK: - UIImagePickerControllerDelegate Pattern.
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage.rawValue] as?
                UIImage else {
                fatalError("Excepted a dictionary containing an image, but was provided the following: \(info)")
            
        }
        photoImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    // MARK: UITextFieldDelegate Pattern.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the Keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        mealNameLabel.text = textField.text
    }
    
    
    
    

}


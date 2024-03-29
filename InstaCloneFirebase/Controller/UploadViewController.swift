//
//  UploadViewController.swift
//  InstaCloneFirebase
//
//  Created by Büşra Özkan on 20.11.2022.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore


class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var commentText: UITextField!
    @IBOutlet weak var uploadClicked: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //GestureRecognizer
        imageView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(choseImage))
        imageView.addGestureRecognizer(gesture)
        
        
    }
    
    
    @objc func choseImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
    }
    
    
    
    @IBAction func uploadButton(_ sender: Any) {
        
        let storage = Storage.storage()
        let storageReference = storage.reference()
        
        let mediaFolder = storageReference.child("media")
        
        if let data = imageView.image?.jpegData(compressionQuality: 0.5){
            let imageReference = mediaFolder.child("image.jpg")
            imageReference.putData(data,metadata: nil) { (metadata, error) in
                if error != nil {
                    print(error?.localizedDescription)
                }else{
                    imageReference.downloadURL { (url, error) in
                        if error != nil {
                            let imageUrl = url?.absoluteString
                            print(imageUrl)
                        }
                    }
                }
            }
        }
        
        
    }
    
    

}

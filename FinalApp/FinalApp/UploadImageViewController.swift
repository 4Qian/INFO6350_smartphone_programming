//
//  UploadImageViewController.swift
//  FinalApp
//
//  Created by 李谦 on 4/20/23.
//

import UIKit
import CoreLocation
import RealmSwift

class UploadImageViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate,CLLocationManagerDelegate, UITextFieldDelegate {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var lblLocation: UILabel!

    var uploadProtocol: UploadImageProtocol?
    let locationManager = CLLocationManager()
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        txtTitle.delegate = self
    }

    // keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

     // take a pic
    @IBAction func takeAPic(_ sender: Any) {
        let alertController = UIAlertController(title: "Take a Picture", message: "Awesome Picture", preferredStyle: .alert)
        let cameraAction = UIAlertAction(title: "Camera", style: .default){ action in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .camera
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)

            }
        }

        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default){ action in
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .photoLibrary
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in
            print("cancel Pressed")
        }

        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        alertController.addAction(cancelAction)

        self.present(alertController, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {

            imgView.image = image
            locationManager.requestLocation()
        }
        picker.dismiss(animated: true)
    }

    //location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        getAddressFromLocation(location: location)
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }

    func getAddressFromLocation( location: CLLocation){
        let clGeoCoder = CLGeocoder()

        clGeoCoder.reverseGeocodeLocation(location) { placeMarks, error in
            if error != nil {
                print(error?.localizedDescription)
                return
            }

            var address = ""
            guard let place = placeMarks?.first else { return }
//            print( place)
            if place.name != nil {
                address += place.name! +  ", "
            }

            if place.locality != nil {
                address += place.locality! +  ", "
            }

            if place.region != nil {
                address += place.administrativeArea! +  ", "
            }

//            if place.subLocality != nil {
//                address += place.subLocality! +  ", "
//            }

            if place.postalCode != nil {
                address += place.postalCode!
            }

//            if place.country != nil {
//                address += place.country!
//            }
//            print(address)
            self.lblLocation.text = address
        }
    }

    // upload
    @IBAction func uploadAction(_ sender: Any) {

        guard let img = imgView.image else {return}
        guard let location = lblLocation.text else {return}
        guard let title = txtTitle.text else {return}

        var imageData: Data? = img.pngData()
        if (imageData?.count)! > 16000000 {
            imageData = compressImage(image: img).pngData()
       }
        
        let imgData: InstaImageCelldata = InstaImageCelldata()
        imgData.title = title
        imgData.location = location
        imgData.Image = imageData

        // Add to the Realm
        do {
            try realm.write {
                realm.add(imgData, update: .modified)
            }
        } catch let error as NSError {
            print("Unable to add values to the DB " + error.localizedDescription)
        }
        uploadProtocol?.uploadedImageDelegate(img: img, locationImg: location, titleImg: title)

//        uploadProtocol?.uploadedImageDelegate(img: img, locationImg: location, titleImg: title)

        // switch to home view automatically after uploading
        self.tabBarController?.selectedIndex = 0

    }
    
    func compressImage(image: UIImage) -> UIImage {
        let resizedImage = image.aspectFittedToHeight(250)
        return resizedImage
    }
}

extension UIImage {
    func aspectFittedToHeight(_ newHeight: CGFloat) -> UIImage {
        let scale = newHeight / self.size.height
        let newWidth = self.size.width * scale
        let newSize = CGSize(width: newWidth, height: newHeight)
        let renderer = UIGraphicsImageRenderer(size: newSize)
        
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: newSize))
        }
    }
}


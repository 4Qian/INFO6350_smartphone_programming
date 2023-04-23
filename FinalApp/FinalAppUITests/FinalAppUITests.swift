//
//  FinalAppUITests.swift
//  FinalAppUITests
//
//  Created by 李谦 on 4/21/23.
//

import XCTest

final class FinalAppUITests: XCTestCase {

    func testExample() throws {
        
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//
//
//        // test tab bar
//        let tabBar = app.tabBars["Tab Bar"]
//        XCTAssert(tabBar.exists)
//        let homeTab = tabBar.buttons["Home"]
//        XCTAssert(homeTab.exists)
//        let takePicTab = tabBar.buttons["Upload image"]
//        XCTAssert(takePicTab.exists)
//
//        // transition to second view
//        takePicTab.tap()
//
//        // test second view
//        let titleTextField = app.textFields["Title for image"]
//        XCTAssert(titleTextField.exists)
//        let uploadButton = app.staticTexts["Upload"]
//        XCTAssert(uploadButton.exists)
//        let takePicButton = app/*@START_MENU_TOKEN@*/.staticTexts["Take a Pic"]/*[[".buttons.matching(identifier: \"Take a Pic\").staticTexts[\"Take a Pic\"]",".staticTexts[\"Take a Pic\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        XCTAssert(takePicButton.exists)
//
//        // fill in title and start picking images
//        titleTextField.tap()
//        titleTextField.typeText("abc")
//        takePicButton.tap()
//
//        // allow location service if needed
//        let allowLocationAlert = app.alerts["Allow “FinalAppHasLogin” to use your location?"]
//        if allowLocationAlert.exists {
//            allowLocationAlert.scrollViews.otherElements.buttons["Allow While Using App"].tap()
//        }
//
//        // test image selection view
//        let camaryButton = app.alerts["Take a Picture"].scrollViews.otherElements.buttons["Camera"]
//        XCTAssert(camaryButton.exists)
//        let photoLibraryButton = app.alerts["Take a Picture"].scrollViews.otherElements.buttons["Photo Library"]
//        XCTAssert(photoLibraryButton.exists)
//
//        // pick up image from library
//        photoLibraryButton.tap()
//        app/*@START_MENU_TOKEN@*/.scrollViews.otherElements.images["Photo, March 30, 2018, 12:14 PM"]/*[[".otherElements[\"Photos\"].scrollViews.otherElements",".otherElements[\"Photo, March 30, 2018, 12:14 PM, Photo, August 08, 2012, 2:55 PM, Photo, August 08, 2012, 2:29 PM, Photo, August 08, 2012, 11:52 AM, Photo, October 09, 2009, 2:09 PM, Photo, March 12, 2011, 4:17 PM\"].images[\"Photo, March 30, 2018, 12:14 PM\"]",".images[\"Photo, March 30, 2018, 12:14 PM\"]",".scrollViews.otherElements"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/.tap()
//        // upload image and
//        uploadButton.tap()
//
//        // transition to home view
//        homeTab.tap()
//
//        // test home view
//        let tableQuery = app.tables
//        let titleText = tableQuery/*@START_MENU_TOKEN@*/.staticTexts["abc"]/*[[".cells.staticTexts[\"abc\"]",".staticTexts[\"abc\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        XCTAssert(titleText.exists)
//        let locationText = tableQuery.staticTexts["401 Terry Ave N, Seattle, WA, 98109"]
//        XCTAssert(locationText.exists)
        // tabBar.buttons["Profile"].tap()
        
        
//        let app = XCUIApplication()
//        let tabBar = app.tabBars["Tab Bar"]
//        let uploadImageButton = tabBar.buttons["Upload image"]
//        uploadImageButton.tap()
//
//        let titleForImageTextField = app.textFields["Title for image"]
//        titleForImageTextField.tap()
//
//        let takeAPicStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Take a Pic"]/*[[".buttons[\"Take a Pic\"].staticTexts[\"Take a Pic\"]",".staticTexts[\"Take a Pic\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        takeAPicStaticText.tap()
//
//        let photoLibraryButton = app.alerts["Take a Picture"].scrollViews.otherElements.buttons["Photo Library"]
//        photoLibraryButton.tap()
//        app/*@START_MENU_TOKEN@*/.scrollViews.otherElements.images["Photo, October 09, 2009, 2:09 PM"]/*[[".otherElements[\"Photos\"].scrollViews.otherElements",".otherElements[\"Photo, March 30, 2018, 12:14 PM, Photo, August 08, 2012, 2:55 PM, Photo, August 08, 2012, 2:29 PM, Photo, August 08, 2012, 11:52 AM, Photo, October 09, 2009, 2:09 PM, Photo, March 12, 2011, 4:17 PM\"].images[\"Photo, October 09, 2009, 2:09 PM\"]",".images[\"Photo, October 09, 2009, 2:09 PM\"]",".scrollViews.otherElements"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/.tap()
//
//        let uploadStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Upload"]/*[[".buttons[\"Upload\"].staticTexts[\"Upload\"]",".staticTexts[\"Upload\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        uploadStaticText.tap()
//        uploadImageButton.tap()
//        uploadImageButton.tap()
//        titleForImageTextField.tap()
//        takeAPicStaticText.tap()
//        photoLibraryButton.tap()
//        app/*@START_MENU_TOKEN@*/.scrollViews.otherElements.images["Photo, August 08, 2012, 2:55 PM"]/*[[".otherElements[\"Photos\"].scrollViews.otherElements",".otherElements[\"Photo, March 30, 2018, 12:14 PM, Photo, August 08, 2012, 2:55 PM, Photo, August 08, 2012, 2:29 PM, Photo, August 08, 2012, 11:52 AM, Photo, October 09, 2009, 2:09 PM, Photo, March 12, 2011, 4:17 PM\"].images[\"Photo, August 08, 2012, 2:55 PM\"]",".images[\"Photo, August 08, 2012, 2:55 PM\"]",".scrollViews.otherElements"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/.tap()
//        uploadStaticText.tap()
//        tabBar.buttons["Profile"].tap()
//
        
    }
}

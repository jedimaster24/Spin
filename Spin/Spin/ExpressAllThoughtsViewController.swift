//
//  ExpressAllThoughtsViewController.swift
//  Spin
//
//  Created by Farid Skywalker on 5/15/24.
//

import UIKit

/// User writes down all thoughts in a text view that's infinitely scrollable, with a submit button pinned to the bottom
class ExpressAllThoughtsViewController: UIViewController {

    // MARK: PROPERTIES
    
    /// Allows the text view to be longer than the screen height. Infinite length input
    private let textView: UITextView = {
        let textView = UITextView(frame: .zero)
        textView.isEditable = true
        textView.backgroundColor = .white
        textView.isScrollEnabled = true
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.showsVerticalScrollIndicator = true
        return textView
    }()
    
    /// Submit button that will send user to the next page, when tapped
    private let submitButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(Constants.submitButtonTitle, for: .normal)
        button.setTitle(Constants.tappedSubmitButtonTitle, for: .selected)
        return button
    }()
    
    /// Custom Title on Navigation Item
    private let navigationItemTitleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Constants.navigationItemTitle
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
}

// MARK: PRIVATE
private extension ExpressAllThoughtsViewController {
    enum Constants {
        static let submitButtonTitle = "Complete"
        static let tappedSubmitButtonTitle = "Great Job!"
        static let navigationItemTitle = "Express All Your Thoughts"
    }
    
    func setupViews() {
        // Add Subviews
        view.addSubview(textView)
        view.addSubview(submitButton)
        
        // Navigation Item Customization
        navigationItem.titleView = navigationItemTitleLabel
    }
    
    func setupConstraints() {
        
    }
}

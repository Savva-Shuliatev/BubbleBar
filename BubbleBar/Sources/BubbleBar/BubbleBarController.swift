//
//  BubbleBarController.swift
//
//  Copyright (c) Savva Shuliatev
//

import UIKit

open class BubbleBarController: UITabBarController {

  // MARK: - Init

  @available(iOS 18.0, *)
  public override init(tabs: [UITab]) {
    super.init(tabs: tabs)
  }

  public init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - View lifecycle

  open override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
  }
}



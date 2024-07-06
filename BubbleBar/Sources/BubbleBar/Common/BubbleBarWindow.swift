//
//  BubbleBarWindow.swift
//
//  Copyright (c) Savva Shuliatev
//

import UIKit

/*
 Отдельное UIWindow для bubbleBar-а реализовано для того, чтобы
 - оно всегда было выше основного приложения
 - независимо от ориентации основого контента bubbleBar был снизу экрана
 */

final class BubbleBarWindow: UIWindow {

  var bubbleBar: BubbleBar {
    bubbleBarViewController.bubbleBar
  }

  private let bubbleBarViewController = BubbleBarViewController()

  override init(windowScene: UIWindowScene) {
    super.init(windowScene: windowScene)

    frame = createFrame(windowScene: windowScene)
    rootViewController = bubbleBarViewController
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension BubbleBarWindow {
  func createFrame(windowScene: UIWindowScene) -> CGRect {

    if windowScene.interfaceOrientation.isPortrait {
      return CGRect(
        x: 20,
        y: windowScene.screen.bounds.height - 102,
        width: windowScene.screen.bounds.width - 40,
        height: 70
      )

    } else if windowScene.interfaceOrientation.isLandscape {
      return CGRect(
        x: 32,
        y: 20,
        width: 70,
        height: windowScene.screen.bounds.height - 40
      )
    } else {

      if windowScene.screen.bounds.height >= windowScene.screen.bounds.width {
        return CGRect(
          x: 20,
          y: windowScene.screen.bounds.height - 102,
          width: windowScene.screen.bounds.width - 40,
          height: 70
        )
      } else {
        return CGRect(
          x: 32,
          y: 20,
          width: 70,
          height: windowScene.screen.bounds.height - 40
        )
      }
    }
  }
}

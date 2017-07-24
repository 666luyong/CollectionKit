//
//  AnyCollectionProvider.swift
//  CollectionKit
//
//  Created by Luke Zhao on 2017-07-23.
//  Copyright © 2017 lkzhao. All rights reserved.
//

import UIKit

public protocol AnyCollectionProvider {
  // data
  var numberOfItems: Int { get }
  func identifier(at: Int) -> String
  
  // view
  func view(at: Int) -> UIView
  func update(view: UIView, at: Int)
  
  // layout
  func layout(collectionSize: CGSize)
  
  func visibleIndexes(activeFrame: CGRect) -> Set<Int>
  var contentSize: CGSize { get }
  func frame(at: Int) -> CGRect
  
  // event
  func willReload()
  func didReload()
  func willDrag(cell: UIView, at:Int) -> Bool
  func didDrag(cell: UIView, at:Int)
  func moveItem(at: Int, to: Int) -> Bool
  func didTap(cell: UIView, at: Int)
  
  // presentation
  func prepareForPresentation(collectionView: CollectionView)
  func shift(delta: CGPoint)
  func insert(view: UIView, at: Int, frame: CGRect)
  func delete(view: UIView, at: Int, frame: CGRect)
  func update(view: UIView, at: Int, frame: CGRect)
}

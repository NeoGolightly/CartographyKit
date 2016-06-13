//
//  LayoutContraint.swift
//  FastTap
//
//  Created by mhelmbre on 4/1/15.
//  Copyright (c) 2015 At-World. All rights reserved.
//

#if os(iOS) || os(tvOS)
  import UIKit
  public typealias View = UIView
#else
  import AppKit
  public typealias View = NSView
#endif
import Cartography

private protocol LayoutConstrainBasic{
  static func top(view: View) -> NSLayoutConstraint?
  static func bottom(view: View) -> NSLayoutConstraint?
  static func width(view: View) -> NSLayoutConstraint?
  static func height(view: View) -> NSLayoutConstraint?
  static func right(view: View) -> NSLayoutConstraint?
  static func left(view: View) -> NSLayoutConstraint?
  static func leading(view: View) -> NSLayoutConstraint?
  static func trailing(view: View) -> NSLayoutConstraint?
  static func center(view: View) -> [NSLayoutConstraint?]
  static func centerX(view: View) -> NSLayoutConstraint?
  static func centerY(view: View) -> NSLayoutConstraint?
  #if os(iOS)
  static func leftMargin(view: View) -> NSLayoutConstraint?
  static func rightMargin(view: View) -> NSLayoutConstraint?
  static func topMargin(view: View) -> NSLayoutConstraint?
  static func bottomMargin(view: View) -> NSLayoutConstraint?
  static func leadingMargin(view: View) -> NSLayoutConstraint?
  static func trailingMargin(view: View) -> NSLayoutConstraint?
  #endif
  static func edges(view: View) -> [NSLayoutConstraint?]
}

private protocol LayoutConstrainDevide{
  static func height(view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  static func centerX(view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  static func centerY(view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
}

private protocol LayoutConstrainPlus{
  static func top(view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func left(view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func right(view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func centerY(view: View, plus: CGFloat) -> NSLayoutConstraint?
}

private protocol LayoutConstrainMinus{
  static func bottom(view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func left(view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func right(view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func centerY(view: View, minus: CGFloat) -> NSLayoutConstraint?
}

private protocol LayoutConstrainMultiply{
  static func height(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func width(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func centerX(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func centerY(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  
}

private protocol LayoutConstrainEquals{
  static func width(view: View, equals: CGFloat) -> NSLayoutConstraint?
  static func height(view: View, equals: CGFloat) -> NSLayoutConstraint?
}

private protocol CartographyKitoOtherView{
  static func topToOtherViewsBottom(view1: View, otherView: View, plus: CGFloat)
  static func bottomToOtherViewsTop(view1: View, otherView: View, minus: CGFloat)
}

private protocol LayoutConstrainEdges{
  static func edges(view: View, plus: CGFloat)
  static func edges(view: View, minus: CGFloat)
  #if os(iOS)
  static func edges(view: View, insets: UIEdgeInsets)
  #endif
}

public struct CartographyKit{
  
}


///Normal Constraints
extension CartographyKit: LayoutConstrainBasic{
  
  public static func top(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.top == view.superview!.top
      return
    }
    return c
  }
  
  public static func bottom(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottom == view.superview!.bottom
      return
    }
    return c
  }
  
  
  public static func width(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width
      return
    }
    return c
  }
  
  public static func height(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height
      return
    }
    return c
  }
  
  public static func right(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right
      return
    }
    return c
  }
  
  public static func left(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left
      return
    }
    return c
  }
  
  public static func leading(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leading == view.superview!.leading
      return
    }
    return c
  }
  
  public static func trailing(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailing == view.superview!.trailing
      return
    }
    return c
  }
  
  public static func center(view: View) -> [NSLayoutConstraint?]{
    var c: [NSLayoutConstraint?] = []
    constrain(view){ view in
      c = view.center == view.superview!.center
      return
    }
    return c
  }
  
  public static func centerX(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX
      return
    }
    return c
  }
  
  public static func centerY(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY
      return
    }
    return c
  }
  #if os(iOS)
  public static func leftMargin(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leftMargin == view.superview!.leftMargin
      return
    }
    return c
  }
  
  public static func rightMargin(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.rightMargin == view.superview!.rightMargin
      return
    }
    return c
  }
  
  public static func topMargin(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.topMargin == view.superview!.topMargin
      return
    }
    return c
  }
  
  public static func bottomMargin(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottomMargin == view.superview!.bottomMargin
      return
    }
    return c
  }
  @available(OSX 10.9, *)
  public static func leadingMargin(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leadingMargin == view.superview!.leadingMargin
      return
    }
    return c
  }
  @available(OSX 10.9, *)
  public static func trailingMargin(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailingMargin == view.superview!.trailingMargin
      return
    }
    return c
  }
  #endif
  
  public static func edges(view: View)  -> [NSLayoutConstraint?]{
    var c: [NSLayoutConstraint?] = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges
      return
    }
    return c
  }
}

//MARK: - Divided and Multiplied Minus Plus
public extension CartographyKit{
  
  public static func top(view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.top == view.superview!.top +  plus
      return
    }
    return c
  }
  
  public static func bottom(view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottom == view.superview!.bottom -  minus
      return
    }
    return c
  }
  
  public static func height(view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height / dividedBy
      return
    }
    return c
  }
  
  public static func height(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height * multipliedBy
      return
    }
    return c
  }
  
  public static func width(view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width / dividedBy
      return
    }
    return c
  }
  
  public static func width(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width * multipliedBy
      return
    }
    return c
  }
  
  public static func left(view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left - minus
      return
    }
    return c
  }
  
  public static func left(view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left + plus
      return
    }
    return c
  }
  
  public static func right(view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right - minus
      return
    }
    return c
  }
  
  public static func right(view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right + plus
      return
    }
    return c
  }
  
  public static func centerX(view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX / dividedBy
      return
    }
    return c
  }
  
  public static func centerX(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX * multipliedBy
      return
    }
    return c
  }
  
  public static func centerY(view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY / dividedBy
      return
    }
    return c
  }
  
  public static func centerY(view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY * multipliedBy
      return
    }
    return c
  }
  
  public static func centerY(view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY + plus
      return
    }
    return c
  }
  
  public static func centerY(view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY - minus
      return
    }
    return c
  }
  
  public static func centerYToView(view1: View, view2: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view1, view2){ view1, view2 in
      c = view1.centerY == view2.centerY
      return
    }
    return c
  }
  
}

//MARK: - Square
public extension CartographyKit{
  
  public static func squareEqualsWidth(view: View) {
    constrain(view){ view in
      view.width == view.superview!.width
      view.height == view.superview!.width
    }
  }
  
  public static func squareEqualsHeight(view: View) {
    constrain(view){ view in
      view.width == view.superview!.height
      view.height == view.superview!.height
    }
  }
  
  public static func squareEqualsWidth(view: View, dividedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.width / dividedBy
      view.height == view.superview!.width / dividedBy
    }
  }
  
  public static func squareEqualsWidth(view: View, minus: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.width - minus
      view.height == view.superview!.width - minus
    }
  }
  
  public static func squareEqualsWidth(view: View, multipliedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.width * multipliedBy
      view.height == view.superview!.width * multipliedBy
    }
  }
  
  public static func squareEqualsHeight(view: View, dividedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.height / dividedBy
      view.height == view.superview!.height / dividedBy
    }
  }
  
  public static func squareEqualsHeight(view: View, multipliedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.height * multipliedBy
      view.height == view.superview!.height * multipliedBy
    }
  }
  
}


//MARK: - Halfs
public extension CartographyKit{
  
  public static func halfWidth(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width / 2
      return
    }
    return c
  }
  
  public static func halfHeight(view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height / 2
      return
    }
    return c
  }
}


//MARK: - Pins
public extension CartographyKit{
  public static func pinTop(view: View){
    constrain(view){ view in
      view.top == view.superview!.top
      return
    }
  }
  
  public static func pinBottom(view: View) {
    constrain(view){ view in
      view.bottom == view.superview!.bottom
      return
    }
  }
  
  public static func pinLeft(view: View) {
    constrain(view){ view in
      view.left == view.superview!.left
      return
    }
  }
  
  public static func pinRight(view: View) {
    constrain(view){ view in
      view.right == view.superview!.right
      return
    }
  }
  
  public static func pinLeftRight(view: View) {
    constrain(view){ view in
      view.left == view.superview!.left
      view.right == view.superview!.right
    }
  }
  
  public static func pinTopLeft(view: View) {
    constrain(view){ view in
      view.top == view.superview!.top
      view.left == view.superview!.left
    }
  }
  
  public static func pinTopRight(view: View) {
    constrain(view){ view in
      view.top == view.superview!.top
      view.right == view.superview!.right
    }
  }
  
  public static func pinBottomLeft(view: View) {
    constrain(view){ view in
      view.bottom == view.superview!.bottom
      view.left == view.superview!.left
    }
  }
  
  public static func pinBottomRight(view: View) {
    constrain(view){ view in
      view.bottom == view.superview!.bottom
      view.right == view.superview!.right
    }
  }
}

//MARK: - Equals
extension CartographyKit: LayoutConstrainEquals{
  public static func width(view: View, equals: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == equals
    }
    return c
  }
  
  public static func height(view: View, equals: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == equals
    }
    return c
  }
}


//MARK: - To other views
extension CartographyKit: CartographyKitoOtherView{
  
  public static func topToOtherViewsBottom(view1: View, otherView: View, plus: CGFloat) {
    constrain(view1, otherView){view1, otherView in
      view1.top == otherView.bottom + plus
      return
    }
  }
  
  
  public static func bottomToOtherViewsTop(view1: View, otherView: View, minus: CGFloat) {
    constrain(view1, otherView){view1, otherView in
      view1.bottom == otherView.top - minus
      return
    }
  }
}

extension CartographyKit: LayoutConstrainEdges{
  public static func edges(view: View, plus: CGFloat) {
    constrain(view){ view in
      view.top == view.superview!.top + plus
      view.left == view.superview!.left + plus
      view.bottom == view.superview!.bottom + plus
      view.right == view.superview!.right + plus
      return
    }
  }
  
  public static func edges(view: View, minus: CGFloat) {
    constrain(view){ view in
      view.top == view.superview!.top - minus
      view.left == view.superview!.left - minus
      view.bottom == view.superview!.bottom - minus
      view.right == view.superview!.right - minus
      return
    }
  }
  
  #if os(iOS)
  public static func edges(view: View, insets: UIEdgeInsets) {
    constrain(view){ view in
      view.top == view.superview!.top + insets.top
      view.left == view.superview!.left + insets.left
      view.bottom == view.superview!.bottom + insets.bottom
      view.right == view.superview!.right + insets.right
      return
    }
  }
  #endif
}




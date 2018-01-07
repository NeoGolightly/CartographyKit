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


public struct CartographyKit{
  
}


//TODO: All the rest

//Baselines
private protocol BasicBaselines{
  static func baseline(_ view: View) -> NSLayoutConstraint?
  static func lastBaseline(_ view: View) -> NSLayoutConstraint?
  static func firstBaseline(_ view: View) -> NSLayoutConstraint?
}

////////////////////////////////////////////////////////////////////////////////////////////////
//To other view(s)
////////////////////////////////////////////////////////////////////////////////////////////////
private protocol ToOtherViews{
  static func topToOtherViewsBottom(_ view1: View, otherView: View, plus: CGFloat)
  static func bottomToOtherViewsTop(_ view1: View, otherView: View, minus: CGFloat)
}


private protocol LayoutGuides{
  static func topToLayoutGuide(_ view: View, layoutguide: LayoutSupport) -> NSLayoutConstraint?
  static func topBottomLayoutGuide(_ view: View, layoutguide: LayoutSupport) -> NSLayoutConstraint?
}

extension CartographyKit: LayoutGuides{
  public static func topToLayoutGuide(_ view: View, layoutguide: LayoutSupport) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view, layoutguide){ view, layoutguide in
      c = view.top == layoutguide.bottom
      return
    }
    return c
  }
  
  public static func topBottomLayoutGuide(_ view: View, layoutguide: LayoutSupport) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view, layoutguide){ view, layoutguide in
      c = view.bottom == layoutguide.top
      return
    }
    return c
  }
}




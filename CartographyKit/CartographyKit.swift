//
//  LayoutContraintProxy.swift
//  FastTap
//
//  Created by mhelmbre on 4/1/15.
//  Copyright (c) 2015 At-World. All rights reserved.
//

import UIKit
import Cartography

private protocol LayoutConstrainBasic{
    static func top(view: View)
    static func bottom(view: View)
    static func width(view: View) -> NSLayoutConstraint?
    static func height(view: View)
    static func right(view: View)
    static func left(view: View)
    static func leading(view: View)
    static func trailing(view: View)
    static func center(view: View)
    static func centerX(view: View)
    static func centerY(view: View)
    static func leftMargin(view: View)
    static func rightMargin(view: View)
    static func topMargin(view: View)
    static func bottomMargin(view: View)
    static func leadingMargin(view: View)
    static func trailingMargin(view: View)
    static func edges(view: View)
}

private protocol LayoutConstrainDevide{
    static func height(view: View, dividedBy: CGFloat)
    static func centerX(view: View, dividedBy: CGFloat)
    static func centerY(view: View, dividedBy: CGFloat)
}

private protocol LayoutConstrainPlus{
    static func top(view: View, plus: CGFloat)
    static func left(view: View, plus: CGFloat)
    static func right(view: View, plus: CGFloat)
    static func centerY(view: View, plus: CGFloat)
}

private protocol LayoutConstrainMinus{
    static func bottom(view: View, minus: CGFloat)
    static func left(view: View, minus: CGFloat)
    static func right(view: View, minus: CGFloat)
    static func centerY(view: View, minus: CGFloat)
}

private protocol LayoutConstrainMultiply{
    static func height(view: View, multipliedBy: CGFloat)
    static func width(view: View, multipliedBy: CGFloat)
    static func centerX(view: View, multipliedBy: CGFloat)
    static func centerY(view: View, multipliedBy: CGFloat)
    
}

private protocol LayoutConstrainEquals{
    static func width(view: View, equals: CGFloat)
    static func height(view: View, equals: CGFloat)
}

private protocol LayoutConstrainToOtherView{
    static func topToOtherViewsBottom(view1: View, otherView: View, plus: CGFloat)
    static func bottomToOtherViewsTop(view1: View, otherView: View, minus: CGFloat)
}

private protocol LayoutConstrainEdges{
    static func edges(view: View, plus: CGFloat)
    static func edges(view: View, minus: CGFloat)
    static func edges(view: View, insets: UIEdgeInsets)
}

public struct LayoutConstraintProxy{
    
}


public typealias View = UIView

///Normal Constraints
extension LayoutConstraintProxy: LayoutConstrainBasic{
    
    public static func top(view: View){
        constrain(view){ view in
            view.top == view.superview!.top
            return
        }
    }
    
    public static func bottom(view: View){
        constrain(view){ view in
            view.bottom == view.superview!.bottom
            return
        }
    }
    
    
    public static func width(view: View)  -> NSLayoutConstraint?{
        var c: NSLayoutConstraint?
        constrain(view){ view in
            c = view.width == view.superview!.width
            return
        }
        
        return c
    }
    
    public static func height(view: View){
        constrain(view){ view in
            view.height == view.superview!.height
            return
        }
    }
    
    public static func right(view: View){
        constrain(view){ view in
            view.right == view.superview!.right
            return
        }
    }
    
    public static func left(view: View){
        constrain(view){ view in
            view.left == view.superview!.left
            return
        }
    }
    
    public static func leading(view: View){
        constrain(view){ view in
            view.leading == view.superview!.leading
            return
        }
    }
    
    public static func trailing(view: View){
        constrain(view){ view in
            view.trailing == view.superview!.trailing
            return
        }
    }
    
    public static func center(view: View){
        constrain(view){ view in
            view.center == view.superview!.center
            return
        }
    }
    
    public static func centerX(view: View){
        constrain(view){ view in
            view.centerX == view.superview!.centerX
            return
        }
    }
    
    public static func centerY(view: View){
        constrain(view){ view in
            view.centerY == view.superview!.centerY
            return
        }
    }
    
    public static func leftMargin(view: View){
        constrain(view){ view in
            view.leftMargin == view.superview!.leftMargin
            return
        }
    }
    
    public static func rightMargin(view: View){
        constrain(view){ view in
            view.rightMargin == view.superview!.rightMargin
            return
        }
    }
    
    public static func topMargin(view: View){
        constrain(view){ view in
            view.topMargin == view.superview!.topMargin
            return
        }
    }
    
    public static func bottomMargin(view: View){
        constrain(view){ view in
            view.bottomMargin == view.superview!.bottomMargin
            return
        }
    }
    
    public static func leadingMargin(view: View){
        constrain(view){ view in
            view.leadingMargin == view.superview!.leadingMargin
            return
        }
    }
    
    public static func trailingMargin(view: View){
        constrain(view){ view in
            view.trailingMargin == view.superview!.trailingMargin
            return
        }
    }
    
    public static func edges(view: View) {
        constrain(view){ view in
            view.edges == view.superview!.edges
            return
        }
    }
}

//MARK: - Divided and Multiplied Minus Plus
public extension LayoutConstraintProxy{
    
    public static func top(view: View, plus: CGFloat){
        constrain(view){ view in
            view.top == view.superview!.top +  plus
            return
        }
    }
    
    public static func bottom(view: View, minus: CGFloat){
        constrain(view){ view in
            view.bottom == view.superview!.bottom -  minus
            return
        }
    }
    
    public static func height(view: View, dividedBy: CGFloat) {
        constrain(view){ view in
            view.height == view.superview!.height / dividedBy
            return
        }
    }
    
    public static func height(view: View, multipliedBy: CGFloat) {
        constrain(view){ view in
            view.height == view.superview!.height * multipliedBy
            return
        }
    }
    
    public static func width(view: View, dividedBy: CGFloat) {
        constrain(view){ view in
            view.width == view.superview!.width / dividedBy
            return
        }
    }
    
    public static func width(view: View, multipliedBy: CGFloat) {
        constrain(view){ view in
            view.width == view.superview!.width * multipliedBy
            return
        }
    }
    
    public static func left(view: View, minus: CGFloat){
        constrain(view){ view in
            view.left == view.superview!.left - minus
            return
        }
    }
    
    public static func left(view: View, plus: CGFloat){
        constrain(view){ view in
            view.left == view.superview!.left + plus
            return
        }
    }
    
    public static func right(view: View, minus: CGFloat){
        constrain(view){ view in
            view.right == view.superview!.right - minus
            return
        }
    }
    
    public static func right(view: View, plus: CGFloat){
        constrain(view){ view in
            view.right == view.superview!.right + plus
            return
        }
    }
    
    public static func centerX(view: View, dividedBy: CGFloat){
        constrain(view){ view in
            view.centerX == view.superview!.centerX / dividedBy
            return
        }
    }
    
    public static func centerX(view: View, multipliedBy: CGFloat){
        constrain(view){ view in
            view.centerX == view.superview!.centerX * multipliedBy
            return
        }
    }
    
    public static func centerY(view: View, dividedBy: CGFloat){
        constrain(view){ view in
            view.centerY == view.superview!.centerY / dividedBy
            return
        }
    }
    
    public static func centerY(view: View, multipliedBy: CGFloat){
        constrain(view){ view in
            view.centerY == view.superview!.centerY * multipliedBy
            return
        }
    }
    
    public static func centerY(view: View, plus: CGFloat){
        constrain(view){ view in
            view.centerY == view.superview!.centerY + plus
            return
        }
    }
    
    public static func centerY(view: View, minus: CGFloat){
        constrain(view){ view in
            view.centerY == view.superview!.centerY - minus
            return
        }
    }
    
    public static func centerYToView(view1: View, view2: View){
        constrain(view1, view2){ view1, view2 in
            view1.centerY == view2.centerY
            return
        }
    }
    
}

//MARK: - Square
public extension LayoutConstraintProxy{
    
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
public extension LayoutConstraintProxy{
    
    public static func halfWidth(view: View){
        constrain(view){ view in
            view.width == view.superview!.width / 2
            return
        }
    }
    
    public static func halfHeight(view: View){
        constrain(view){ view in
            view.height == view.superview!.height / 2
            return
        }
    }
}


//MARK: - Pins
public extension LayoutConstraintProxy{
    public static func pinTop(view: View) {
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


extension LayoutConstraintProxy: LayoutConstrainEquals{
    public static func width(view: View, equals: CGFloat){
        constrain(view){ view in
            view.width == equals
        }
    }
    
    public static func height(view: View, equals: CGFloat){
        constrain(view){ view in
            view.height == equals
        }
    }
}


//MARK: - To other views
extension LayoutConstraintProxy: LayoutConstrainToOtherView{
    
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

extension LayoutConstraintProxy: LayoutConstrainEdges{
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
    
    public static func edges(view: View, insets: UIEdgeInsets) {
        constrain(view){ view in
            view.top == view.superview!.top + insets.top
            view.left == view.superview!.left + insets.left
            view.bottom == view.superview!.bottom + insets.bottom
            view.right == view.superview!.right + insets.right
            return
        }
    }
}




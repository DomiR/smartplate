//
//  SmartPlateKit.swift
//  SmartPlate
//
//  Created by Danh-Nhan Phung on 09.09.17.
//  Copyright © 2017 Hackathon. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class SmartPlateKit : NSObject {

    //// Cache

    private struct Cache {
        static let smartPlate_Green: UIColor = UIColor(red: 0.689, green: 0.910, blue: 0.502, alpha: 1.000)
        static let smartPlate_Red: UIColor = UIColor(red: 0.922, green: 0.363, blue: 0.363, alpha: 1.000)
        static let smartPlate_Yellow: UIColor = UIColor(red: 1.000, green: 0.883, blue: 0.052, alpha: 1.000)
        static let smartPlate_Turquoise: UIColor = UIColor(red: 0.242, green: 0.841, blue: 0.828, alpha: 1.000)
        static let shadow: NSShadow = NSShadow(color: UIColor.black.withAlphaComponent(0.38), offset: CGSize(width: -7, height: 0), blurRadius: 20)
        static var image: UIImage?

    }

    //// Colors

    @objc dynamic public class var smartPlate_Green: UIColor { return Cache.smartPlate_Green }
    @objc dynamic public class var smartPlate_Red: UIColor { return Cache.smartPlate_Red }
    @objc dynamic public class var smartPlate_Yellow: UIColor { return Cache.smartPlate_Yellow }
    @objc dynamic public class var smartPlate_Turquoise: UIColor { return Cache.smartPlate_Turquoise }

    //// Shadows

    @objc dynamic public class var shadow: NSShadow { return Cache.shadow }

    //// Images

    @objc dynamic public class var image: UIImage {
        if Cache.image == nil {
            Cache.image = UIImage(named: "image.png")!
        }
        return Cache.image!
    }

    //// Drawing Methods

    @objc dynamic public class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 375, height: 667), resizing: ResizingBehavior = .aspectFit, fatValue: CGFloat = 6, carbsValue: CGFloat = 151, proteinValue: CGFloat = 158, sugarValue: CGFloat = 181, caloriesTrackingValue: String = "1500 / 2500 kcal") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 375, height: 667), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 375, y: resizedFrame.height / 667)
        let resizedShadowScale: CGFloat = min(resizedFrame.width / 375, resizedFrame.height / 667)


        //// layer1
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 165, width: 375, height: 340))
        UIColor.gray.setFill()
        rectanglePath.fill()


        //// sugarIndicator Drawing
        context.saveGState()
        context.translateBy(x: 375, y: 511)
        context.rotate(by: 180 * CGFloat.pi/180)

        let sugarIndicatorPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 375, height: sugarValue))
        SmartPlateKit.smartPlate_Yellow.setFill()
        sugarIndicatorPath.fill()

        context.restoreGState()


        //// proteinIndicator Drawing
        context.saveGState()
        context.translateBy(x: 375, y: 511)
        context.rotate(by: 180 * CGFloat.pi/180)

        let proteinIndicatorPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 375, height: proteinValue))
        SmartPlateKit.smartPlate_Turquoise.setFill()
        proteinIndicatorPath.fill()

        context.restoreGState()


        //// carbsIndicator Drawing
        context.saveGState()
        context.translateBy(x: 375, y: 513)
        context.rotate(by: 180 * CGFloat.pi/180)

        let carbsIndicatorPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 375, height: carbsValue))
        SmartPlateKit.smartPlate_Green.setFill()
        carbsIndicatorPath.fill()

        context.restoreGState()


        //// fatIndicator Drawing
        context.saveGState()
        context.translateBy(x: 375, y: 513)
        context.rotate(by: 180 * CGFloat.pi/180)

        let fatIndicatorPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 375, height: fatValue))
        SmartPlateKit.smartPlate_Red.setFill()
        fatIndicatorPath.fill()

        context.restoreGState()


        //// rect3693 Drawing
        let rect3693Path = UIBezierPath()
        rect3693Path.move(to: CGPoint(x: -0.14, y: 161))
        rect3693Path.addLine(to: CGPoint(x: -0.14, y: 513))
        rect3693Path.addLine(to: CGPoint(x: 3.85, y: 496.53))
        rect3693Path.addCurve(to: CGPoint(x: 4.3, y: 487.28), controlPoint1: CGPoint(x: 3.94, y: 494.23), controlPoint2: CGPoint(x: 4.09, y: 491.29))
        rect3693Path.addCurve(to: CGPoint(x: 10.76, y: 443.41), controlPoint1: CGPoint(x: 5.24, y: 469.98), controlPoint2: CGPoint(x: 7.32, y: 455.82))
        rect3693Path.addCurve(to: CGPoint(x: 49.49, y: 395.32), controlPoint1: CGPoint(x: 17.66, y: 418.43), controlPoint2: CGPoint(x: 30.79, y: 402.13))
        rect3693Path.addCurve(to: CGPoint(x: 68.65, y: 392.99), controlPoint1: CGPoint(x: 55.44, y: 393.15), controlPoint2: CGPoint(x: 56.74, y: 392.99))
        rect3693Path.addCurve(to: CGPoint(x: 87.88, y: 394.82), controlPoint1: CGPoint(x: 79.33, y: 392.98), controlPoint2: CGPoint(x: 82.49, y: 393.28))
        rect3693Path.addCurve(to: CGPoint(x: 110.71, y: 403.39), controlPoint1: CGPoint(x: 96.05, y: 397.15), controlPoint2: CGPoint(x: 104.31, y: 400.25))
        rect3693Path.addLine(to: CGPoint(x: 115.69, y: 405.84))
        rect3693Path.addLine(to: CGPoint(x: 118.97, y: 402.61))
        rect3693Path.addCurve(to: CGPoint(x: 158.51, y: 388.62), controlPoint1: CGPoint(x: 129.42, y: 392.33), controlPoint2: CGPoint(x: 143.12, y: 387.48))
        rect3693Path.addLine(to: CGPoint(x: 166.04, y: 389.18))
        rect3693Path.addLine(to: CGPoint(x: 167.89, y: 384.71))
        rect3693Path.addCurve(to: CGPoint(x: 190.19, y: 359.29), controlPoint1: CGPoint(x: 171.69, y: 375.52), controlPoint2: CGPoint(x: 180.92, y: 365))
        rect3693Path.addLine(to: CGPoint(x: 194.62, y: 356.56))
        rect3693Path.addLine(to: CGPoint(x: 194.62, y: 340.79))
        rect3693Path.addLine(to: CGPoint(x: 194.63, y: 325.01))
        rect3693Path.addLine(to: CGPoint(x: 191.07, y: 321.9))
        rect3693Path.addCurve(to: CGPoint(x: 174.42, y: 287.83), controlPoint1: CGPoint(x: 183.27, y: 315.08), controlPoint2: CGPoint(x: 176.21, y: 300.64))
        rect3693Path.addCurve(to: CGPoint(x: 165.17, y: 280.96), controlPoint1: CGPoint(x: 173.83, y: 283.64), controlPoint2: CGPoint(x: 173.55, y: 283.44))
        rect3693Path.addCurve(to: CGPoint(x: 123.73, y: 258.66), controlPoint1: CGPoint(x: 151.9, y: 277.05), controlPoint2: CGPoint(x: 135.16, y: 268.04))
        rect3693Path.addCurve(to: CGPoint(x: 92.93, y: 217.69), controlPoint1: CGPoint(x: 111.85, y: 248.91), controlPoint2: CGPoint(x: 99.46, y: 232.43))
        rect3693Path.addCurve(to: CGPoint(x: 85.65, y: 191.63), controlPoint1: CGPoint(x: 88.56, y: 207.8), controlPoint2: CGPoint(x: 85.07, y: 195.32))
        rect3693Path.addCurve(to: CGPoint(x: 91.36, y: 186.24), controlPoint1: CGPoint(x: 86.18, y: 188.3), controlPoint2: CGPoint(x: 88.08, y: 186.24))
        rect3693Path.addLine(to: CGPoint(x: 130.11, y: 169.38))
        rect3693Path.addCurve(to: CGPoint(x: 135.59, y: 165.11), controlPoint1: CGPoint(x: 131.35, y: 167.27), controlPoint2: CGPoint(x: 133.83, y: 165.11))
        rect3693Path.addCurve(to: CGPoint(x: 142.5, y: 173.98), controlPoint1: CGPoint(x: 138.72, y: 165.11), controlPoint2: CGPoint(x: 140.51, y: 167.4))
        rect3693Path.addCurve(to: CGPoint(x: 154.17, y: 195.51), controlPoint1: CGPoint(x: 145.12, y: 182.67), controlPoint2: CGPoint(x: 148.2, y: 188.34))
        rect3693Path.addCurve(to: CGPoint(x: 173.47, y: 209.96), controlPoint1: CGPoint(x: 160.18, y: 202.71), controlPoint2: CGPoint(x: 166.07, y: 207.12))
        rect3693Path.addLine(to: CGPoint(x: 178.52, y: 211.89))
        rect3693Path.addLine(to: CGPoint(x: 180.69, y: 208.57))
        rect3693Path.addCurve(to: CGPoint(x: 201.72, y: 184.07), controlPoint1: CGPoint(x: 185.11, y: 201.84), controlPoint2: CGPoint(x: 195.87, y: 189.3))
        rect3693Path.addCurve(to: CGPoint(x: 230.47, y: 167.11), controlPoint1: CGPoint(x: 209.85, y: 176.81), controlPoint2: CGPoint(x: 221.63, y: 169.86))
        rect3693Path.addCurve(to: CGPoint(x: 247.82, y: 164.73), controlPoint1: CGPoint(x: 235.28, y: 165.62), controlPoint2: CGPoint(x: 241.56, y: 164.82))
        rect3693Path.addCurve(to: CGPoint(x: 264.98, y: 166.64), controlPoint1: CGPoint(x: 254.07, y: 164.65), controlPoint2: CGPoint(x: 260.29, y: 165.28))
        rect3693Path.addCurve(to: CGPoint(x: 318.39, y: 203.49), controlPoint1: CGPoint(x: 283.29, y: 171.97), controlPoint2: CGPoint(x: 299.69, y: 183.28))
        rect3693Path.addCurve(to: CGPoint(x: 365.43, y: 306.69), controlPoint1: CGPoint(x: 343.74, y: 230.88), controlPoint2: CGPoint(x: 359.86, y: 266.25))
        rect3693Path.addCurve(to: CGPoint(x: 365.01, y: 359.93), controlPoint1: CGPoint(x: 367.34, y: 320.55), controlPoint2: CGPoint(x: 367.14, y: 345.32))
        rect3693Path.addCurve(to: CGPoint(x: 267.21, y: 499.83), controlPoint1: CGPoint(x: 355.36, y: 426.07), controlPoint2: CGPoint(x: 317.87, y: 479.69))
        rect3693Path.addCurve(to: CGPoint(x: 224.91, y: 508.38), controlPoint1: CGPoint(x: 253.95, y: 505.09), controlPoint2: CGPoint(x: 243.01, y: 507.3))
        rect3693Path.addCurve(to: CGPoint(x: 201.4, y: 508.78), controlPoint1: CGPoint(x: 216.26, y: 508.9), controlPoint2: CGPoint(x: 205.68, y: 509.08))
        rect3693Path.addCurve(to: CGPoint(x: 127.65, y: 484.03), controlPoint1: CGPoint(x: 176.81, y: 507.07), controlPoint2: CGPoint(x: 152.69, y: 498.98))
        rect3693Path.addLine(to: CGPoint(x: 119.93, y: 479.43))
        rect3693Path.addLine(to: CGPoint(x: 114.87, y: 482.47))
        rect3693Path.addCurve(to: CGPoint(x: 84.71, y: 481.59), controlPoint1: CGPoint(x: 104.72, y: 488.57), controlPoint2: CGPoint(x: 95.87, y: 488.31))
        rect3693Path.addCurve(to: CGPoint(x: 73.39, y: 472.59), controlPoint1: CGPoint(x: 81.34, y: 479.56), controlPoint2: CGPoint(x: 76.25, y: 475.51))
        rect3693Path.addCurve(to: CGPoint(x: 57.65, y: 464.76), controlPoint1: CGPoint(x: 63.8, y: 462.81), controlPoint2: CGPoint(x: 62.15, y: 461.99))
        rect3693Path.addCurve(to: CGPoint(x: 47, y: 496.98), controlPoint1: CGPoint(x: 51.91, y: 468.29), controlPoint2: CGPoint(x: 47, y: 483.14))
        rect3693Path.addCurve(to: CGPoint(x: 43.09, y: 508.29), controlPoint1: CGPoint(x: 47, y: 502.84), controlPoint2: CGPoint(x: 45.49, y: 507.21))
        rect3693Path.addCurve(to: CGPoint(x: 41.09, y: 508.98), controlPoint1: CGPoint(x: 42.27, y: 508.67), controlPoint2: CGPoint(x: 41.65, y: 508.89))
        rect3693Path.addLine(to: CGPoint(x: 40.47, y: 513))
        rect3693Path.addLine(to: CGPoint(x: 375, y: 513))
        rect3693Path.addLine(to: CGPoint(x: 375, y: 161))
        rect3693Path.addLine(to: CGPoint(x: -0.14, y: 161))
        rect3693Path.close()
        context.saveGState()
        context.setShadow(offset: CGSize(width: SmartPlateKit.shadow.shadowOffset.width * resizedShadowScale, height: SmartPlateKit.shadow.shadowOffset.height * resizedShadowScale), blur: SmartPlateKit.shadow.shadowBlurRadius * resizedShadowScale, color: (SmartPlateKit.shadow.shadowColor as! UIColor).cgColor)
        UIColor.white.setFill()
        rect3693Path.fill()
        context.restoreGState()



        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 1, y: 114, width: 375, height: 47))
        UIColor.white.setFill()
        rectangle2Path.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 0, y: 511, width: 375, height: 29))
        UIColor.white.setFill()
        rectangle3Path.fill()


        //// Text Drawing
        let textRect = CGRect(x: 16, y: 74, width: 342, height: 40)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            NSFontAttributeName: UIFont.systemFont(ofSize: 28),
            NSForegroundColorAttributeName: UIColor.black,
            NSParagraphStyleAttributeName: textStyle,
        ]

        let textTextHeight: CGFloat = caloriesTrackingValue.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        caloriesTrackingValue.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
    




        //// Text 3 Drawing
        let text3Rect = CGRect(x: 18, y: 43, width: 342, height: 31)
        let text3TextContent = "What is in my stomach?"
        let text3Style = NSMutableParagraphStyle()
        text3Style.alignment = .center
        let text3FontAttributes = [
            NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.labelFontSize, weight: UIFontWeightBold),
            NSForegroundColorAttributeName: UIColor.black,
            NSParagraphStyleAttributeName: text3Style,
        ]

        let text3TextHeight: CGFloat = text3TextContent.boundingRect(with: CGSize(width: text3Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text3Rect)
        text3TextContent.draw(in: CGRect(x: text3Rect.minX, y: text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, width: text3Rect.width, height: text3TextHeight), withAttributes: text3FontAttributes)
        context.restoreGState()


        //// Group
        //// Text 2 Drawing
        let text2Rect = CGRect(x: 70, y: 561, width: 94, height: 25)
        let text2TextContent = "Carbs"
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .left
        let text2FontAttributes = [
            NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.labelFontSize),
            NSForegroundColorAttributeName: UIColor.black,
            NSParagraphStyleAttributeName: text2Style,
        ]

        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 32, y: 561, width: 25, height: 25))
        SmartPlateKit.smartPlate_Green.setFill()
        ovalPath.fill()


        //// Text 4 Drawing
        let text4Rect = CGRect(x: 70, y: 606, width: 94, height: 25)
        let text4TextContent = "Fat"
        let text4Style = NSMutableParagraphStyle()
        text4Style.alignment = .left
        let text4FontAttributes = [
            NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.labelFontSize),
            NSForegroundColorAttributeName: UIColor.black,
            NSParagraphStyleAttributeName: text4Style,
        ]

        let text4TextHeight: CGFloat = text4TextContent.boundingRect(with: CGSize(width: text4Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text4FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text4Rect)
        text4TextContent.draw(in: CGRect(x: text4Rect.minX, y: text4Rect.minY + (text4Rect.height - text4TextHeight) / 2, width: text4Rect.width, height: text4TextHeight), withAttributes: text4FontAttributes)
        context.restoreGState()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 32, y: 606, width: 25, height: 25))
        SmartPlateKit.smartPlate_Red.setFill()
        oval2Path.fill()


        //// Text 5 Drawing
        let text5Rect = CGRect(x: 250, y: 563, width: 94, height: 25)
        let text5TextContent = "Sugar"
        let text5Style = NSMutableParagraphStyle()
        text5Style.alignment = .left
        let text5FontAttributes = [
            NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.labelFontSize),
            NSForegroundColorAttributeName: UIColor.black,
            NSParagraphStyleAttributeName: text5Style,
        ]

        let text5TextHeight: CGFloat = text5TextContent.boundingRect(with: CGSize(width: text5Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text5FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text5Rect)
        text5TextContent.draw(in: CGRect(x: text5Rect.minX, y: text5Rect.minY + (text5Rect.height - text5TextHeight) / 2, width: text5Rect.width, height: text5TextHeight), withAttributes: text5FontAttributes)
        context.restoreGState()


        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: 212, y: 563, width: 25, height: 25))
        SmartPlateKit.smartPlate_Yellow.setFill()
        oval3Path.fill()


        //// Text 6 Drawing
        let text6Rect = CGRect(x: 250, y: 606, width: 94, height: 25)
        let text6TextContent = "Protein"
        let text6Style = NSMutableParagraphStyle()
        text6Style.alignment = .left
        let text6FontAttributes = [
            NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.labelFontSize),
            NSForegroundColorAttributeName: UIColor.black,
            NSParagraphStyleAttributeName: text6Style,
        ]

        let text6TextHeight: CGFloat = text6TextContent.boundingRect(with: CGSize(width: text6Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text6FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text6Rect)
        text6TextContent.draw(in: CGRect(x: text6Rect.minX, y: text6Rect.minY + (text6Rect.height - text6TextHeight) / 2, width: text6Rect.width, height: text6TextHeight), withAttributes: text6FontAttributes)
        context.restoreGState()


        //// Oval 4 Drawing
        let oval4Path = UIBezierPath(ovalIn: CGRect(x: 212, y: 606, width: 25, height: 25))
        SmartPlateKit.smartPlate_Turquoise.setFill()
        oval4Path.fill()
        
        context.restoreGState()

    }




    @objc(SmartPlateKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}



private extension NSShadow {
    convenience init(color: AnyObject!, offset: CGSize, blurRadius: CGFloat) {
        self.init()
        self.shadowColor = color
        self.shadowOffset = offset
        self.shadowBlurRadius = blurRadius
    }
}

//
//  CardsViewController.swift
//  LikeMeDateMe
//
//  Created by Armin Scheithauer on 04.04.15.
//  Copyright (c) 2015 Armin Scheithauer. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController, SwipeViewDelegate {

    struct Card {
        let cardView: CardView
        let swipeView: SwipeView
    }
    
    let frontCardTopMargin: CGFloat = 0
    let backCardTopMargin: CGFloat = 10
    
    @IBOutlet weak var cardStackView: UIView!
    
//    var backCard:SwipeView?
//    var frontCard:SwipeView?
    var backCard:Card?
    var frontCard:Card?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardStackView.backgroundColor = UIColor.clearColor()

        backCard = createCard(backCardTopMargin)
        cardStackView.addSubview(backCard!.swipeView)
        frontCard = createCard(frontCardTopMargin)
        cardStackView.addSubview(frontCard!.swipeView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    private func createCardFrame(topMargin:CGFloat) -> CGRect {
        
        return CGRect(x: 0, y: topMargin, width: cardStackView.frame.width, height: cardStackView.frame.height)
    }
    
    private func createCard (topMargin: CGFloat) -> Card {
        let cardView = CardView()
        let swipeView = SwipeView(frame: createCardFrame(topMargin))
        swipeView.delegate = self
        swipeView.innerView = cardView
        return Card(cardView: cardView, swipeView: swipeView)
    }
    
    // MARK: SwipeViewDelegate
    
    func swipedLeft() {
        println("Left")
        if let frontCard = frontCard {
            frontCard.swipeView.removeFromSuperview()
        }
    }
    
    func swipedRight() {
        println("Right")
        if let frontCard = frontCard {
            frontCard.swipeView.removeFromSuperview()
        }
    }

}

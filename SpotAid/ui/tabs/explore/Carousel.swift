//
//  Carousel.swift
//  SpaceAid
//
//  Created by SpaceAid Group on 11/11/21.
//

import SwiftUI

struct Carousel : View {
    @EnvironmentObject var UIState: UIStateModel
    
    let spacing: CGFloat
    let widthOfHiddenCards: CGFloat
    let totalSpacing: CGFloat
    let cardWidth: CGFloat
    
    init(spacing: CGFloat = 16, widthOfHiddenCards: CGFloat = 16) {
        self.spacing = spacing
        self.widthOfHiddenCards = widthOfHiddenCards
        self.totalSpacing = CGFloat((categories.count)) * spacing
        self.cardWidth = UIScreen.main.bounds.width - (widthOfHiddenCards * 2) - (spacing * 2)
    }
    
    var body: some View {
        let totalCanvasWidth: CGFloat = (cardWidth * CGFloat(categories.count - 1))
        let xOffsetToShift = (totalCanvasWidth - UIScreen.main.bounds.width) + totalSpacing
        let leftPadding = widthOfHiddenCards + spacing
        let totalMovement = cardWidth + spacing
        
        var offset = Float(xOffsetToShift + (leftPadding) - (totalMovement * CGFloat(UIState.activeCard)))
        
        if (UIState.activeCard == 0) && (UIState.screenDrag > 50) {
            offset += 50
        } else if (UIState.activeCard == categories.count - 1) && (UIState.screenDrag < -50) {
            offset -= 50
        } else {
            offset += UIState.screenDrag
        }
        
        return HStack(alignment: .center, spacing: spacing) {
            ForEach(0..<categories.count) { index in
                CategoryCard(index: index, cardWidth: cardWidth, cardHeight: UIScreen.main.bounds.height * 0.55)
            }
        }
        .animation(.spring())
        .offset(x: CGFloat(offset), y: 0)
        .highPriorityGesture(DragGesture().onChanged { value in
            UIState.screenDrag = Float(value.translation.width)
        }.onEnded { value in
            UIState.screenDrag = 0
            
            if (value.translation.width < -(UIScreen.main.bounds.width / 3) && UIState.activeCard < categories.count - 1) {
                UIState.activeCard += 1
            }
            
            if (value.translation.width > UIScreen.main.bounds.width / 3 && UIState.activeCard > 0) {
                UIState.activeCard -= 1
            }
        })
    }
}

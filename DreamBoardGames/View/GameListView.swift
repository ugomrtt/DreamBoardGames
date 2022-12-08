//
//  GameListView.swift
//  DreamBoardGames
//
//  Created by Ugo Mariotto on 08/12/2022.
//

import SwiftUI

struct GameListView: View {
    var games : [Game]
    
    var body: some View {

        
        ForEach(games){ game in
            NavigationLink(destination: {
                GameDetailView(game: game)
            }, label: {
                GameCell(game: game)
            })
        
        }.frame(height: 130.0)
        
    }
}

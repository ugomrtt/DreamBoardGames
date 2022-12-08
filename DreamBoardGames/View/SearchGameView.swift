//
//  SearchGameView.swift
//  DreamBoardGames
//
//  Created by Ugo Mariotto on 08/12/2022.
//

import SwiftUI

struct SearchGameView: View {
    @State private var searchTerm = ""
    @ObservedObject var viewModel : GamesViewModel
    var body: some View {
        NavigationView{
            List{
                GameListView(games: viewModel.searchGames)
            }.navigationTitle(Text("Search"))
            
        }.searchable(text: $searchTerm).onChange(of: searchTerm){ searchTerm in
            Task{ try await viewModel.searchGame(name: searchTerm) }
            
        }
    }
}

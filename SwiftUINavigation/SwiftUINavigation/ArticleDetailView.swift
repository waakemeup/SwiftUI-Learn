//
//  ArticleDetailView.swift
//  SwiftUINavigation
//
//  Created by Ruby on 2022/1/7.
//

import SwiftUI

struct ArticleDetailView: View {
    var article:Article
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack(alignment:.leading) {
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
            }
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleDetailView(article: articles[0])
        }
    }
}

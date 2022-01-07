//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Ruby on 2022/1/7.
//

import SwiftUI

struct ContentView: View {
    init(){
        let color = UIView()
        color.backgroundColor = UIColor.red
        UITableViewCell.appearance().selectedBackgroundView = color
    }
    
    
    var body: some View {
        NavigationView {
            List(articles){ article in
                ZStack {
                    ArticleRow(article: article)
                    
                    NavigationLink(destination: ArticleDetailView(article: article)){
                        EmptyView()
                    }
                }
            }
            .navigationBarTitle("Your Reading")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ArticleRow:View {
    var article:Article
    
    var body: some View {
        VStack(alignment:.leading){
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .cornerRadius(5)
            
            Text(article.title)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .lineLimit(3)
                .padding(.bottom,0)
            
            Text("By \(article.author)".uppercased())
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.bottom,0)
            
            HStack(spacing:3){
                ForEach(1...(article.rating),id:\.self){ _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                }
            }
            
            Text(article.excerpt)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

//
//  ContentView.swift
//  Itinerary
//
//  Created by Shawn Sheehan on 12/15/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "line.horizontal.3.decrease")
                            .resizable().frame(width: 24, height: 24)
                        Spacer()
                        Text("Los Angeles")
                            .font(.system(.headline, design: .rounded))
                        Text("California")
                            .fontWeight(.ultraLight)
                        Spacer()
                        Image("photo").resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 36, height: 36)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    
                    VStack (alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Hi").font(.largeTitle)
                            Text("Martin").font(.largeTitle)
                                .fontWeight(.heavy)
                        }
                        Text("Let's Discover a New Adventure")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(UIColor.systemIndigo))
                                .padding()
                            Text("Search Hotels, Taxis, etc...")
                                .font(.footnote)
                                .padding()
                            Spacer()
                            Divider().frame(height: 24)
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable().frame(width: 8, height: 8).padding()
                        }.foregroundColor(Color.secondary.opacity(0.5))
                        .background(Color.gray.opacity(0.1)).cornerRadius(80)
                        .shadow(radius: 1)
                        .padding()
                    }
                    
                    HStack {
                        VStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "airplane")
                                    .foregroundColor(.white).padding(.all, 18)
                                    .background(Color.blue.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("Flights").font(.footnote).bold()
                        }
                        Spacer()
                        VStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "bed.double.fill")
                                    .foregroundColor(.white).padding(.all, 18)
                                    .background(Color.orange.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("Hotels").font(.footnote).bold()
                        }
                        Spacer()
                        VStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "location.fill")
                                    .foregroundColor(.white).padding(.all, 18)
                                    .background(Color.purple.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("Places").font(.footnote).bold()
                        }
                        Spacer()
                        VStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "rectangle.grid.2x2.fill")
                                    .foregroundColor(.white).padding(.all, 18)
                                    .background(Color.red.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("More").font(.footnote).bold()
                        }
                    }.padding()
                    
                    Spacer()
                    
                    HStack {
                        Text("Your").font(.largeTitle)
                        Text("Trips").font(.largeTitle)
                            .fontWeight(.heavy)
                    }.padding(.vertical)
                    
                    HStack (spacing: 60) {
                        Text("Featured").bold()
                        Text("Past").foregroundColor(.secondary)
                        Text("All").foregroundColor(.secondary)
                    }.padding(.vertical)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            NavigationLink(
                                destination: ItineraryDetail()) {
                            Image("japan").resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 200, height: 270)
                                .cornerRadius(12)
                            }.buttonStyle(PlainButtonStyle())
                            Image("lisbon").resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 200, height: 270)
                                .cornerRadius(12)
                        }
                    }.padding(.trailing, -20)
                }.padding()
                .foregroundColor(Color(UIColor.systemIndigo))
                .edgesIgnoringSafeArea(.bottom)
            }.navigationBarTitle("").navigationBarHidden(true)
        }.accentColor(Color(UIColor.systemIndigo))
    }
}

struct ItineraryDetail: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Image("japan").resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(height: 450)
            }.clipShape(Curves(corner: .bottomLeft, radius: 35))
            .clipShape(Curves(corner: .bottomRight, radius: 35))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Tokyo").font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(UIColor.systemIndigo))
                    Text("Japan").font(.largeTitle)
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(UIColor.systemIndigo))
                }
                
                HStack {
                    Image(systemName: "star.fill")
                    .foregroundColor(Color(UIColor.systemIndigo))
                    Text("4.7").font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(UIColor.systemIndigo))
                }
                
                HStack (spacing: 15) {
                    VStack (spacing: 15) {
                        ZStack {
                            Image("plane").resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .opacity(0.6)
                            
                            VStack {
                                Spacer()
                                Text("Tickets").fontWeight(.heavy)
                                .foregroundColor(Color(UIColor.systemIndigo))
                            }.padding()
                        }.frame(width: 165, height: 165).cornerRadius(20)
                        
                        ZStack {
                            Image("plane").resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .opacity(0.6)
                            
                            VStack {
                                Spacer()
                                Text("Hotel").fontWeight(.heavy)
                                .foregroundColor(Color(UIColor.systemIndigo))
                            }.padding()
                        }.frame(width: 165, height: 165).cornerRadius(20)
                    }
                    
                    VStack (spacing: 15) {
                        ZStack {
                            Image("map").resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .opacity(0.6)
                            
                            VStack {
                                Spacer()
                                Text("Places").fontWeight(.heavy)
                                .foregroundColor(Color(UIColor.systemIndigo))
                            }.padding()
                        }.frame(width: 165, height: 165).cornerRadius(20)
                        ZStack {
                            Image("cloud").resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .opacity(0.6)
                            
                            VStack {
                                Spacer()
                                Text("Weather").fontWeight(.heavy)
                                .foregroundColor(Color(UIColor.systemIndigo))
                            }.padding()
                        }.frame(width: 165, height: 165).cornerRadius(20)
                    }.padding(.vertical)
                }.padding()
                Spacer()
            }.edgesIgnoringSafeArea([.top, .bottom])
        }
    }
}

struct Curves : Shape {
    var corner: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath (roundedRect: rect,
            byRoundingCorners: corner,
            cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

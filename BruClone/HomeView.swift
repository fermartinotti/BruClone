//
//  ContentView.swift
//  BruClone
//
//  Created by Hector Fernando Martinotti on 08/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var movimientoVM=MovimientoViewModel()
    
    var body: some View {
        VStack {
            headerBanner()
            fastActions()
            movementsList()
            Spacer()
        }
    }
}


struct headerBanner: View{
    var body: some View{
        HStack {
            Image(systemName: "magnifyingglass.circle")
                .resizable().frame(width: 25, height: 25)
                .padding(.bottom, 30)
                .padding(20)
                .foregroundColor(.gray)
            Spacer()
            VStack{
                Text("MI SALDO")
                    .font(.subheadline)
                    .foregroundColor(.purple)
                HStack {
                    Text("$")
                        .font(.subheadline)
                        .foregroundColor(.purple)
                    Text("4568")
                        .foregroundColor(.purple)
                        .font(.title)
                    .bold()
                    Text("50")
                        .font(.subheadline)
                        .foregroundColor(.purple)
                        .padding(.bottom)
                }
            }
            Spacer()
            Image(systemName: "bell.circle")
                .resizable().frame(width: 25, height: 25)
                .padding(.bottom, 30)
                .padding(20)
                .foregroundColor(.gray)
        }
    }
}

struct fastActions: View{
    var body: some View{
        HStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 12 , style: .continuous)
                        .fill(.purple.opacity(0.2))
                    .frame(width: 50, height: 50)
                    Text("$")
                        .font(.title3)
                        .foregroundColor(.purple)
                }
                Text("Prestamos")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 12 , style: .continuous)
                        .fill(.yellow.opacity(0.2))
                    .frame(width: 50, height: 50)
                    Image(systemName: "arrow.down")
                        .resizable().frame(width: 18, height: 20)
                        .foregroundColor(.yellow)
                }.padding(.horizontal, 20)
                Text("Depositar")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 12 , style: .continuous)
                        .fill(.green.opacity(0.2))
                    .frame(width: 50, height: 50)
                    Image(systemName: "dollarsign.circle")
                        .resizable().frame(width: 25, height: 25)
                        .foregroundColor(.green)
                }
                Text("Inversiones")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct movementsList: View{
    
    @StateObject var movimientoVM=MovimientoViewModel()
    
    var body: some View{
        VStack {
            List{
                    ForEach (movimientoVM.movimientos) { movimiento in
                        HStack{
                            AsyncImage(url: URL(string: movimiento.urlImagen)){ imagen in
                                imagen
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle().stroke(lineWidth: 1).foregroundColor(.black)
                                    ).padding()
                            }placeholder: {
                                Image(systemName: "photo")
                            }
                            VStack(alignment: .leading){
                                Text(movimiento.descripcion)
                                HStack{
                                    Text(movimiento.fecha)
                                        .font(.subheadline)
                                    .foregroundColor(.gray)
                                    Text(movimiento.hora)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                            }
                            Spacer()
                            Text("- \(movimiento.monto)")
                                .padding(.trailing, 40)
                        }
                        .listRowInsets(EdgeInsets())
                        .frame(height: 70)
                    }
            }.listStyle(PlainListStyle())
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

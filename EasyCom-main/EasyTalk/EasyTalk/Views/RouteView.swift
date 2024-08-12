//
//  ContentView.swift
//  AirAndSettings
//
//  Created by Karl-Alexandre Michaud on 2024-08-03.
//

import SwiftUI

//TODO limit the characters shown on the text field

struct RouteView: View {
    
    var body: some View {
        ZStack {

            VStack {

                //TopPage()

                AirportArea()

                Spacer()


            }


        }
    }
}


struct AirportArea: View {
    @State private var arrairport = ""
    @State private var depairport = ""
    var body: some View {
        VStack {
            
            ZStack {

                TextField("", text: $depairport, prompt: Text("Departure Aerodrome")
                    .foregroundColor(TextColour.opacity(0.8)).font(
                    Font.custom("Inter", size: 16)
                    .weight(.medium)))
                    .padding()
                    .foregroundColor(.white)
                    .background(AreaColor)
                    .cornerRadius(25)
                    .padding()
                

                Image(systemName: "airplane.departure")
                    .padding(.leading, 275)
                    .frame(width: 75.0, height: 75.0)
                    .foregroundColor(TextColour)


                
            }
            .shadow(color: Color.black.opacity(0.7), radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(0.1), radius: 5, x: -2.5, y: -2.5)
        
            
            HStack {
                
                Image(systemName: "arrow.up").resizable().frame(width: 20, height: 35).foregroundColor(.white)
                   
                Image(systemName: "arrow.down").resizable().frame(width: 20, height: 35).foregroundColor(.white)
                
            }
            .shadow(color: Color.black.opacity(0.7), radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(0.1), radius: 5, x: -2.5, y: -2.5)
            
            ZStack {
                
                
                TextField("", text: $arrairport, prompt: Text("Arrival Aerodrome")
                    .foregroundColor(TextColour.opacity(0.8)).font(
                    Font.custom("Inter", size: 16)
                    .weight(.medium)))
                    .padding()
                    .foregroundColor(.white)
                    .background(AreaColor)
                    .cornerRadius(25)
                    .padding()
                

                Image(systemName: "airplane.arrival")
                    .padding(.leading, 275)
                    .frame(width: 75.0, height: 75.0)
                    .foregroundColor(Color(red: 0.498, green: 0.52, blue: 0.58))

                
            }
            .shadow(color: Color.black.opacity(0.7), radius: 5, x: 5, y: 5)
            .shadow(color: Color.white.opacity(0.1), radius: 5, x: -2.5, y: -2.5)
            
            Button(action: {EnterButton().getdetail(dep: arrairport, arr: depairport)}, label: {
                EnterButton()
            }).padding()
            

                        
        }
    }
}

struct EnterButton: View {
    var body: some View {
        
        Text("Enter detail")
            .background(Rectangle()
                .fill(Color.red)
                .frame(width: 325, height: 35)
                .shadow(color: Color.black.opacity(0.7), radius: 5, x: 5, y: 5)
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: -2.5, y: -2.5)
                .cornerRadius(25)
                .padding())
            .foregroundColor(.white)
        
        }
    
    func getdetail(dep: String, arr: String){
        
        print(dep, arr)
    }
    
}

#Preview {
    RouteView()
}



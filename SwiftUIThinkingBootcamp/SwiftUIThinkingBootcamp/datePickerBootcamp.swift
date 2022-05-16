//
//  datePickerBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 16.05.2022.
//

import SwiftUI

struct datePickerBootcamp: View {
    @State var selectedDate : Date = Date()
    
    let startingDate : Date = Calendar.current.date(from: DateComponents(year: 2002)) ?? Date()
    let endingDate : Date = Date()
   
    var dateFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
      
        VStack{
//            Text("Selected Date: \(selectedDate.description)")
            Text("Selected Date:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.headline)
            DatePicker(
                "select a date",
                selection: $selectedDate,
                in: startingDate...endingDate,displayedComponents: [.hourAndMinute])
            .padding()
            .background(.gray.opacity(0.1))
                .cornerRadius(20)
                .datePickerStyle(.automatic)
            DatePicker(
                "Select a date",
                       selection: $selectedDate,
                displayedComponents: [.hourAndMinute])
            .padding()
            .background(.gray.opacity(0.1))
                .cornerRadius(20)
                .datePickerStyle(.automatic)
            DatePicker("Select a date", selection: $selectedDate).padding()            .accentColor(.blue)
                .background(.gray.opacity(0.1))
                .cornerRadius(20)
                .datePickerStyle(.automatic)
        }
    }
}

struct datePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        datePickerBootcamp()
    }
}

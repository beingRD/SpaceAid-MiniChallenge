//
//  NewEventSheet.swift
//  SpotAid
//
//  Created by Nicolas Mariniello on 23/11/21.
//

import SwiftUI
import EventKit

struct NewEventSheet: View {
    @Binding var isPresented: Bool
    @Binding var alerted: Bool
    
    @State var newEventTitle: String = ""
    @State var selectedDate: Date = Date()
    
    let eventStore: EKEventStore = EKEventStore()
    
    func checkCalendarAuthorization() -> Bool {
        var authorized: Bool = false
        
        switch EKEventStore.authorizationStatus(for: .event) {
        case .authorized:
            authorized = true
            
        case .denied:
            authorized = false
            
        case .notDetermined:
            eventStore.requestAccess(to: .event, completion: { granted, error in
                authorized = granted
            })
        default:
            authorized = false
        }
        
        return authorized
    }
    
    func addNewEvent() {
        if checkCalendarAuthorization() {
            guard let calendar = eventStore.defaultCalendarForNewEvents else { return }
            let event: EKEvent = EKEvent(eventStore: eventStore)
            
            event.title = newEventTitle
            event.startDate = selectedDate
            event.endDate = selectedDate.addingTimeInterval(2 * 60 * 60)
            event.calendar = calendar
            
            do {
                try eventStore.save(event, span: .thisEvent, commit: true)
            } catch {
                print("error")
            }
            
            newEventTitle = ""
        } else {
            alerted.toggle()
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Spacer()
                TextField("Event title", text: $newEventTitle, prompt: Text("Write a title for your event"))
                    .padding()
                    .background(Color("myGray"))
                    .cornerRadius(8)
                DatePicker("Choose date and time", selection: $selectedDate, in: Date()...)
                    .datePickerStyle(.graphical)
                    .padding(8)
                    .background(Color("myGray"))
                    .cornerRadius(8)
                Spacer()
                Spacer()
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
            .navigationTitle("Add new event")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isPresented.toggle()
                        newEventTitle = ""
                    }) {
                        Text("Cancel")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        addNewEvent()
                        isPresented.toggle()
                    }) {
                        Text("Done")
                    }
                    .disabled(newEventTitle.isEmpty)
                }
            }
            .padding()
        }
    }
}

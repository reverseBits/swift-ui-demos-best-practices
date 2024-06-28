# swift-ui-demos-best-practices
Swift UI Demo from vidhi - For future practices


Navigation
https://developer.apple.com/documentation/swiftui/navigation

People can move forward and backward through a stack of views using a NavigationStack, or choose which view to display from a tab bar using a TabView.
Before iOS 16 there was a NavigationView we used for providing a view for the navigation but after iOS 16 there is the new view which is NavigationStack which does the same thing as the NavigationView

NavigationView (Deprecated - Used before the iOS 16):
https://developer.apple.com/documentation/swiftui/navigationview

Use a NavigationView to create a navigation-based app in which the user can traverse a collection of views. Users navigate to a destination view by selecting a NavigationLink that you provide. On iPadOS and macOS, the destination content appears in the next column. Other platforms push a new view onto the stack and enable removing items from the stack with platform-specific controls, like a Back button or a swipe gesture.
NavigationView does not allow to push multiple views (e.g: If we are pushing screen2 from screen1 then from screen2 we can’t push screen3)

NavigationStack (Will be used after iOS 16, Introduced in WWDC 2022):
https://developer.apple.com/documentation/swiftui/navigationstack

It is the replacement for NavigationView
In NavigationStack we can push multiple views like a Stack 
Demo Of NavigationStack(Branch - Navigation, VideoListDemo)

NavigationPath:
https://developer.apple.com/documentation/swiftui/navigationpath
https://levelup.gitconnected.com/using-a-navigationstack-with-mvvm-and-swiftui-36617c9f9147
https://betterprogramming.pub/flow-navigation-with-swiftui-4-e006882c5efa


List
https://developer.apple.com/documentation/swiftui/list

Vertical List with Navigation: (VideoListView)
A container that presents rows of data arranged in a single column, optionally providing the ability to select one or more members.

@MainActor @preconcurrency
struct List<SelectionValue, Content> where SelectionValue : Hashable, Content : View

Example:
var body: some View {
    List {
        Text("A List Item")
        Text("A Second List Item")
        Text("A Third List Item")
    }
}



Vertical and Horizontal List: (RateDisplayView)
We can create HorizontalList by using ScrollView and HStack

Example:
ScrollView(.horizontal, showsIndicators: false) {
    HStack(spacing: 8) {
        ForEach(1...8, id: \.self) {_ in
            VesselCell()
        }
    }
    .listRowInsets(.init())
}
.padding(.top, 10)

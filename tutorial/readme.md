---
title: How to Make a Button with SwiftUI
published: true
description: A tutorial for making a button using SwiftUI and XCode 11
tags: swift, ios, swiftui, beta
---

If you are trying to follow along, please know that SwiftUI requires XCode 11 and macOS 10.15, all of which is in developer beta right now.

This post will walk you through how to make a basic iOS app that counts how many times a button is tapped.

# 1. Create a new project

The first step is to launch XCode and create a new single page iOS application. When creating the iOS app, make sure `Use SwiftUI` is checked.

![New project](https://github.com/maeganjwilson/totalClicked_tut/blob/master/tutorial/images/project.png?raw=true)

# 2. Create a variable and make the app output that variable

Next, we need to create a `@State` variable so that it can dynamically change when a button is tapped. Inside the ContentView struct, add `@State var totalClicked: Int = 0` and change the string inside `Text()` to `"\(totalClicked)")`.

Your struct should look like this now.

```swift
struct ContentView : View {

    @State var totalClicked: Int = 0

    var body: some View {
          Text("Hello World")
    }
}
```

# 3. Embed the `Text()` in a Verticle Stack

Now, we need to embed the text in a verticle stack to place the button below the `Text()`. To do this Command + Click on the `0` in the live preview and choose `Embed in VStack`.

![Menu that appears in XCode 11 when Command + Click on an object](https://github.com/maeganjwilson/totalClicked_tut/blob/master/tutorial/images/stackview.png?raw=true)

By embedding in a VStack, the struct now looks like this:

```swift
struct ContentView : View {

    @State var totalClicked: Int = 0

    var body: some View {
          VStack { // this was added
            Text("Hello World")
          }
    }
}
```

# 4. Add a Button with an action

It's time to add a button. A way to do this is by first adding a `Text()`. Add the following to your struct:

``` swift
// more stuff above
VStack { 
    Text("\(totalClicked)")
    Text("Increment Total) // <- This is what to add
}
// more stuff below
```

Now, let's use the live preview to embed the `Text()` in a button. Command + Click on Increment Total in Live Preview and select `Embed in Button`.

![Menu that appears in XCode 11 when Command + Click on an object](https://github.com/maeganjwilson/totalClicked_tut/blob/master/tutorial/images/button.png?raw=true)

We need to adjust the Button code that is now in `ContentView.swift`. Adjust button to look like the following:

``` swift
var body: some View {
    VStack {
        Text("\(totalClicked)")
        Button(action: {self.totalClicked = self.totalClicked + 1}) {
        Text("Increment Total")
        }
    }
}
```

Now, if you run the app it will work!

# 5. (OPTIONAL) Add some style to the app!

Currently, the button and the text have no space between each other and the size of the total is quite small. In SwiftUI, you can adjust this pretty easily.

First, let's adjust the font size of the total by adding `.font(.title)` after the Text call.

``` swift
Text("\(totalClicked").font(.title)
```

Next, we will add some space between the button and the text. To do this, we need to add `Spacer()` between the text and the button.

``` swift
Text("\(totalClicked)").font(.title)
Spacer()
Button(action: {self.totalClicked = self.totalClicked + 1}) {
    Text("Increment Total")
}       
```
The touch target on the button is a little small, so to make it bigger we will add padding to it.

``` swift 
Button(action: {self.totalClicked = self.totalClicked + 1}) {
    Text("Increment Total")
} .padding(.all)
```
The `.all` is adding padding to all sides of the button instead of just to the top, bottom, left, or right.

Finally, let's add padding to the entire `Vstack` so that the app will fill the screen of the device.

``` swift
var body: some View {
    Vstack {
        Text("\(totalClicked)").font(.title)
        Spacer()
        Button(action: {self.totalClicked = self.totalClicked + 1}) {
            Text("Increment Total")
        }.padding(.all)
    }.padding(.all, 40)
}
```

The `.padding(.all, 40)` will tell this `VStack` to have a 40 point distance to it's closest members on the top, left, right, and bottom.


Here is the finished repo {% github maeganjwilson/totalClicked_tut %}

---

If you enjoyed this article and want more, please consider subscribing to my [Patreon](https://www.patreon.com/maeganwilson_) and checking out my other posts!

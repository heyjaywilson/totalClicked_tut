---
title: How to Make a Button with SwiftUI
published: false
description: A tutorial for making a button using SwiftUI and XCode 11.
tags: swift, ios, swiftui, beta
---

If you are trying to follow along, please know that SwiftUI requires XCode 11 and macOS 10.15, all of which is in developer beta right now.

This will walk you through how to make a basic iOS app that presents the total number of times a button was tapped.

# 1. Creatre a new project

The first step is to launch XCode and create a new single page iOS application. When creating the iOS application, make sure the `Use SwiftUI` button is checked.

![New project](./images/project.png)

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

![Menu that appears in XCode 11 when Command + Click on an object](./images/stackview.png)

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

Now, let's use the libe preview to embed the `Text()` in a button.

---

If you enjoyed this article and want more, please consider subscribing to my [Patreon](https://www.patreon.com/maeganwilson_) and checking out my other posts!

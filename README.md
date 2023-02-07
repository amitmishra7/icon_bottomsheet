# icon_bottomsheet

This is a customized class for bottomsheet with dynamic icon(widget) on top with various shapes. It uses the default bottomsheet imported from `package:flutter/material.dart`. The IconBottomSheet class then creates a tranaparent border for the iconWidget. The size of the padding is defined by iconPadding. The iconSize is the size of the iconWidget and iconShape is the shape of the iconWidget. There are various shapes for iconWidget as `circle`, `square`, `circleTop`, `circleBottom`. Below are the images for the various iconShapes of IconBottomSheet.


<img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/bf_c.png?raw=true" height="300"/> <img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/bs_s.png?raw=true" height="300"/>  <img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/bf_cb.png?raw=true" height="300"/>   <img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/bs_ct.png?raw=true" height="300"/>

<img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/b_pc.png?raw=true" height="300"/> <img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/bt_pc.png?raw=true" height="300"/>  <img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/b_pl.png?raw=true" height="300"/>   <img src="https://github.com/amitmishra7/icon_bottomsheet/blob/main/assets/b_pr.png?raw=true" height="300"/>


# Arguments

| Argument           | Description                                                                                       
|--------------------|---------------------------------------------------------------------------------------------------
| child              | This is the child widget that will be displayed in the bottomsheet.                               
| iconWidget         | Widget displayed on top of bottomsheet.                                                
| iconSize           | Height/Width of the iconWidget. Defaults to 50 (height and width are same).
| iconPadding        | Transparent border padding around the iconWidget. Defaults to 16. Use 0 when not requried.
| position           | Helps to position your iconWidget on left, right or center. Defaults to center.
| iconBackgroundColor           | Defines the background color of your iconWidget. Defaults to white. In order to show no color use Colors.transparent.
| childBackgroundColor           | Defines the background color of your child widget. Defaults to white. 

# Position

| Argument               | Description                                                                                       
|------------------------|---------------------------------------------------------------------------------------------------
| Position.center       | Aligns the iconWidget to center of the bottomsheet. It is set by default if no position is passed as a param.                                
| Position.left    | Aligns the iconWidget to left of the bottomsheet. 
| Position.right | Aligns the iconWidget to right of the bottomsheet. 

# IconShape

| Argument               | Description                                                                                       
|------------------------|---------------------------------------------------------------------------------------------------
| IconShape.circle       | Creates circle shape background of iconWidget.                               
| IconShape.circleTop    | Creates circle shape from top and square shape from bottom for background of iconWidget.
| IconShape.circleBottom | Creates circle shape from bottom and square shape from top for background of iconWidget.
| IconShape.square       | Creates square shape background of iconWidget.


# Getting started

Add the package `icon_bottomsheet` to your pubspec.yaml file and do pub get.


# Usage

Firstly you need to change the canvas color in the theme of your material app so that you bottomsheet has transparent background. 

```dart
MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    canvasColor: Colors.transparent,
    ),
    home: const MyHomePage(title: 'Icon BottomSheet'),
);
```

After that import showModalBottomSheet from `material.dart` and then import the `IconBottomSheet` from `package:icon_bottomsheet/icon_bottomsheet.dart` and pass the arguments as described above.

```dart
showModalBottomSheet<int>(
    context: context,
    builder: (context) {
    return const IconBottomSheet(
        iconWidget: Icon(
        Icons.cancel_outlined,
        color: Colors.white,
        size: 100,
        ),
        iconShape: IconShape.square,
        position: Position.right,
        iconBackgroundColor: Colors.redAccent,
        //childBackgroundColor: Colors.grey,
        iconSize: 120,
        iconPadding: 20,
        child: PaymentFailed(),
    );
    },
);
```

## Contributor
[Amit Mishra](https://github.com/amitmishra7) 

## Contribute 

If you have any ideas for extending this package or have found a bug, please contribute!

1. You'll need a GitHub account.
2. Fork the icon_bottomsheet repository.
3. Work on your feature/bug.
4. Create a pull request.
5. Star this project. ⭐
6. Become a hero!! 🎉

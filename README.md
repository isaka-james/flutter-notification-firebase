# notification with firebase App
This is the flutter application that integrate well with Firebase using the FCM tokens. This is app is made to help new users to understand and able to use FCM to communicate their apps and Firebase.

## How to install:
1. Make sure you have android studio/vscode for easy installation, and create a new flutter app.
> `flutter create notification`
> Here the name of the application is `notification`
2. Install the firebase in your system. If you don't know how click [here](https://firebase.google.com/docs/flutter/setup?platform=android)
3. Login to your firebase in command line.
> `firebase login`
4. Activate the firebase CLI
> `dart pub global activate flutterfire_cli`
5. Configure your flutterfire to your account
> `flutterfire configure`
> Or you can just type `flutterfire configure --project={projectname as seen from firebase}`

Now you will be successfully connect your flutterfire with your project, and if you navigate to your firebase account, you'll see that this app is connected to your account.

Followed by adding these dependencies,
```bash
flutter pub add firebase_core
flutter pub add firebase_messaging
flutter pub add firebase_analytics
```

To send message to your app just,
1. Navigate to your [Firebase console](https://console.firebase.google.com).
2. Go to messaging, located under Run>Messaging on the your left dashboard.
3. Now on the top you will click `create new campaign`, on the pop up choose whatever you want(Or just choose the first choice).
4. Then you will be asked to fill title, notification text, and notification image(it is optional but in some cases it needs to be filled so it can work).
5. On the right side you will see ` Device preview`, downside you can click `send text message`.
6. And the message will pop up on your device.


Finally you can copy the codes from this project and implememnt them in your app.

## SCREENSHOTS
### Firebase console
![firebase-console.png](docs%2Ffirebase-console.png)

### Home Screen
![home.png](docs%2Fhome.png)

## Notification Screen
![transaction-complete.png](docs%2Ftransaction-complete.png)

### How this App works
This app receives the app notification from the firebase, and when you click the notification it directly goes to the notification screen with the information about the notification.

<img src="https://komarev.com/ghpvc/?username=flutter-nav&label=Project-Views&color=0e75b6&style=flat" alt="since 21 Feb,2024" />
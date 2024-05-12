//  registerIDTokenChangeListener();
//   registerAuthChangeListener();
//   registerUserChangeListener();

// registerIDTokenChangeListener() {
//   FirebaseAuth.instance.idTokenChanges().listen(_listener);
// }

// registerAuthChangeListener() {
//   FirebaseAuth.instance.authStateChanges().listen((User? user) {
//     if (user == null) {
//       print('User is currently signed out!');
//     } else {
//       print('User is signed in!');
//     }
//   });
// }

// registerUserChangeListener() {
//   FirebaseAuth.instance.userChanges().listen((User? user) {
//     if (user == null) {
//       print('User is currently signed out!');
//     } else {
//       print('User is signed in!');
//     }
//   });
// }

// _listener(User? user) {
//   if (user == null) {
//     print('User is currently signed out!');
//   } else {
//     print('User is signed in!');
//   }
// }

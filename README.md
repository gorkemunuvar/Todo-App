
# About

Simple Todo app with Clean Architecture.

## Screen Record


https://github.com/gorkemunuvar/Todo-App/assets/34106700/c8851b13-3092-4186-9187-9767701bd530


## How to run

In order to run the project, run the commands below in order.

```flutter pub get```

```flutter run```

```dart run build_runner build --delete-conflicting-outputs```

## Architecture

In order to create isolated, testable and clean codebase I've levaraged from the idea of 
[Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html).

Therefore each concern is seperated by different layers.

### Data Layer
The data layer is responsible for retrieving and storing data. It is the only layer that interacts with external APIs or databases. Data sources and repository impelmentation are placed in this layer to communicate with the API. 

### Domain Layer
The domain layer is responsible for the business logic of the application. It defines the entities, value objects, and use cases of the application.


### Application Layer
The application layer is responsible for implementing the use cases of the application. It uses the domain layer to do this. In our case, we utilize from BLoCs to orchestrate business logic and presentation components.


### Presentation Layer
The presentation layer is responsible for displaying data to the user and handling user input. All the widgets and screens are placed in this layer.

### Overview of the todo feature

![todo_arc](https://github.com/gorkemunuvar/Todo-App/assets/34106700/094e6f1d-3570-4425-b1bf-51dccc937f7a)





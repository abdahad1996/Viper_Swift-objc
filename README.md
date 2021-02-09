# debuzzle_Test
![unclebob ](https://miro.medium.com/max/1400/1*kZk82u88OCv5KjSDMwyo5Q.png)

Each layer from an inner circle doesn't know anything about the others outside outside

VIPER was born from Uncle Bob's Clean architecture and separates the content in five layers.

# View: Englobes all the interface classes like views, buttons, text fields and switches, and also the controllers(UIViewController, UINavigationController, etc..) since they are layers very close and have very similar concepts, since the view's lifecycle is tied to the controller

# Presenter: It is the central layer, that takes care of the user events triggered by the View, sends messages to the business layer and prepares the data from the use cases to be presented by the View. It also delegates a change of screen event to the Router layer.

# Interactor: The business rules layer. The Interactor, also known as Business, operates with the application entities to make the use cases happen. All the logic features like login, logout, fetch data, delete date, create object and others may occur in the Interactor layer.

# Model: Corresponds to all the entity classes and structs, being only an aggregation of data, such as in the MVC.

# Router: It is responsible for the navigation of the app. It has access to the navigation controllers and windows, using them to instantiate other controllers to push into them. Communicates only with the Presenter, and in some cases, with the view(when it wants to show a UI Alert)

# Manager: This layer does not exist in the original Viper and Clean architectures, but i think it is very important. It is responsible for customising request services to other data sources. Example: Preparing headers and attributes for an API request, building a query to an SQL database or any other kind of data . It is triggered by the Interactor

The relationship between those layers is shown above:
![viper ](https://miro.medium.com/max/1400/1*r-u9XYozK95UOe2tktbcBQ.png)

 


# ViperDemo
- A Demo App to display listing fetched from dynamodb-writer API.


## Development
- Swift 5.3
- XCode 12.3

## Features
- Upcoming movies information.
-  Scrolling list(e.g name,image,price)
- list details (e.g. image, name)


## Technical Notes

### Architecture
- Viper
- Builder (Module Creation)
- Protocols for communication between layers  

### Code Structure

Code has been strucutred into seven main categories, App, Scenes,Common,Resources,Services and Networking Files:

- App contain (AppDelegate)
- Modules Group containing (Viper files for Features)
- Common Group contains (reusable classes , extensions , utility)
- Service Group contains (Services Uses in Features)
- Networking Group contain (Networking Layer on Alamofire )

### Code Coverage
- Test cases for each interactor and presentor of each module
- overidden url protocol to stub custom json on network calls

### Third Party
- Custom imageCache framwork used with spm 
- Alamofire (For networking )


## Authors

* **Abdul ahad ** - (https://github.com/frodo10messi)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details



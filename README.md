# Few Conventions to follow
## Naming convention:
1. Classes, enums, typedefs, and extensions name should in UpperCamelCase.
2. Libraries, packages, directories, and source files name should be in snake_case(lowercase_with_underscores).
3. Variables, constants, parameters, and named parameters should be in lowerCamelCase.

## Null Handling
Prefer using ?? (if null) and ?. (null aware) operators instead of null checks in conditional expressions.

## Preview Deployment Details
For easy testing purposes, the master branch is autodeployed on https://acadque-app.web.app/. The Github action creates a web build for the application and deploys it to Firebase Hosting.

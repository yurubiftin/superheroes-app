# SuperHeroes
For this assessment, you'll be working on an API for tracking heroes and their superpowers.
The instructions below will walk you through the process of ideating and planning your app: deciding on your models and relationships, planning how the information will be laid out on the page, etc.
You should work through all the planning steps before you start doing any coding.
We have three models: `hero` ,   `power`, and `hero_power`.
we have three controllers as well
 ### installation
  To get started, clone the repository and navigate to the project directory:
  (https://github.com/yurubiftin/superheroes-app)
## Topics
- Models
- Associations
- Validations
- Routes, Controllers, and REST
## Instructions
To get started, run `bundle install` while inside of this directory.
Build out all of the methods listed in the deliverables. The methods are listed
           in a suggested order, but you can feel free to tackle the ones you think are
easiest. Be careful: some of the later methods rely on earlier ones.
**Remember!** This code challenge does not have tests. You cannot run `rspec`
and you cannot run `learn`. You'll need to create your own sample instances so
that you can try out your code on your own.
Make sure your associations and
methods work in the console before submitting.
We've provided you with a tool that you can use to test your code. To use it,
run `rake console` from the command line. This will start a `pry` session with
your classes defined. You can test out the methods that you write here.
You are
also encouraged to use the `seeds.rb` file to create sample data to test your
models and associations.
**Before you submit!** Save and run your code to verify that it works as you
expect.
If you have any methods that are not working yet, feel free to leave
comments describing your progress.
## What You Already Have
The starter code has migrations and models for the initial `hero` and `powers`
models, and seed data for some `hero_power` `hero`s and `power`s. The schema currently
looks like this:
#### power
| Column | Type   |
| ------ | ------ |
| name   | String |
| description |string|
#### Heroes
| Column | Type    |
| ------ | ------- |
| name   | String  |
|supername| String |
#### heroes_power
| Column | Type    |
| ------ | ------- |
|strenth|string|
| power_id | Integer |
|hero_id|integer|
### Requirements
For this project, you must:
Create a Rails API backend.
Have at least three resources (three DB tables).
Project Setup
Once you have the plan in place for the application you want to build take the following steps:
Create a new Rails project.
Create a new GitHub repository (NB: ENSURE IT IS PRIVATE).
Add your TM as a contributor to the project. (This is only for grading purposes. We promise, we won't steal your code)
Ensure you regularly commit to the repository.
Project Guidelines
Your project should conform to the following set of guidelines:
Models
You need to create the following relationships:
- A `Hero` has many `Power`s through `HeroPower`
- A `Power` has many `Hero`s through `HeroPower`
- A `HeroPower` belongs to a `Hero` and belongs to a `Power`
Start by creating the models and migrations for the following database tables:
Add any code needed in the model files to establish the relationships.
Then, run the migrations
You are welcome to generate your own seed data to test the application.
Validations
Add validations to the `HeroPower` model:
- `strength` must be one of the following values: 'Strong', 'Weak', 'Average'
Add validations to the `Power` model:
- `description` must be present and at least 20 characters long
Routes
Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.
GET /heroes
Return JSON data in the format below:
[
{ "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },
{ "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },
{ "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }
]
GET /heroes/:id
If the `Hero` exists, return JSON data in the format below:
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
If the `Hero` does not exist, return the following JSON data, along with
the appropriate HTTP status code:
{   "error": "Hero not found" }
 GET /powers
Return JSON data in the format below:
[
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 1,
    "name": "flight",
    "description": "gives the wielder the ability to fly through the skies at supersonic speed"
  }
]
 GET /powers/:id
If the `Power` exists, return JSON data in the format below:
```
{
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}
```
If the `Power` does not exist, return the following JSON data, along with
the appropriate HTTP status code:
```
{
  "error": "Power not found"
}
```
 PATCH /powers/:id
This route should update an existing `Power`. It should accept an object with
the following properties in the body of the request:
```
{
  "description": "Updated description"
}
```
If the `Power` exists and is updated successfully (passes validations), update
its description and return JSON data in the format below:
```
{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
```
If the `Power` does not exist, return the following JSON data, along with
the appropriate HTTP status code:
```
{
  "error": "Power not found"
}
```
If the `Power` is **not** updated successfully (does not pass validations),
return the following JSON data, along with the appropriate HTTP status code:
```
{
  "errors": ["validation errors"]
}
```
 POST /hero_powers
This route should create a new `HeroPower` that is associated with an
existing `Power` and `Hero`. It should accept an object with the following
properties in the body of the request:
```
{
  "strength": "Average",
  "power_id": 1,
  "hero_id": 3
}
```
If the `HeroPower` is created successfully, send back a response with the data
related to the `Hero`:
```
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
```
If the `HeroPower` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:
```
{
  "errors": ["validation errors"]
}
```
the project is live and can be accesses with the link below;
"https://superheroes-qq85.onrender.com"
## LICENSE
This repository is distributed under the ISC License
## Author
This repository is maintained by:
- [Yurub Ahmed]
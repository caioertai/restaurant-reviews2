# Feature creation steps
1. Model **(does my data/model layer support that feature?)**
2. Router **(what should be the path, and to which controller/action? see below)**
3. Controller / Action **(do I have the controller and action I need?)**
4. View **(do I have the necessary template to display this to the user?)**

# Route from Features Reasoning
|                                             VERB | PATH                                    |  CONTROLLER | ACTIONS     |
| -----------------------------------------------: | --------------------------------------- | ----------: | ----------- |
|                                              GET | /recipes                                |     recipes | index       |
|                                          **GET** | **/recipes/:id**                        | **recipes** | **show**    |
|                                          **GET** | **/recipes/:id/edit**                   | **recipes** | **edit**    |
|                                    **PATCH/PUT** | **/recipes/:id**                        | **recipes** | **update**  |
|                                              GET | /recipes/new                            |     recipes | new         |
|                                             POST | /recipes/                               |     recipes | create      |
|                                       **DELETE** | **/recipes/:id**                        | **recipes** | **destroy** |
|                               --- Collection --- |                                         |             |             |
|                                              GET | /recipes/top                            |     recipes | top         |
|                                              GET | /recipes/search                         |     recipes | search      |
|                                   --- Member --- |                                         |             |             |
|                                              GET | /restaurants/:id/chef                   | restaurants | chef        |
|                                              GET | /users/:id/profile                      |       users | profile     |
|                                   --- Nested --- |                                         |             |             |
|                                              GET | /restaurants/:restaurant_id/reviews/new |     reviews | new         |
|                                             POST | /restaurants/:restaurant_id/reviews     |     reviews | create      |
| --- Shallow (not nested), since member route --- |                                         |             |             |
|                                           DELETE | /reviews/:id                            |     reviews | destroy     |

# Feature creation steps
1. Model **(does my data/model layer support that feature?)**
2. Router **(what should be the path, and to which controller/action? see below)**
3. Controller / Action **(do I have the controller and action I need?)**
4. View **(do I have the necessary template to display this to the user?)**

# Route from Features Reasoning
|                                             VERB | PATH                                    |  CONTROLLER | ACTIONS     |
| -----------------------------------------------: | --------------------------------------- | ----------: | ----------- |
|            --- Default 7 (collection routes) ---                                                                       |
|                                              GET | /recipes                                |     recipes | index       |
|                                              GET | /recipes/new                            |     recipes | new         |
|                                             POST | /recipes/                               |     recipes | create      |
|                --- Default 7 (member routes) ---                                                                       |
|                                          **GET** | **/recipes/:id**                        | **recipes** | **show**    |
|                                          **GET** | **/recipes/:id/edit**                   | **recipes** | **edit**    |
|                                    **PATCH/PUT** | **/recipes/:id**                        | **recipes** | **update**  |
|                                       **DELETE** | **/recipes/:id**                        | **recipes** | **destroy** |
|                  --- Extra Collection Routes ---                                                                       |
|                                              GET | /recipes/top                            |     recipes | top         |
|                                              GET | /recipes/search                         |     recipes | search      |
|                      --- Extra Member Routes ---                                                                       |
|                                              GET | /restaurants/:id/chef                   | restaurants | chef        |
|                                              GET | /users/:id/profile                      |       users | profile     |
| --- Nested Routes (involves extra resources) ---                                                                       |
|                                              GET | /restaurants/:restaurant_id/reviews/new |     reviews | new         |
|                                             POST | /restaurants/:restaurant_id/reviews     |     reviews | create      |
|      --- Shallow Routes (don't nest members) ---                                                                       |
|                                           DELETE | /reviews/:id                            |     reviews | destroy     |

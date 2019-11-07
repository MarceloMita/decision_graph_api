# Decision Graph API

## Endpoints

### Resource Tree

#### Tree List

`[GET] '/trees'`

#### Show Tree

`[GET] '/trees/:slug_name'`

#### Create Tree

`[POST] '/trees'`

To create the tree:

![Is Person Healthy](/images/is_person_healthy_graph_example.jpg?raw=true)

##### Params

```JSON
{
  "title": "Is Person Healthy",
  "nodes": [
    {
      "name": "workout_node",
      "condition": "/workout = true/",
      "true_node": "eat_vegetables_node",
      "false_node": "unhealthy_leaf"
    },
    {
      "name": "eat_vegetables_node",
      "condition": "/eat_vegetables = true/",
      "true_node": "medical_checkups_node",
      "false_node": "unhealthy_leaf"
    },
    {
      "name": "medical_checkups_node",
      "condition": "/medical_checkups = true/",
      "true_node": "healthy_leaf",
      "false_node": "unhealthy_leaf"
    },
  ],
  "leafs": ["unhealthy_leaf", "healthy_leaf"],
  "root": "workout_node",
  "variables": ["workout", "eat_vegetables", "medical_checkups"]
}
```

##### Success Response
`status: 201`

```JSON
{
  "slug": "is_person_healthy",
  "title": "Is Person Healthy",
  "nodes": [
    {
      "name": "workout_node",
      "condition": "/workout = true/",
      "true_node": "eat_vegetables_node",
      "false_node": "unhealthy_leaf"
    },
    {
      "name": "eat_vegetables_node",
      "condition": "/eat_vegetables = true/",
      "true_node": "medical_checkups_node",
      "false_node": "unhealthy_leaf"
    },
    {
      "name": "medical_checkups_node",
      "condition": "/medical_checkups = true/",
      "true_node": "healthy_leaf",
      "false_node": "unhealthy_leaf"
    },
  ],
  "leafs": ["unhealthy_leaf","healthy_leaf"],
  "root": "workout_node"
}
```

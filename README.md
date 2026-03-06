# character-api## API Endpoints

All endpoints use the base URL: `http://localhost:8080/api/chcaracters`

### 1. Get All Characters
```http
GET /api/characters/
```
**Description**: Retrieve a list of all characters in the database.

**Parameters**: None

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of Character objects

#### Example Request

```bash
curl http://localhost:8080/characters

```

#### Example Response (Status: 200 OK)

```json
[
    {
		"name": "Aragorn",
		"description": "Heir of Isildur and ranger of the north",
		"universe": "Lord of the Rings",
		"species": "Human",
		"characterId": 1
	},
	{
		"name": "Bilbo Baggins",
		"description": "A hobbit who accompanied Thorin and his company to reclaim the Lonely Mountain.",
		"universe": "Lord of the Rings",
		"species": "Hobbit",
		"characterId": 2
	}
]
```
### 2. Get Charcater by ID
```http
GET /api/Characters/{id}
```

**Description**: Retrieve a single Character by their ID.

**Path Parameters**:

- `id` (Long, required): The unique identifier of the character

**Response**:

- **Status Code**: `200 OK` (if found) or `404 Not Found` (if not found)
- **Body**: Character object

#### Example Request

```bash
curl http://localhost:8080/api/character/1
```


#### Example Response (Status: 200 OK)

```json

{
	"name": "Aragorn",
	"description": "Heir of Isildur and ranger of the north",
	"universe": "Lord of the Rings",
	"species": "Human",
	"characterId": 1
}
```
#### Example Response if not found (Status: 404 Not Found)

```
(Empty body)
```

---
### 3. Create a New Character

```http
POST /api/character/
```

**Description**: Create a new character record in the database.

**Request Body**: character object with the following fields:

- `name` (String, required): Student's full name
- `description` (String, required, unique): characters description
- `universe` (String, optional): chracters universe
- `species` (String, optional): chacters speices 

**Response**:

- **Status Code**: `200 OK` (if created successfully)
- **Body**: Created Student object with assigned `characterId`

#### Example Request
```bash
curl -X POST http://localhost:8080/api/character/ \
  -H "Content-Type: application/json" \
  -d '{
		"name": "Aragorn",
		"description": "Heir of Isildur and ranger of the north",
		"universe": "Lord of the Rings",
		"species": "Human",
}
```
#### Example Response (Status: 200 OK)
```json
{
		"name": "Aragorn",
		"description": "Heir of Isildur and ranger of the north",
		"universe": "Lord of the Rings",
		"species": "Human",
		"characterId": 1
}
```
### 4. Update a existing Character 
```http
PUT /characters/{id}
```
**Description**: Update an existing student's information.

**Path Parameters**:

- `id` (Long, required): The ID of the student to update

**Request Body**: Student object with fields to update:

- `name` (String): Updated name
- `description` (String): Updated description
- `universe` (String): Updated universe
- `species` (String): Updated species

**Response**:

- **Status Code**: `200 OK` (if updated successfully) or `404 Not Found` (if student not found)
- **Body**: Updated Student object

#### Example Request
```bash
curl -X PUT http://localhost:8080/characters/1 \
-H "Content-Type: application/json" \
-d '{
"name":"Aragorn",
"description":"King of Gondor and heir of Isildur",
"universe":"Lord of the Rings",
"species":"Human"
}'
```
#### Example Response (Status: 200 OK)

```bash
{
  "characterId": 1,
  "name": "Aragorn",
  "description": "King of Gondor and heir of Isildur",
  "universe": "Lord of the Rings",
  "species": "Human"
}
```
### 5. Delete a Character
```http
DELETE /api/characters/{id}
```
**Description**: Delete an existing character record from the database.

**Path Parameters**:

- `id` (Long, required): The ID of the character to delete

**Response**:

- **Status Code**: `204 No Content` (successful deletion)
- **Body**: Empty

#### Example Request

```bash
curl -X DELETE http://localhost:8080/api/characters/1
```
#### Example Response (Status: 204 No Content)
```
(Empty body)
```

---

### 6. Filter by Catergory {Unviverse/Species}
```http
GET /characters/filter?field={field}&value={value}
```
**Description**:Retrieve characters filtered by a category field such as universe or species.

**Query Parameters**:
- `feild` (String, required): The category field (universe or species)
- `value` (String, required): The value to filter by

**Response**:
- **Status Code**: `200 OK`

- **Body**: Array of matching Character objects

#### Example Request
```bash
curl "http://localhost:8080/characters/filter?field=species&value=Hobbit"
```
#### Example Response (Status: 200 OK)

```bash
[
  {
    "characterId": 2,
    "name": "Bilbo Baggins",
    "description": "A hobbit who helped reclaim the Lonely Mountain",
    "universe": "The Hobbit",
    "species": "Hobbit"
  }
]
```
### 7. Search Character by Name 
```http
GET /characters/search?name={substring}
```
**Description**: Search for character by name (partial match supported) or retrieve all students if no name is provided.

**Query Parameters**:

- `name` (String, optional): The name or part of the name to search for

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of matched Character objects

#### Example Request

```bash
curl "http://localhost:8080/characters/search?name=gan"
```
#### Example Response (Status: 200 OK)

```json
[
  {
    "characterId": 3,
    "name": "Gandalf",
    "description": "A powerful wizard who aids the Fellowship",
    "universe": "Lord of the Rings",
    "species": "Maia"
  }
]
```

---
### Demo-Video
https://uncg-my.sharepoint.com/:v:/g/personal/afescobar_uncg_edu/IQD7vKqz9wuNTJs6yuJiuqDbAUL8p-yPu3kDHDbdZiW7Mo0?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=oV8GMy

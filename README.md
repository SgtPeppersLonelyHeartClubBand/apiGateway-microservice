# Microservices API Gateway

This project demonstrates a microservices architecture with an API Gateway, Order Service, and Customer Service. The services are containerized using Docker and managed with Docker Compose.

## Prerequisites

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Project Structure


/my-microservices-project
|-- api-gateway
| |-- Dockerfile
| |-- pom.xml
| -- src | -- main
| -- java | -- com
| -- api | -- ApiGatewayApplication.java
| -- resources | -- application.yml
|-- customer-service
| |-- Dockerfile
| |-- pom.xml
| -- src | -- main
| -- java | -- com
| -- customer | -- CustomerServiceApplication.java
| -- resources | -- application.yml
|-- order-service
| |-- Dockerfile
| |-- pom.xml
| -- src | -- main
| -- java | -- com
| -- order | -- OrderServiceApplication.java
| -- resources | -- application.yml
`-- docker-compose.yml



## Build and Run

### Step 1: Clone the Repository

```sh
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name


Step 2: Build the Services
Navigate to the root directory of the project and run the following command to build the Docker images for all services:
docker-compose up --build


Step 3: Access the Services
Once the services are up and running, you can access them via the API Gateway:

API Gateway: http://localhost:8080

Customer Service:
Get All Customers: GET http://localhost:8080/api/customers/
Get Customer by ID: GET http://localhost:8080/api/customers/{id}
Create Customer: POST http://localhost:8080/api/customers/
Update Customer: PUT http://localhost:8080/api/customers/{id}
Delete Customer: DELETE http://localhost:8080/api/customers/{id}

Order Service:
Get All Orders: GET http://localhost:8080/api/orders/
Get Order by ID: GET http://localhost:8080/api/orders/{id}
Create Order: POST http://localhost:8080/api/orders/
Update Order: PUT http://localhost:8080/api/orders/{id}
Delete Order: DELETE http://localhost:8080/api/orders/{id}

Postman Collection
A Postman collection is provided to test the API endpoints. You can import the collection into Postman using the following steps:

Open Postman.
Click on "Import" in the top left corner.
Select the provided JSON file and click "Import".
json

{
  "info": {
    "name": "Microservices API Gateway",
    "schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
  },
  "item": [
    {
      "name": "Customer Service",
      "item": [
        {
          "name": "Get All Customers",
          "request": {
            "method": "GET",
            "header": [],
            "url": {
              "raw": "http://localhost:8080/api/customers/",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "customers"
              ]
            }
          }
        },
        {
          "name": "Get Customer by ID",
          "request": {
            "method": "GET",
            "header": [],
            "url": {
              "raw": "http://localhost:8080/api/customers/{id}",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "customers",
                "{id}"
              ],
              "variable": [
                {
                  "key": "id",
                  "value": "1"
                }
              ]
            }
          }
        },
        {
          "name": "Create Customer",
          "request": {
            "method": "POST",
            "header": [
              {
                "key": "Content-Type",
                "value": "application/json"
              }
            ],
            "body": {
              "mode": "raw",
              "raw": "{\n    \"name\": \"John Doe\",\n    \"email\": \"john.doe@example.com\"\n}"
            },
            "url": {
              "raw": "http://localhost:8080/api/customers/",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "customers"
              ]
            }
          }
        },
        {
          "name": "Update Customer",
          "request": {
            "method": "PUT",
            "header": [
              {
                "key": "Content-Type",
                "value": "application/json"
              }
            ],
            "body": {
              "mode": "raw",
              "raw": "{\n    \"name\": \"John Smith\",\n    \"email\": \"john.smith@example.com\"\n}"
            },
            "url": {
              "raw": "http://localhost:8080/api/customers/{id}",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "customers",
                "{id}"
              ],
              "variable": [
                {
                  "key": "id",
                  "value": "1"
                }
              ]
            }
          }
        },
        {
          "name": "Delete Customer",
          "request": {
            "method": "DELETE",
            "header": [],
            "url": {
              "raw": "http://localhost:8080/api/customers/{id}",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "customers",
                "{id}"
              ],
              "variable": [
                {
                  "key": "id",
                  "value": "1"
                }
              ]
            }
          }
        }
      ]
    },
    {
      "name": "Order Service",
      "item": [
        {
          "name": "Get All Orders",
          "request": {
            "method": "GET",
            "header": [],
            "url": {
              "raw": "http://localhost:8080/api/orders/",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "orders"
              ]
            }
          }
        },
        {
          "name": "Get Order by ID",
          "request": {
            "method": "GET",
            "header": [],
            "url": {
              "raw": "http://localhost:8080/api/orders/{id}",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "orders",
                "{id}"
              ],
              "variable": [
                {
                  "key": "id",
                  "value": "1"
                }
              ]
            }
          }
        },
        {
          "name": "Create Order",
          "request": {
            "method": "POST",
            "header": [
              {
                "key": "Content-Type",
                "value": "application/json"
              }
            ],
            "body": {
              "mode": "raw",
              "raw": "{\n    \"customerId\": 1,\n    \"orderDate\": \"2024-06-21\",\n    \"status\": \"NEW\",\n    \"total\": 100.0\n}"
            },
            "url": {
              "raw": "http://localhost:8080/api/orders/",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "orders"
              ]
            }
          }
        },
        {
          "name": "Update Order",
          "request": {
            "method": "PUT",
            "header": [
              {
                "key": "Content-Type",
                "value": "application/json"
              }
            ],
            "body": {
              "mode": "raw",
              "raw": "{\n    \"customerId\": 1,\n    \"orderDate\": \"2024-06-21\",\n    \"status\": \"SHIPPED\",\n    \"total\": 150.0\n}"
            },
            "url": {
              "raw": "http://localhost:8080/api/orders/{id}",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "orders",
                "{id}"
              ],
              "variable": [
                {
                  "key": "id",
                  "value": "1"
                }
              ]
            }
          }
        },
        {
          "name": "Delete Order",
          "request": {
            "method": "DELETE",
            "header": [],
            "url": {
              "raw": "http://localhost:8080/api/orders/{id}",
              "protocol": "http",
              "host": [
                "localhost"
              ],
              "port": "8080",
              "path": [
                "api",
                "orders",
                "{id}"
              ],
              "variable": [
                {
                  "key": "id",
                  "value": "1"
                }
              ]
            }
          }
        }
      ]
    }
  ]
}

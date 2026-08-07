# 🎨 Frontend Client - Three Tier Application

This folder contains the frontend layer of the three-tier application.

The frontend is responsible for:

- User Interface (UI)
- User interaction
- Sending requests to backend API
- Displaying application data


# 🏗️ Frontend Architecture

```
             User
              |
              |
       Frontend Client
        HTML + CSS + JS
              |
              |
        Backend API
       Node.js Express
              |
              |
        MySQL Database
```


# 📂 Folder Structure

```
client/

├── index.html
│   └── Main application page
│
├── css/
│   └── style.css
│       └── UI design and styling
│
├── js/
│   └── app.js
│       └── Frontend logic and API communication
│
└── README.md
    └── Frontend documentation
```


# 🎨 UI Styling

Frontend styling is managed using CSS.

## CSS File

```bash
css/style.css
```

Contains:

- Page layout
- Colors
- Fonts
- Font sizes
- Button styles
- Cards
- Responsive design


## Example CSS

```css
body {

    font-family: Arial, sans-serif;

    font-size: 16px;

    background-color: #f4f6f8;

    color: #333;

}


h1 {

    font-size: 32px;

    font-weight: bold;

    color: #1f2937;

}


button {

    font-size: 16px;

    padding: 10px 20px;

    border-radius: 8px;

    background-color: #2563eb;

    color: white;

}
```


# ✨ Font & Design Guidelines

## Font Family

Used fonts:

```
Arial
Sans-serif
```


## Font Sizes

```
Main Heading (h1)

32px


Section Heading (h2)

24px


Normal Text

16px


Small Text

14px
```


## Colors

```
Primary Color

#2563eb


Background Color

#f4f6f8


Text Color

#333333


Button Color

#2563eb
```


## UI Style

Design follows:

- Clean layout
- Simple dashboard style
- Responsive design
- Modern card-based components
- User-friendly interface


# ⚙️ JavaScript Functionality

Frontend logic is handled by:

```bash
js/app.js
```

Responsibilities:

- Backend API calls
- Data fetching
- Button actions
- Dynamic UI updates


## Example

```javascript
fetch("http://localhost:5000/api/users")

.then(response => response.json())

.then(data => {

    console.log(data);

});
```


# 🚀 Running Frontend Locally

Clone repository:

```bash
git clone <repository-url>

cd src/client
```


Run frontend:

```bash
python3 -m http.server 8080
```


Open browser:

```
http://localhost:8080
```


# 🐳 Docker Deployment

Frontend is containerized using Docker.


## Dockerfile

```dockerfile
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
```


Build image:

```bash
docker build -t frontend-app .
```


Run container:

```bash
docker run -p 8080:80 frontend-app
```


# ☸️ Kubernetes Deployment

Frontend runs as a Kubernetes workload.

Deployment flow:

```
Frontend Pod

       |

Frontend Service

       |

Ingress

       |

AWS Load Balancer
```


# 🔐 Security Practices

Implemented:

✅ Secure API communication

✅ Environment-based configuration

✅ Container vulnerability scanning

✅ Kubernetes security policies

✅ Non-root container execution


# 📌 Future Improvements

- Convert to React application
- Add component-based architecture
- Add frontend testing
- Add CI/CD automation
- Add performance optimization


# 📚 Learning

This frontend module helped understand:

- Web application structure
- CSS styling practices
- API integration
- Docker containerization
- Kubernetes deployment workflow

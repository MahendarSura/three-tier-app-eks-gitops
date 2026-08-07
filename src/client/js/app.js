fetch("http://localhost:5000/api/status")
    .then(response => response.json())
    .then(data => {
        document.getElementById("status").innerHTML =
            "Backend Status: " + data.status;
    })
    .catch(() => {
        document.getElementById("status").innerHTML =
            "Backend connection failed";
    });

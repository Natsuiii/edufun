<html>

<head>
    <title>
        EduFun
    </title>
    <link crossorigin="anonymous" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .navbar-nav .nav-link {
            color: black;
            font-weight: bold;
        }

        .dropdown-menu a {
            color: black;
        }

        .news-item {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .news-item img {
            border-radius: 10px;
        }

        .news-item .btn {
            background-color: #001d3d;
            color: white;
            border-radius: 20px;
        }

        .footer {
            background-color: #001d3d;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        .cover-image {
            width: 100%;
            height: 100vh;
            object-fit: cover;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img alt="EduFun Logo" height="50"
                    src="https://storage.googleapis.com/a1aa/image/laVUZDzIRK76KFKWORiZH9zS5mh0mBzLqUnDwMAQVFjN1D7E.jpg"
                    width="50" />
            </a>
            <button aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse" type="button">
                <span class="navbar-toggler-icon">
                </span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Home
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                            href="#" id="navbarDropdown" role="button">
                            Category
                        </a>
                        <ul aria-labelledby="navbarDropdown" class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="#">
                                    Data Science
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">
                                    Software Engineering
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Writers
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            About Us
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Popular
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid p-0">
        <img alt="Students studying in a library" class="cover-image"
            src="https://storage.googleapis.com/a1aa/image/e2AuDqUC7nSGCyPiQHsyJvT8JfdW2Mtn3I89SZ7aVxp5UPsTA.jpg" />
    </div>
    <div class="container mt-4">
        <div class="row mt-4">
            <div class="col-12 col-md-6">
                <div class="news-item">
                    <div class="row">
                        <div class="col-5">
                            <img alt="Machine Learning article thumbnail" class="img-fluid" height="150"
                                src="https://storage.googleapis.com/a1aa/image/zhZD9VfI1YVzWC4ZKmJI8ENVq4TWnuAoiZOMSF8jNJiaqH2JA.jpg"
                                width="150" />
                        </div>
                        <div class="col-7">
                            <h5>
                                Machine Learning
                            </h5>
                            <p>
                                <small>
                                    14 May 2024 | by Bia
                                </small>
                            </p>
                            <p>
                                Di tengah pesatnya perkembangan teknologi kecerdasan buatan atau artificial intelligence
                                (AI)...
                            </p>
                            <a class="btn" href="#">
                                read more...
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="news-item">
                    <div class="row">
                        <div class="col-4">
                            <img alt="Human Computer Interaction article thumbnail" class="img-fluid" height="150"
                                src="https://storage.googleapis.com/a1aa/image/JnjoAXQG8UJfdiMe7t9eRlyYCwzhFKJCHHA2w2cUMAbupewOB.jpg"
                                width="150" />
                        </div>
                        <div class="col-8">
                            <h5>
                                Human and Computer Interaction
                            </h5>
                            <p>
                                <small>
                                    14 May 2024 | by Sabrina
                                </small>
                            </p>
                            <p>
                                Human-Computer Interaction atau HCI adalah studi tentang bagaimana manusia berinteraksi
                                dengan...
                            </p>
                            <a class="btn" href="#">
                                read more...
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer mt-4">
        <div class="container">
            <p>
                © EduFun 2024 | Web Programming | Your Name | Your NIM
            </p>
        </div>
    </footer>

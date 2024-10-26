<%-- 
    Document   : GPAcal
    Created on : Aug 12, 2023, 6:36:12 PM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>GPA Calculator</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .cal {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
                text-align: center;
                background-color: #f8f9fa;
                background-image: url('images/marks.jpg');
                background-size: cover;
            }

            h2 {
                margin-bottom: 20px;
                color: green;
            }

            .concal {
                margin: 0 auto;
                max-width: 600px;
                background-color: #fff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }

            table th,
            table td {
                padding: 10px;
                border: 2px solid #ccc;
            }

            table th {
                font-weight: bold;
                background-color: #f0f0f0;
            }

            input[type="text"] {
                padding:  8px;
                width: 75%;
                border-radius: 8px;
                border: 2px solid #ccc;
                background-color: #f8f9fa;
            }

            input[type="submit"] {
                padding: 10px 20px;
                background-color: #4CAF50;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #046307;
            }

            #result {
                font-weight: bold;
                margin-top: 20px;
                color: #333;
            }

            button {
                padding: 10px 20px;
                background-color: #4CAF50;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
                transition: background-color 0.3s ease;
                margin-bottom: 10px;
            }

            button:hover {
                background-color:#046307;
            }
        </style>
    </head>
    <body>

        <!--header-->
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="images/logo.png" alt="logo" width="80" height="50">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="Home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Course.jsp">Courses</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="AboutUs.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search" action="Logout.jsp">
                        <button class="btn0 mx-2">Log Out</button>
                    </form>
                </div>
            </div>
        </nav>

        <section class="cal">
            <div class="concal">
                <h2>GPA Calculator</h2>
                <form action="GPAcaluculatorServlet" method="POST">
                    <table id="courseTable">
                        <thead>
                            <tr>
                                <th>Course ID</th>
                                <th>Student ID</th>
                                <th>Marks</th>
                                <th>Re Enter Marks</th>
                                <th>Grade</th>
                            </tr>
                        </thead>
                        <tbody id="courseTableBody">
                            <tr>
                                <td><input type="text" name="courseID[]" required></td>
                                <td><input type="text" name="studentID[]" required></td>
                                <td><input type="text" name="marks[]" required></td>
                                <td><input type="text" name="credits[]" required></td>
                                <td>
                                    <select name="grade[]" required>
                                        <option value="">Select Grade</option>
                                        <option value="4.0">A</option>
                                        <option value="3.7">A-</option>
                                        <option value="3.3">B+</option>
                                        <option value="3.0">B</option>
                                        <option value="2.7">B-</option>
                                        <option value="2.3">C+</option>
                                        <option value="2.0">C</option>
                                        <option value="1.7">C-</option>
                                        <option value="1.0">D</option>
                                        <option value="0">F</option>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <button type="button" onclick="addCourse()">Add Course</button>
                    <br>
                    <button type="button" onclick="calculateGPA(event)" value="Calculate GPA">Calculate GPA</button>
                    <br>
                    <input type="submit" value="submit">
                </form>

                <div id="result"></div>
            </div>
        </section>
        
        <!--footer section-->
        <section class="footer">
            <div class="social">
                <a href="#"><i class="fa-brands fa-square-facebook"></i></a>
                <a href="#"><i class="fa-brands fa-square-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                <a href="#"><i class="fa-brands fa-square-twitter"></i></a>
            </div>

            <ul class="list">
                <li>
                    <a href="Home.jsp">Home</a>
                </li>
                <li>
                    <a href="#">Courses</a>
                </li>
                <li>
                    <a href="AboutUs.jsp">About Us</a>
                </li>
                <li>
                    <a href="ContactUs.jsp">Contact Us</a>
                </li>
            </ul>
            <p class="copyright">IIT Coders @2023</p>
        </section> 

        <script>
            function addCourse() {
                var tableBody = document.getElementById("courseTableBody");

                var newRow = document.createElement("tr");
                newRow.innerHTML = `
              <td><input type="text" name="courseID[]" required></td>
              <td><input type="text" name="studentID[]" required></td>
              <td><input type="text" name="marks[]" required></td>
              <td><input type="text" name="credits[]" required></td>
              <td>
                <select name="grade[]" required>
                  <option value="">Select Grade</option>
                  <option value="4.0">A</option>
                  <option value="3.7">A-</option>
                  <option value="3.3">B+</option>
                  <option value="3.0">B</option>
                  <option value="2.7">B-</option>
                  <option value="2.3">C+</option>
                  <option value="2.0">C</option>
                  <option value="1.7">C-</option>
                  <option value="1.0">D</option>
                  <option value="0">F</option>
                </select>
              </td>
            `;

                tableBody.appendChild(newRow);
            }

            function calculateGPA(event) {
                event.preventDefault();

                var tableRows = document.querySelectorAll("#courseTableBody tr");

                var totalCredits = 0;
                var totalGradePoints = 0;

                tableRows.forEach(function (row) {
                    var credits = parseFloat(row.querySelector("input[name='credits[]']").value);
                    var grade = parseFloat(row.querySelector("select[name='grade[]']").value);

                    if (!isNaN(credits) && !isNaN(grade)) {
                        totalCredits += credits;
                        totalGradePoints += credits * grade;
                    }
                });

                var gpa = totalGradePoints / totalCredits;

                var resultElement = document.getElementById("result");
                resultElement.textContent = "GPA: " + gpa.toFixed(2);
            }
        </script>
    </body>
</html>

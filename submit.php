<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection parameters
    $servername = "localhost"; // Change this if your MySQL server is on a different host
    $username = "root";
    $password = "";
    $dbname = "fitness_db";

    // Create a database connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get form data


    // Get form data
    $name = $_POST["name"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $message = $_POST["Message"];
    $contactMethod = $_POST["radio"];
    
    // Check if the "day" checkbox array is set
    $daysAvailable = isset($_POST["day1"]) ? $_POST["day1"] : "";
    $daysAvailable .= isset($_POST["day2"]) ? ", " . $_POST["day2"] : "";
    $daysAvailable .= isset($_POST["day3"]) ? ", " . $_POST["day3"] : "";
    $daysAvailable .= isset($_POST["day4"]) ? ", " . $_POST["day4"] : "";
    $daysAvailable .= isset($_POST["day5"]) ? ", " . $_POST["day5"] : "";

    // Check if the "shift" checkbox array is set
    $timeOfDay = isset($_POST["shift1"]) ? $_POST["shift1"] : "";
    $timeOfDay .= isset($_POST["shift2"]) ? ", " . $_POST["shift2"] : "";

    // Insert data into the table
    $sql = "INSERT INTO appointment_requests (name, email, phone, message, contact_method, days_available, time_of_day)
            VALUES ('$name', '$email', '$phone', '$message', '$contactMethod', '$daysAvailable', '$timeOfDay')";

    




    if ($conn->query($sql) === TRUE) {
        echo "Appointment request submitted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close the database connection
    $conn->close();
}
?>

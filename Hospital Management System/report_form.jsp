<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generate Patient Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            padding: 40px;
            display: flex;
            justify-content: center;
        }
        .form-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            max-width: 500px;
            width: 100%;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
        }
        label {
            display: block;
            margin-top: 15px;
            color: #333;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        input[type="submit"] {
            background-color: #3498db;
            color: white;
            margin-top: 20px;
            cursor: pointer;
            border: none;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #2980b9;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Generate Patient Report</h2>
    <form action="reportCriteria" method="post">
        <label for="reportType">Select Report Type:</label>
        <select id="reportType" name="reportType" required onchange="toggleFields()">
            <option value="">-- Select Report --</option>
            <option value="dateRange">Patients Admitted in a Date Range</option>
            <option value="ailment">Patients with Specific Ailment</option>
            <option value="doctor">Patients Assigned to Specific Doctor</option>
        </select>

        <div id="dateRangeFields" style="display:none;">
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate">
            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate">
        </div>

        <div id="ailmentField" style="display:none;">
            <label for="ailment">Ailment:</label>
            <input type="text" id="ailment" name="ailment">
        </div>

        <div id="doctorField" style="display:none;">
            <label for="assignedDoctor">Assigned Doctor:</label>
            <input type="text" id="assignedDoctor" name="assignedDoctor">
        </div>

        <input type="submit" value="Generate Report">
    </form>

    <a href="index.jsp" class="back-link">Back to Home</a>
</div>

<script>
    function toggleFields() {
        const type = document.getElementById("reportType").value;
        document.getElementById("dateRangeFields").style.display = type === "dateRange" ? "block" : "none";
        document.getElementById("ailmentField").style.display = type === "ailment" ? "block" : "none";
        document.getElementById("doctorField").style.display = type === "doctor" ? "block" : "none";
    }
</script>

</body>
</html>

<%-- 
    Document   : display
    Created on : Jul 14, 2025, 10:10:49 AM
    Author     : 577522
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Dashboard - BC Wellness App</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
    <body>
        <%
            String name = request.getParameter("txtName");
            String surname = request.getParameter("txtSurname");
            // Hypothetical data for subjects and marks
            String[] subjects = {"Math", "English", "Programming", "Statistics", "Accounting"};
            int[] marks = {85, 72, 90, 65, 78}; // Sample marks
            double average = 0;
            for (int mark : marks) {
                average += mark;
            }
            average /= subjects.length;
            // Message report logic
            String message;
            if (average >= 80) {
                message = "Outstanding work! Maintain your excellence and consider advanced courses to challenge yourself further.";
            } else if (average >= 60) {
                message = "Solid progress! Focus on subjects like Statistics to boost your performance. Tutoring could help.";
            } else {
                message = "Time to step up! Create a study plan and utilize Belgium Campus support resources to improve.";
            }
        %>
        <div class="dashboard-container">
            <!-- Header: Name and Wellness Text -->
            <div class="header-card">
                <h2><%= name != null ? name : "" %> <%= surname != null ? surname : "" %></h2>
                <p class="wellness-text">Daily exercise and wellness activities boost focus and academic success. Stay active to thrive!</p>
            </div>
            <!-- Sidebar: Subjects and Marks -->
            <div class="sidebar-card">
                <h3>Subject Marks</h3>
                <% for (int i = 0; i < subjects.length; i++) { %>
                    <p><span class="label"><%= subjects[i] %>:</span> <%= marks[i] %>%</p>
                <% } %>
            </div>
            <!-- Footer: Performance Review -->
            <div class="footer-card">
                <h3>Performance Report</h3>
                <p><%= message %></p>
            </div>
            <!-- Main Content: Charts and Average -->
            <div class="main-content-card">
                <div class="charts-section">
                    <div class="chart-wrapper">
                        <h3>Progress Over Time</h3>
                        <canvas id="progressChart"></canvas>
                    </div>
                    <div class="chart-wrapper">
                        <h3>Performance Distribution</h3>
                        <canvas id="performanceChart"></canvas>
                    </div>
                </div>
                <div class="average-section">
                    <h3>Average: <%= String.format("%.2f", average) %>%</h3>
                </div>
            </div>
            <!-- Back Button -->
            <input type="button" class="back-button" onclick="window.location.href='index.html'" value="Back to Home">
        </div>
        <script>
            // Line Chart: Progress Over Time
            const progressCtx = document.getElementById('progressChart').getContext('2d');
            new Chart(progressCtx, {
                type: 'line',
                data: {
                    labels: ['Term 1', 'Term 2', 'Term 3', 'Term 4'],
                    datasets: [{
                        label: 'Average Mark',
                        data: [70, 75, 80, 78],
                        borderColor: '#60a5fa',
                        backgroundColor: 'rgba(96, 165, 250, 0.3)',
                        fill: true,
                        tension: 0.4,
                        pointBackgroundColor: '#ffffff',
                        pointBorderColor: '#3b82f6',
                        pointRadius: 5
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            max: 100,
                            ticks: { color: '#ffffff', font: { family: 'Poppins' } },
                            grid: { color: 'rgba(255, 255, 255, 0.2)' }
                        },
                        x: {
                            ticks: { color: '#ffffff', font: { family: 'Poppins' } },
                            grid: { display: false }
                        }
                    },
                    plugins: {
                        legend: { labels: { color: '#ffffff', font: { family: 'Poppins' } } }
                    }
                }
            });

            // Pie Chart: Performance Distribution
            const performanceCtx = document.getElementById('performanceChart').getContext('2d');
            new Chart(performanceCtx, {
                type: 'pie',
                data: {
                    labels: ['80-100%', '60-79%', '<60%'],
                    datasets: [{
                        label: 'Performance',
                        data: [2, 2, 1],
                        backgroundColor: ['#60a5fa', '#93c5fd', '#f87171'],
                        borderColor: '#ffffff',
                        borderWidth: 2
                    }]
                },
                options: {
                    plugins: {
                        legend: { labels: { color: '#ffffff', font: { family: 'Poppins' } } }
                    }
                }
            });
        </script>
    </body>
</html>
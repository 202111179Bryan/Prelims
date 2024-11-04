<!-- resources/views/resume.blade.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Online Resume</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }
        .resume {
            background-color: #fff;
            padding: 20px;
            max-width: 800px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1, h2 {
            color: #4CAF50;
        }
        .section {
            margin-bottom: 20px;
        }
        .section-title {
            font-weight: bold;
            font-size: 24px;
            border-bottom: 2px solid #4CAF50;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        ul li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="resume">
        <h1>{{ $name }}</h1>
        <p><strong>Email:</strong> {{ $email }} | <strong>Phone:</strong> {{ $phone }} | <strong>Location:</strong> {{ $location }}</p>

        <div class="section">
            <div class="section-title">Summary</div>
            <p>{{ $summary }}</p>
        </div>

        <div class="section">
            <div class="section-title">Experience</div>
            <ul>
                @foreach($experience as $job)
                    <li><strong>{{ $job['title'] }}</strong> – {{ $job['company'] }} ({{ $job['start_year'] }} - {{ $job['end_year'] }})</li>
                    <li>{{ $job['description'] }}</li>
                @endforeach
            </ul>
        </div>

        <div class="section">
            <div class="section-title">Education</div>
            <ul>
                @foreach($education as $degree)
                    <li><strong>{{ $degree['degree'] }}</strong> – {{ $degree['institution'] }} ({{ $degree['start_year'] }} - {{ $degree['end_year'] }})</li>
                    <li>{{ $degree['achievements'] }}</li>
                @endforeach
            </ul>
        </div>

        <div class="section">
            <div class="section-title">Skills</div>
            <ul>
                @foreach($skills as $skill)
                    <li>{{ $skill }}</li>
                @endforeach
            </ul>
        </div>
    </div>
</body>
</html>

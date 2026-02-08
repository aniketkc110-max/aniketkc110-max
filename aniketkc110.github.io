<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Simple Entry Form</title>
  <style>
    :root {
      --primary: #6366f1;
      --primary-dark: #4f46e5;
      --bg: #f8fafc;
      --card: #ffffff;
      --text: #1e293b;
      --text-light: #64748b;
      --border: #e2e8f0;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--text);
      min-height: 100vh;
      display: grid;
      place-items: center;
      padding: 20px;
    }

    .card {
      background: var(--card);
      border-radius: 16px;
      box-shadow: 0 10px 25px -5px rgba(0,0,0,0.1);
      padding: 2.5rem;
      width: 100%;
      max-width: 420px;
      border: 1px solid var(--border);
    }

    h1 {
      font-size: 1.75rem;
      margin-bottom: 0.5rem;
      text-align: center;
      color: var(--text);
    }

    .subtitle {
      color: var(--text-light);
      text-align: center;
      margin-bottom: 2rem;
      font-size: 0.95rem;
    }

    .form-group {
      margin-bottom: 1.5rem;
    }

    label {
      display: block;
      margin-bottom: 0.5rem;
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--text);
    }

    input {
      width: 100%;
      padding: 0.75rem 1rem;
      border: 1px solid var(--border);
      border-radius: 8px;
      font-size: 1rem;
      transition: all 0.2s;
    }

    input:focus {
      outline: none;
      border-color: var(--primary);
      box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.15);
    }

    button {
      width: 100%;
      padding: 0.9rem;
      background: var(--primary);
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 1rem;
      font-weight: 600;
      cursor: pointer;
      transition: all 0.2s;
      margin-top: 1rem;
    }

    button:hover {
      background: var(--primary-dark);
      transform: translateY(-1px);
    }

    button:active {
      transform: translateY(0);
    }

    .footer {
      text-align: center;
      margin-top: 2rem;
      font-size: 0.85rem;
      color: var(--text-light);
    }
  </style>
</head>
<body>

  <div class="card">
    <h1>Get Started</h1>
    <p class="subtitle">Please fill in your details</p>

    <form id="entryForm" onsubmit="handleSubmit(event)">
      <div class="form-group">
        <label for="fullname">Full Name</label>
        <input type="text" id="fullname" name="fullname" placeholder="John Doe" required autocomplete="name">
      </div>

      <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" placeholder="you@example.com" required autocomplete="email">
      </div>

      <div class="form-group">
        <label for="phone">Phone Number (optional)</label>
        <input type="tel" id="phone" name="phone" placeholder="+91 98765 43210" autocomplete="tel">
      </div>

      <button type="submit">Submit →</button>
    </form>

    <div class="footer">
      We'll never share your information
    </div>
  </div>

  <script>
    function handleSubmit(e) {
      e.preventDefault();
      
      const form = e.target;
      const data = {
        fullname: form.fullname.value.trim(),
        email: form.email.value.trim(),
        phone: form.phone.value.trim() || "—"
      };

      console.log("Form submitted:", data);
      alert("Thank you, " + data.fullname + "!\nWe'll contact you at " + data.email);

      // Optional: clear form
      form.reset();
    }
  </script>

</body>
</html>

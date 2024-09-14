<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bandit Game - Level 1</title>
    <style>
        body {
            background-color: #1e1e1e;
            color: #00ff00;
            font-family: 'Courier New', monospace;
            line-height: 1.6;
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
        }
        h1, h2 {
            color: #00ff00;
            text-shadow: 0 0 5px #00ff00;
        }
        h1 {
            border-bottom: 2px solid #00ff00;
            padding-bottom: 10px;
        }
        pre {
            background-color: #2a2a2a;
            border: 1px solid #00ff00;
            border-radius: 5px;
            padding: 10px;
            overflow-x: auto;
        }
        code {
            color: #ff00ff;
        }
        .objective {
            background-color: #2a2a2a;
            border-left: 5px solid #00ff00;
            padding: 10px;
            margin: 20px 0;
        }
        .tip {
            background-color: #2a2a2a;
            border: 1px dashed #00ff00;
            padding: 10px;
            margin: 20px 0;
        }
        .commands {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin: 20px 0;
        }
        .command {
            background-color: #2a2a2a;
            border: 1px solid #00ff00;
            border-radius: 5px;
            padding: 5px 10px;
        }
        .gif-demo {
        text-align: center;
        margin-top: 40px;
        }
        .gif-demo img {
            max-width: 100%;
            height: auto;
            border: 3px solid #00ff00;
            border-radius: 10px;
            box-shadow: 0 0 15px #00ff00;
            transition: transform 0.3s ease;
        }
        .gif-demo img:hover {
            transform: scale(1.05);
            box-shadow: 0 0 25px #ff00ff, 0 0 50px #00ff00;
        }
        .gif-caption {
            color: #ff00ff;
            font-size: 1.2rem;
            margin-top: 10px;
        }
    </style>
</head>
<body>
   <h1>🎮 Bandit Game - Level 1 🕹️</h1>
   <div style="background-color:#2a2a2a;border-left:5px solid #00ff00;padding:10px;margin:20px 0;">
        <h2>🎯 Objective</h2>
        <p>Find the password for Level 2. It's hidden in a file called <code>-</code> in the home directory.</p>
    </div>

   <h2>🚀 Mission Steps</h2>

   <ol>
        <li><strong>Infiltrate the Bandit server:</strong>
            <pre><code style="color:#ff00ff;">ssh -p 2220 bandit1@bandit.labs.overthewire.org</code></pre>
        </li>
        <li><strong>Scan the territory:</strong>
            <pre><code style="color:#ff00ff;">ls</code></pre>
            You'll spot a mysterious file named <code>-</code>.
        </li>
        <li><strong>Decrypt the file contents:</strong>
            <pre><code style="color:#ff00ff;">cat ./-</code></pre>
            Or, use the alternative spell:
            <pre><code style="color:#ff00ff;">cat < -</code></pre>
        </li>
        <li><strong>Secure the password</strong> for your next mission.</li>
   </ol>

   <h2>🧠 Key Concepts</h2>
    <ul>
        <li><strong>Special Filename:</strong> The <code>-</code> is not just a dash, it's a portal to standard input/output.</li>
        <li><strong>Relative Path:</strong> <code>./</code> is your compass in the current directory.</li>
        <li><strong>Input Redirection:</strong> <code><</code> is your key to unlocking file contents.</li>
   </ul>

   <h2>🛠️ Hacker's Toolkit</h2>
    <div class="commands">
        <span class="command">ls</span>
        <span class="command">cat</span>
        <span class="command">pwd</span>
    </div>

   <div class="tip">
        <h2>💡 Pro Tips</h2>
        <ul>
            <li>Special characters in filenames are traps for the unwary.</li>
            <li>Mastering unusual filenames is your path to Linux enlightenment.</li>
        </ul>
    </div>

   <h2> Next Mission 🔜</h2>
    <p>Extract yourself from Level 1. Prepare for infiltration of Bandit Level 2 with your newly acquired access code.</p>


   <h2>Live Walkthrough 🏃🏾‍♂️</h2>


   <div class="gif-demo">
    <img src="bandit-level-1.gif" alt="Badass Demo GIF">
    <div class="gif-caption">🔥 Watch the action in real time! 🔥</div>
   </div>
    

    
</body>
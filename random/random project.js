<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Snake Game</title>
    <style>
        body {
            background: rgb(212, 211, 211);
        }
        .grid {
            width: 200px;
            height: 200px;
            border: 1px solid red;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
        }
        .grid div {
            width: 20px;
            height: 20px;
        }
        .snake {
            background: blue;
        }
        .apple {
            background: yellow;
            border-radius: 20px;
        }
        .popup {
            background: rgb(32, 31, 31);
            width: 100px;
            height: 100px;
            position: fixed;
            top: 100px;
            left: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
    <h1>Nokia 3310 Snake</h1>
    <div class="scoreDisplay"></div>
    <div class="grid"></div>
    <div class="button">
        <button class="top">top</button>
        <button class="bottom">bottom</button>
        <button class="left">left</button>
        <button class="right">right</button>
    </div>
    <div class="popup">
        <button class="playAgain">Play Again</button>
    </div>
</body>
</html>

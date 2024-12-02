<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tarefas</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="app">
        <h1>Lista de Tarefas</h1>
        <input type="text" id="new-task" placeholder="Nova tarefa...">
        <button id="add-task">Adicionar</button>
        <ul id="task-list"></ul>
    </div>
    <script src="app.js"></script>
</body>
</html>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

#app {
    background: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

#task-list {
    list-style: none;
    padding: 0;
}

#task-list li {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}
document.getElementById('add-task').addEventListener('click', function() {
    const taskText = document.getElementById('new-task').value;
    if (taskText === '') return;

    const li = document.createElement('li');
    li.textContent = taskText;
    document.getElementById('task-list').appendChild(li);

    document.getElementById('new-task').value = '';
});

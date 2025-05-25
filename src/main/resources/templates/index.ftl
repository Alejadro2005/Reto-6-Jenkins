<!DOCTYPE html>
<html>
<head>
    <title>KNote</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <div class="container">
        <h1>KNote</h1>
        
        <div class="note-form">
            <form action="/note" method="post">
                <textarea name="description" placeholder="Escribe una nota..."></textarea>
                <button type="submit" name="publish" value="Publish">Guardar</button>
            </form>
        </div>

        <div class="notes">
            <#list notes as note>
                <div class="note">
                    <p>${note.description}</p>
                    <div class="date">${note.date}</div>
                </div>
            </#list>
        </div>
    </div>
</body>
</html> 
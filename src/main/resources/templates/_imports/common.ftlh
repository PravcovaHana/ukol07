[#ftl]

[#macro page title]
    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="/images/favicon.png"/>
    </head>
    <body>
    <main class="container">
        [#nested /]
    </main>
    </body>
    </html>
[/#macro]

[#macro totalCount]
    <div class="totalCount">
        [#if prispevky.totalElements == 1]
            Celkem nalezen <strong>${prispevky.totalElements}</strong> záznam.
        [#elseif prispevky.totalElements <= 4]
            Celkem nalezeny <strong>${prispevky.totalElements}</strong> záznamy.
        [#else ]
            Celkem nalezeno <strong>${prispevky.totalElements}</strong> záznamů.
        [/#if]
    </div>

[/#macro]

[#macro pager]
    <div class="pager">
        [@pagerLink page=0 active=prispevky.first text="⇤" /]
        [@pagerLink page=prispevky.number - 1 active=!prispevky.hasPrevious() text="←" /]
        [@pagerLink page=prispevky.number + 1 active=!prispevky.hasNext() text="→" /]
        [@pagerLink page=prispevky.totalPages - 1 active=prispevky.last text="⇥" /]
    </div>
    <br />
[/#macro]

[#macro pagerLink page text active]
    [#if active]
        <span class="page btn btn-primary active">${text}</span>
    [#else ]
        <a href="${createURL({"page": page})}" class="page btn btn-primary">${text}</a>
    [/#if]
[/#macro]

[#macro backlink mode]
    <div><a href="/${mode}" class="btn btn-primary">Zpět na seznam</a></div>
[/#macro]


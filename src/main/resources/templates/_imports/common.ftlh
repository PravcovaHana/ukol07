[#ftl]

[#macro page title]
    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"

        <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="/css/normalize.css"/>
        <link rel="stylesheet" href="/css/skeleton.css"/>
        <link rel="stylesheet" href="/css/main.css"/>
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
        [@pagerLink page=prispevky.number - 1 active=prispevky.first text="←" /]
        [@pagerLink page=prispevky.number + 1 active=prispevky.last text="→" /]
        [@pagerLink page=prispevky.totalPages - 1 active=prispevky.last text="⇥" /]
    </div>
[/#macro]

[#macro pagerLink page text active]
    [#if active]
        <span class="page active">${text}</span>
    [#else ]
        <a href="${createURL({"size": prispevky.size, "page": page})}" class="page">${text}</a>
    [/#if]
[/#macro]

[#macro backlink mode]
    <div><a href="/${mode}" class="btn btn-primary">Zpět na seznam</a></div>
[/#macro]


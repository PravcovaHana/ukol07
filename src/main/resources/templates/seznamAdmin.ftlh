[#ftl]

[@c.page title="Seznam příspěvků"]
    [#list prispevky.content]
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Titulek</th>
                <th scope="col">Perex</th>
                <th scope="col">Datum publikování</th>
                <th scope="col">Autor</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            [#items as prispevek]
                <tr>
                    <td>${prispevek.title}</td>
                    <td>${prispevek.perex?no_esc}</td>
                    <td>${(prispevek.published?date)! "Zatím nepublikováno"}</td>
                    <td>${prispevek.author}</td>
                    <td class="d-flex justify-content-end"><a href="/edit/${prispevek.slug}" class="btn btn-primary">Upravit</a></td>
                </tr>
            [/#items]
            </tbody>
        </table>
    [#else]
        <p class="fst-italic">Seznam příspěvků je prázdný.</p>
    [/#list]

    [@c.totalCount /]
    [@c.pager /]

    <div><a href="/" class="btn btn-primary">Zpět na prohlížení</a></div>

[/@c.page]

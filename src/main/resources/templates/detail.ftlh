[#ftl]
[@c.page title="${prispevek.title!}"]
        <h1>${prispevek.title}</h1>
        <div>${prispevek.author} - ${prispevek.published?date}</div>
        <div style="font-size: 150%">${prispevek.perex?no_esc}</div>
        <div>${prispevek.body?no_esc}</div>
        <br />
        [@c.backlink '' /]
[/@c.page]


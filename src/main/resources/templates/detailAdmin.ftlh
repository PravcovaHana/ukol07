[#ftl]
[@c.page title="${prispevek.title!}"]
    [@form.form method="post" bind="prispevek"]
        <input type="hidden" name="id" value="${prispevek.id}" />
        <div class="col-md-6">
            [@form.input label="Titulek" name="title" maxlength="255" required="required" /]
        </div>
        <div class="col-md-6">
            [@form.input label="Název odkazu" name="slug" maxlength="100" required="required" /]
        </div>
        <div class="col-6">
            [@form.input label="Autor" name="author" maxlength="100" required="required" /]
        </div>
        <div class="col-md-6">
            [@form.input label="Perex" name="perex" required="required" /]
        </div>
        <div class="col-md-12">
            [@form.input label="Tělo" name="body" required="required" /]
        </div>
        <div class="col-md-6">
            [@form.inputDate label="Datum publikování" name="published" /]
        </div>
        <div class="col-12 d-flex justify-content-end">
            [#if prispevek.id??]
                <button type="submit" class="btn btn-light" name="akce" value="smazat">Smazat</button>
                <button type="submit" class="btn btn-primary">Uložit</button>
            [#else ]
                <button type="submit" class="btn btn-primary">Přidat</button>
            [/#if]
        </div>
        [@c.backlink 'admin' /]
    [/@form.form]
[/@c.page]


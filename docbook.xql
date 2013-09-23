declare function dbk:docbook2fo($docbook as node()*) as item()*
{
    let $stylesheet := "xmldb:///db/apps/docbook/stylesheets/fo/docbook.xsl"
    return
        transform:transform($docbook, $stylesheet, ())
};

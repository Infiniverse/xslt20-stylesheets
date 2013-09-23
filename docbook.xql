xquery version "3.0";

module namespace dbk="http://karthauser.co.uk/app/questiondb/docbook";

declare function dbk:docbook2fo($docbook as node()*) as item()*
{
    let $stylesheet := "xmldb:///db/apps/docbook/stylesheets/fo/docbook.xsl"
    return
        transform:transform($docbook, $stylesheet, ())
};

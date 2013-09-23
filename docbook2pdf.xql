xquery version "3.0";

import module namespace dbk="http://logicprep.com/app/questiondb/docbook" at "docbook.xql";

let $id := request:get-parameter("id", ())
let $qs_file := concat("/db/questionsets/", $id, ".xml")
let $questionset := doc($qs_file)
return
    if (exists($questionset)) then
        let $dbk := dbk:questionSet2docbook($questionset)
        let $fo := dbk:docbook2fo($dbk)
        let $pdf := xslfo:render($fo, "application/pdf", ())
        let $response := response:stream-binary($pdf, "media-type=application/pdf", concat($id, ".pdf"))
        return
            $response
    else
        error()

<!DOCTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Gjaldmidlar</title>
    <link rel="stylesheet" href="/static/styles.css">
</head>
<body>
    % include("haus.tpl")
    <%
    import json
    with open('gengi.json', 'r', encoding='utf-8') as skra:
        gengi = json.load(skra)
    %>
    <div class="row">
        <section>
            <h2>Gengi gjaldmiðla í ISSK</h2>
            <ul>
                % for i in gengi["results"]:
                <li>
                    {{i["longName"]}} - {{i["shortName"]}} ISSK: {{i["value"]}}
                </li>
            %end
            </ul>
        </section>
    </div>
    % include("footer.tpl")
    % end
</body>
</html>
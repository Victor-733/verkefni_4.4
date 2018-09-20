<!DOCTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Json Apis.is</title>
    <link rel="stylesheet" href="/static/styles.css">
</head>
<body>
    % include("haus.tpl")
    <div class="row">
        <section>
            <h2>Gengi gjaldmiðla frá Apis.is</h2>
            <ul>
                % for i in data["results"]:
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
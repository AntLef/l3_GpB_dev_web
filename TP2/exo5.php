<?php
if (!empty($_POST)) {
    if ($_POST["login"] == "admin" || $_POST["password"] == "pwd") {
        echo "tu est cobnecté";
    } else {
        echo "tu est un intru",
    }
}
?>

<!DOCTYPE html>
<html>
    <header>
        <style>
            table, th, td, tr {
            border-collapse: collapse;
            width: 10px;
            height: 10px;
            }
            #title {
                text-align: right;
                vertical-align: top;
            }
            div {
                padding-top: 15px;
            }
        </style>
    </header>
<body>

<div style="width: 400px;">
    
    <h2 style="text-align: center;">Identification</h2>
    
    <form action="/" method="post">            

        <table style="width:100%">
            <tr>
                <td id="title"><label for="login">Login:</label></td>
                <td><input class="form-control" type="login" id="login" name="login"></td>
            </tr>
            <tr>
                <td id="title"><label for="password">Mot de passe:</label></td>
                <td><input class="form-control" type="password" id="password" name="password"></td>
            </tr>

            <tr>
                <td id="title"> </td>
                <td>
                    <input type="checkbox" id="pos1" name="pos1" value="ens">
                    <label for="pos1"> Enseignant</label>
                    <input type="checkbox" id="pos2" name="pos2" value="ele">
                    <label for="pos2"> Eleve</label>
                </td>
            </tr>

            <tr>
                <td id="title"></td>
                <td><input class="form-control" type="submit" value="Rechercher"  ></td>
            </tr>

        </table> 
            
    </form> 
</div>

</body>
</html>
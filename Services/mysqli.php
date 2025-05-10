<?php
    $conn = null;
    function openConnection() {
        define("DB_NAME", "banche");
        // In questo caso localhost perché il db è nella stessa macchina
        // se il db fosse su un'altra macchina, allora si deve specificare
        // l'indirizzo IP
        define("DB_HOST", "localhost");
        // MySQL crea automaticamente un utente root con password vuota
        define("DB_USER", "root");
        define("DB_PASS", "");

        // Serve per abilitare il try-catch sulle righe successive
        mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
        try {
            // Per prendere la variabile globale devo usare global
            global $conn;
            // Istanzia una nuova connessione al db sondaggi
            $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
            //  Il charset è il set di caratteri che il server deve utilizzare per comunicare con il db
            $conn->set_charset(("utf8mb4"));
            return $conn;
        }
        catch (mysqli_sql_exception $e) {
            // 503 significa che non può connettersi al db
            http_response_code(503);
            die("<b>Errore connessione db:</b> " . $e->getMessage());
        }
    }

    function executeQuery($conn, $sql) {
        try {
            // query è un metodo dell'oggetto conn che sostanzialmente esegue la query.
            // Nel caso delle chiamate GET i dati sono restituiti sotto forma di recordset PHP
            $result = $conn->query($sql);
            // In tutte le chiamate diverse dalla GET, PHP restituisce true se è andato tutto bene, 
            // false in caso di errore
            if (!is_bool($result)) {
                // fetch_all converte da recordset PHP a vettore enumerativo di JSON sono nel caso di chiamate GET
                $data = $result->fetch_all(MYSQLI_ASSOC);
            }
            else {
                $data = $result;
            }
            return $data;
        }
        catch (mysqli_sql_exception $err) {
            // In caso di errore chiudo la connessione e termino lo script
            $conn->close();
            http_response_code(500);
            die("<b>Errore query: </b>" . $err->getMessage());
        }
    }

    function checkParams($param) {
        // PHP consegna tutti i parametri dentro $_REQUEST
        if (isset($_REQUEST[$param])) {
            // Ritorna il valore del parametro (nel primo caso il contenuto di txtNome)
            return $_REQUEST[$param];
        }
        else {
            // 400 è l'errore dei parametri mancanti
            http_response_code(400);
            global $conn;
            $conn->close();
            die("Parametro $param mancante");
        }
    }
?>
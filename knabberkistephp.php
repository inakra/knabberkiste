
<?php

// Verbindung Datenbank
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "knabberkiste";
// MySQL verbinden
$conn = new mysqli($servername, $username, $password, $dbname);

// Eingaben holen
$suche = isset($_GET['suche']) ? $conn->real_escape_string($_GET['suche']) : "";
$kategorie = isset($_GET['kategorie']) ? $conn->real_escape_string($_GET['kategorie']) : "";
$sortierung = isset($_GET['sortierung']) ? $_GET['sortierung'] : "asc";
// SQL-Abfrage vorbereiten
$sql = "SELECT name, preis, kategorie FROM nahrung WHERE 1=1";
// Falls Suchbegriff 
if ($suche) $sql .= " AND LOWER(name) LIKE LOWER('%$suche%')";

// Falls Kategorie
if ($kategorie) $sql .= " AND kategorie = '$kategorie'";
// Sortierung nach Preis (aufsteigend oder absteigend)
$sql .= $sortierung == "desc" ? " ORDER BY preis DESC" : " ORDER BY preis ASC";
// SQL ausführen
$result = $conn->query($sql);
// Anzahl der Ergebnisse anzeigen
$anzahl = $result->num_rows;
echo "<p><strong>Gefundene Produkte: " . $result->num_rows . "</strong></p>";
// Ergebnisse anzeigen
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p><strong>" . htmlspecialchars($row["name"]) . "</strong> - " . $row["preis"] . " € (" . htmlspecialchars($row["kategorie"]) . ")</p>";
    }
} else {
    echo "<p>Keine Produkte gefunden.</p>";
}
// Verbindung schließen
$conn->close();
?>

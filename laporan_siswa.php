<?php include "header.php" ?>
<?php include "koneksi.php" ?>
<html>
<head>
    <title>CETAK DATA GURU <br>SMK YADIKA 13</title>
</head>
<body>

    <center>

        <h4>CETAK DATA GURU <br>SMK YADIKA 13</a></h4>


      

        <table border="1">
            <tr>
                <th>No</th>
                <th>ID</th>
                <th>Nama Guru</th>
                
            </tr>
            <?php 
            $no = 1;
            $sql = mysqli_query($konek,"select * from guru");
            while($data = mysqli_fetch_array($sql)){
            ?>
            <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $data['idguru']; ?></td>
                <td><?php echo $data['namaguru']; ?></td>
            </tr>
            <?php 
            }
            ?>
        </table>

        <br/>

        <a href="cetak.php" target="_blank">CETAK</a>


    </center>
</body>
</html>
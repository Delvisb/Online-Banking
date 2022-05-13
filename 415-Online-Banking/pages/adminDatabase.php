<?php
    include('veryifySession.php');
	include('../database/dbConnect.php');
	
	/*
	****************************************************************************
	Functionality is moved to adminViewUser.php
	I couldn't figure out how to make it work properly so I copy and pasted the 
	adminPortal.php page and it pulls information from the database.
	
	Please continue work on adminViewUser.php
	
	It works fine, see the page to see what needs to be finished up.
	****************************************************************************
	*/

    //Victor's code for the transaction history
    
    $accNum = $_POST['accNum'];
    $query = "SELECT * FROM user_table WHERE accNum = $accNum";
    $query = "SELECT * FROM customer_info WHERE accNum = '$accNum'";
    
    echo $query;
    $result = mysqli_query($dbConnect, $query);
    
    if ($result->num_rows > 0) {
        echo $accNum;
        
    } else {
        echo "error";
        die();
    }
            
   
    
    /*
    {
        while ($row = $result->fetch_assoc()) {
            $accNum = $row["col1"];
            $date = $row["col2"];
            $withdrawal = $row["col3"];
            $deposit = $row["col4"];
            $balance = $row["col5"]; 
            $transaction_name = $row["col6"];
            $transaction_id = $row["col7"]; 

            echo '<tr> 
                    <td>'.$accNum .'</td> 
                    <td>'.$date.'</td> 
                    <td>'.$withdrawal.'</td> 
                    <td>'.$deposit.'</td> 
                    <td>'.$balance.'</td> 
                    <td>'.$transaction_name.'</td> 
                    <td>'.$transaction_id.'</td> 
                </tr>';
        }*/
        $result->free();
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Transactions</title>
    <link href="style.css" rel="stylesheet" type="text/css" />

	</head>
		
	<body>
	    <div class = "navBar">
			<a id= "link" href = "adminPortal.php">Home</a>
			<!-- Gonna need help setting up this navBar
			<a id= "link" href = "">PLACEHOLDER</a> 
			<a id= "link" href = "">PLACEHOLDER</a>
			<a id= "link" href = "">PLACEHOLDER</a>
			<a id= "link" href = "">PLACEHOLDER</a> 
			-->
        </div>
	     
	     <p>test</p>
	     
	</body>
</html>
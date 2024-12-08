<?php
include("backend/database.php");
$code = $_POST['quiz_code'];


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <?php include("navbar_student.php")?>
    
    <input type="hidden" id='quiz_code' value="<?=$code?>">
    <input type="hidden" id='student_id' value="<?=$_SESSION['student']['student_id']?>">

    <div class="container" id='scoreboard'>

    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        
        $(document).ready(()=>{

        
            
            async function question_answer(question, answer)
            {
                const { value: formValues } = await Swal.fire({
                        title: question,
                        allowOutsideClick: false,
                        confirmButtonColor: '#000000', 
                        html: `
                            <input id="swal-input1" class="swal2-input ">
                        `,
                        focusConfirm: false,
                        preConfirm: () => {
                            return [
                            document.getElementById("swal-input1").value,
                            ];
                        }
                        });
                    if (formValues)
                    {
                        if(formValues[0] == answer)
                        {
                            return true
                        }
                        else
                        {
                            return false
                        }
                    }
            } 

            $.ajax({
                    url : "backend/get_quiz_items.php",
                    method : "post",
                    data : {
                        quiz_code : $("#quiz_code").val(),
                    },
                    success : async (response) => {
                    let all_items = JSON.parse(response)
                    let over = all_items.length
                    let score = 0;

                    for(i = 0; i < over; i++)
                    {
                        if(await question_answer(all_items[i].question, all_items[i].answer))
                        {
                            score++;
                        }
                    }

                    let final_score = score + "/" + over;

                    $("#scoreboard").append(`
                        <br><br><br><br><br><br><br><br>
                        <h1 class='text-center text-success' style='transform: scale(3)'> SCORE: ${final_score} </h1>
                        <br><br><br> <br><br>
                        <div class='row'>
                            <div class="col"></div>
            
                            <div class="col">
                            <a href="student.home.php" class='btn btn-primary' style='width:100%; transform: scale(2)'> Home </a>
                        </div>
                        <div class="col"></div>
                        </div>
                    `);
                    
                    $.ajax({
                        url : "backend/record_quiz.php",
                        method : "post",
                        data : {
                            quiz_code : $("#quiz_code").val(),
                            quiz_score : final_score,
                            student_id : $("#student_id").val(),
                        },
                        success : (response) => {
                            alert(response)
                        }
                    })

                }
            })

            
        })

    </script>
</body>
</html>
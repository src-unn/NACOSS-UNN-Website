<?php require_once 'class_lib.php';
?>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
<!DOCTYPE html>
<!--
Copyright 2015 NACOSS UNN Developers Group (NDG).

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->

<html>
    <head>
        <?php require_once 'default_head_tags.php'; ?>

        <!-- Page Title -->
        <title>NACOSS UNN : FAQs</title>        
    </head>
    <body class="metro" style="background-image: url(img/bg.jpg); background-repeat: repeat;">
        <div class="container bg-white" id="wrapper">            
            <?php require_once './header.php'; ?>
            <br/>
            <div class="padding20">
                <h1>Frequently Asked Questions</h1>
                <br/>
                <?php
                $array = UserUtility::getFAQs();
                for ($index = 0; $index < count($array); $index++) {
                    ?>
                    <div class="panel shadow" data-role="panel">
                        <div class="panel-header">
                            <?= "Q" . ($index + 1) . ". " . $array[$index]['question'] ?>
                        </div>
                        <div class="panel-content">
                            <strong>Reply:</strong> <?= $array[$index]['answer'] ?>
                        </div>
                    </div>
                    <?php
                }
                ?>
            </div>
            <br/>
            <?php require_once './footer.php'; ?>
        </div>
    </body>
</html>

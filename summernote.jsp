<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>

    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://bootswatch.com/_vendor/prismjs/themes/prism-okaidia.css">
    <link rel="stylesheet" href="https://bootswatch.com/_assets/css/custom.min.css">
    <link rel="stylesheet" href="plugins/summernote/summernote-lite.css">
</head>

<body>

    <h1 style="text-align: center;">Code Mine</h1>

    <div class="container mb-5">

        <form>
            <div class="card card-outline card-info">
                <div class="card-header">
                    <div class="row">
                        <div class="form-group col-3">
                            <select class="form-select" id="exampleSelect1">
                                <option>1</option>
                                <option>2</option>
                            </select>
                        </div>
                        <input type="text" class="col-8" name="title" placeholder="Title">
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <textarea id="summernote" name="content"></textarea>
                </div>

                <div class="card-footer text-muted text-center">
                    <button type="button" id="submitBtn" class="btn btn-outline-warning">Write</button>
                    <button type="button" class="btn btn-outline-danger">Cancel</button>
                </div>
            </div>
        </form>

        <div id="com">
            테스트
        </div>

    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <script src="https://bootswatch.com/_vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://bootswatch.com/_vendor/prismjs/prism.js" data-manual=""></script>
    <script src="https://bootswatch.com/_assets/js/custom.js"></script>

    <script src="plugins/summernote/summernote-lite.min.js"></script>
    <script src="plugins/summernote/lang/summernote-ko-KR.js"></script>

    <script>
        $(function () {
            // Summernote 기본 
            $('#summernote').summernote({
                height: 500,
                focus: true,
				          callbacks : { // 다중 이미지 업로드를 위한 for문
					        onImageUpload : function(files, editor, welEditable) {
						        for (var i = files.length - 1; i >= 0; i--) {
					    	      uploadSummernoteImageFile(files[i], this);
					          }
					        }	
				         }
            });
        });
      
      function uploadSummernoteImageFile(file, el) {
			data = new FormData();
			data.append("file", file);
			$.ajax({
				data : data,
				type : "POST",
				url : "uploadSummernoteImageFile.bo",
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				success : function(data) {
					$(el).summernote('editor.insertImage', data.url);
				}
			});
		}

    </script>
</body>

</html>

<!DOCTYPE html>
<html>
<head>
    <title>File Upload Example</title>
</head>
<body>
<h1>File Upload Example</h1>
<form id="uploadForm" enctype="multipart/form-data">
    <input type="file" name="file" id="fileInput">
    <button type="submit">Upload</button>
</form>

<script>
    const form = document.getElementById('uploadForm');
    const fileInput = document.getElementById('fileInput');

    form.addEventListener('submit', (e) => {
        e.preventDefault();

        const file = fileInput.files[0];
        if (!file) {
            return;
        }

        const formData = new FormData();
        formData.append('file', file);

        fetch('/upload', {
            method: 'POST',
            body: formData
        })
            .then(response => response.text())
            .then(data => {
                console.log(data);
                // 处理上传结果
            })
            .catch(error => {
                console.error(error);
                // 处理上传失败
            });
    });
</script>
</body>
</html>
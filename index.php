<!DOCTYPE html>
<html>
<head>
  <title>Travis CI PHP Nginx example</title>
  <meta charset="utf-8" />
</head>

<body>
  <h1>Hello <?= isset($_GET['name']) ? htmlspecialchars($_GET['name']) : 'World' ?>!</h1>
</body>
</html>

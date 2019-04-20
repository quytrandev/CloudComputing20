<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    
    
    <title>Post Management</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
   
</head>
<body>
<c:choose>
		
		<c:when test="${mode == 'MODE_POSTS'}">
			<div class="container text-center" id="tasksDiv">
				<h3>Post Management</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>ID</th>
								<th>Title</th>
								<th>Description</th>
								<th>Thumbnail</th>
								<th>Content1</th>
								<th>Content 2</th>
								<th>Content 3</th>
								<th>Content 4</th>
								<th>Image 1</th>
								<th>Image 2</th>
								<th>Image 3</th>
								<th>Image 4</th>
								<th>Type</th>
								<th>Author</th>
								<th></th>
																<th></th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="post" items="${posts}">
								<tr>
									<td>${post.id}</td>
									<td>${post.title}</td>
									<td>${post.description}</td>
									<td>${post.thumbnail}</td>
									<td>${post.content1}</td>
									<td>${post.content2}</td>
									<td>${post.content3}</td>
									<td>${post.content4}</td>
									<td>${post.image1}</td>
									<td>${post.image2}</td>
									<td>${post.image3}</td>
									<td>${post.image4}</td>
									<td width=100px>${post.type}</td>
									<td>${post.author}</td>
									<td><a href="postmanagement/update?id=${post.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="postmanagement/delete?id=${post.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="form-group">
					<a href="postmanagement/add">Create a new post</a>
					</div>
				</div>
			</div>
		</c:when>
		
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Update Post</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save">
					<input type="hidden" name="id" value="${post.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Title</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="title" value="${post.title}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="description" value="${post.description}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Thumbnail</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="thumbnail" value="${post.id}.jpg"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Content 1</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content1" value="${post.content1}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Content 2</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content2" value="${post.content2}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Content 3</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content3" value="${post.content3}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Content 4</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="content4" value="${post.content4}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Image 1</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="image1" value="${post.id}_1.jpg"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Image 2</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="image2" value="${post.id}_2.jpg"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Image 3</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="image3" value="${post.id}_3.jpg"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Image 4</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="image4" value="${post.id}_4.jpg"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Type</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="image4" value="${post.type}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Author</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="author" value="${post.author}"/>
						</div>				
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
						<a  style="background-color:gray;color:white" class="btn btn-primary" href="/postmanagement">Cancel</a>
					</div>
				</form>
			</div>
		</c:when>		
	</c:choose>
	
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>AHP Project</title>
<link
	href="https://fonts.googleapis.com/css2?family=Piedra&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="public/custom-css/style.css" />
<link rel="stylesheet"
	href="public/boostrap@4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="node_modules/animate.css/animate.min.css">
<link rel="stylesheet"
	href="public/fontawesome-free-5.13.0-web/css/all.css">

<style>
input[type="radio"]:checked ~div.circle {
	border: 2px solid #ff0000;
}
</style>
</head>
<body style="font-size: 1.3rem;">
	<!--navbar-->
	<div>
		<nav class="navbar navbar-expand-lg navbar-light ">
			<a class="navbar-brand animate__animated animate__swing " href="#"><span
				style="font-size: 2rem;">AHP Project</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<div class="navbar-toggler-icon"></div>
			</button>
			<div class="collapse navbar-collapse justify-content-end mr-5"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active mr-5"><a class="nav-link "
						href="index.jsp"><i class="fas fa-home  pr-1"></i>Home</a></li>
					<li class="nav-item mr-5"><a class="nav-link "
						href="viewphone.jsp"><i class="fas fa-address-card  pr-1"></i>View
							Phone List</a></li>
					<li class="nav-item mr-5"><a class="nav-link "
						href="resultview.jsp"><i class="fas fa-address-card  pr-1"></i>Contact</a>
					</li>
					<li class="nav-item mr-5"><a class="nav-link"
						href="about.html"><i class="fas fa-file-signature  pr-1"></i>About
							Us</a></li>
				</ul>
			</div>
		</nav>
		<hr>
	</div>

	<!--carousel-->
	<div id="carouselExampleCaptions" class="carousel slide my-5"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="public\img\pics\Z3_Lockup_CosmicGray.webp"
					class="d-block mx-auto" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<button class="btn btn-lg mt-3"
						style="background: #091625; color: white;">Explore</button>
				</div>
			</div>
			<div class="carousel-item">
				<img src="public/img/pics/22.jpg" class="d-block  mx-auto" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<button class="btn btn-lg mt-3"
						style="background: #091625; color: white;">
						<a href="specs.html">Explore</a>
					</button>
				</div>
			</div>
			<div class="carousel-item ">
				<img src="public\img\pics\32.jpg" class="d-block  mx-auto" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<button class="btn btn-lg mt-3"
						style="background: #091625; color: white;">Explore</button>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev " href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!--content-->
	<div class="row  my-5 ">
		<div class="col-lg-6 col-md-11  mx-auto">
			<img src="public/img/svg/undraw_Note_list_re_r4u9.png"
				class="img-fluid ml-2" style="border: 1px solid white;" alt="phone">
		</div>
		<!--form-->
		<div class="col-lg-6 col-md-11 mx-auto ">
			<form action="new.jsp" id="app-1" class="mx-5 ">
				<details>
					<summary> (1) How important is Price/cost with respect to
						RAM? </summary>
					<label :for="list.id_1" v-for="list in lists"> <!--v-for directive is used for list rendering-->
						<input type="radio" name="text" :id="list.id_1"
						:value="list.itemValue" /> <!--":"is shorthand sign for V-bind direvtive-->
						<div class="circle" style="margin: 10px 10px;">{{
							list.itemValue }}</div>
					</label>
					<p v-for="list in lists">{{list.txt}}</p>
				</details>
				<details>
					<summary> (2) How important is Price/cost with respect to
						Storage space? </summary>
					<label :for="list.id_2" v-for="list in list1"> <input
						type="radio" name="text1" :id="list.id_2" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>

					</label>
					<p v-for="list in list1">{{list.txt}}</p>

				</details>
				<details>
					<summary> (3) How important is Price/cost with respect to
						Battery? </summary>
					<label :for="list.id_3" v-for="list in list2"> <input
						type="radio" name="text2" :id="list.id_3" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>


					</label>
					<p v-for="list in list2">{{list.txt}}</p>
				</details>
				<details>
					<summary> (4) How important is Price/cost with respect to
						Camera? </summary>
					<label :for="list.id_4" v-for="list in list3"> <input
						type="radio" name="text3" :id="list.id_4" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>


					</label>
					<p v-for="list in list3">{{list.txt}}</p>
				</details>
				<details>
					<summary> (5) How important is RAM with respect to
						Storage space? </summary>
					<label :for="list.id_5" v-for="list in list4"> <input
						type="radio" name="text4" :id="list.id_5" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>


					</label>
					<p v-for="list in list4">{{list.txt}}</p>
				</details>
				<details>
					<summary> (6) How important is RAM with respect to
						Battery? </summary>
					<label :for="list.id_6" v-for="list in list5"> <input
						type="radio" name="text5" :id="list.id_6" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>


					</label>
					<p v-for="list in list5">{{list.txt}}</p>
				</details>
				<details>
					<summary> (7) How important is RAM with respect to
						Camera? </summary>
					<label :for="list.id_7" v-for="list in list6"> <input
						type="radio" name="text6" :id="list.id_7" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>


					</label>
					<p v-for="list in list6">{{list.txt}}</p>
				</details>
				<details>
					<summary> (8) How important is Storage space with respect
						to Battery? </summary>
					<label :for="list.id_8" v-for="list in list7"> <input
						type="radio" name="text7" :id="list.id_8" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{
							list.itemValue }}</div>


					</label>
					<p v-for="list in list7">{{list.txt}}</p>
				</details>
				<details>
					<summary> (9) How important is Storage space with respect
						to Camera? </summary>
					<label :for="list.id_9" v-for="list in list8"> <input
						type="radio" name="text8" :id="list.id_9" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>


					</label>
					<p v-for="list in list8">{{list.txt}}</p>
				</details>
				<details>
					<summary> (10) How important is Battery with respect to
						Camera? </summary>
					<label :for="list.id_10" v-for="list in list9"> <input
						type="radio" name="text9" :id="list.id_10" :value="list.itemValue" />
						<div class="circle" style="margin: 10px 10px;">{{list.itemValue}}</div>


					</label>
					<p v-for="list in list9">{{list.txt}}</p>
				</details>

				<input type="submit" class="btn btn-lg mt-3"
					style="background: #091625; color: white;" value="SUBMIT">
			</form>

		</div>
	</div>


	<!--footer-->
	<div class="footer">
		<div class="continer-fluid row justify-content-center p-4">
			<div class="col-4  ">
				<legend style="font-size: 1.5rem;">Social Network</legend>
				<i class="fab fa-facebook" style="font-size: 50px;"></i> <i
					class="fab fa-twitter" style="font-size: 50px;"></i> <i
					class="fab fa-linkedin-in" style="font-size: 50px;"></i>
			</div>
			<div class="col-4">
				<address>
					<address>
						Written by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br>
						Visit us at:<br> Example.com<br> Box 564, Disneyland<br>
						USA
					</address>
				</address>
			</div>
		</div>
		<div>
			<hr>
		</div>
		<div>
			<p class="text-center">&#169 Project-A|2020.All rights reserved</p>
		</div>
	</div>
	<!--boostrap4.5.0-->
	<script src="public/boostrap@4.5.0/jquery.slim.min.js"></script>
	<script src="public/boostrap@4.5.0/popper.min.js"></script>
	<script src="public/boostrap@4.5.0/js/bootstrap.min.js"></script>
	<!--vuejs direct include&&customjs-->
	<!--we are not going to build SPA,This is the basic level VueJs-->
	<script src="public/vuejs/vue.min.js"></script>
	<script src="public/vuejs/app.js"></script>
</body>
</html>

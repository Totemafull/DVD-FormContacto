<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contacto.aspx.vb" Inherits="Contacto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Barrancas de Quilquihue</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Cabañas en alquiler y hosteria en Lolog, San Martin de los Andes, Patagonia argentina, provincia de Neuquén.">
    <meta name="author" content="">

    <link href="barrancasquilquihue/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="barrancasquilquihue/css/txt-layout.css" rel="stylesheet" type="text/css" />
    <link href="barrancasquilquihue/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="barrancasquilquihue/css/layout-bq.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300' rel='stylesheet' type='text/css' />
    <style>

        /* GLOBAL STYLES
    -------------------------------------------------- */
    /* Padding below the footer and lighter body text */

    body {
      padding-bottom: 40px;
      color: #5a5a5a;
	  background-color:#f3f3f2;
    }



    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Special class on .container surrounding .navbar, used for positioning it into place. */
    .navbar-wrapper {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      z-index: 10;
      padding-top: 10px;
      margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
    }
    .navbar-wrapper .navbar {

    }

    /* Remove border and change up box shadow for more contrast */
    .navbar .navbar-inner {
      border: 0;
     /* -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
         -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
              box-shadow: 0 2px 10px rgba(0,0,0,.25);*/
    }

    /* Downsize the brand/project name a bit */
    .navbar .brand {
      padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
      font-size: 16px;
      font-weight: bold;
      text-shadow: 0 -1px 0 rgba(0,0,0,.5);
    }

    /* Navbar links: increase padding for taller navbar */
    .navbar .nav > li > a {
      padding: 23px 36px 0px 0px; /* top right bottom left - ACHIQUE EL PADDING PARA IPADS*/
    }

    /* Offset the responsive button for proper vertical alignment */
    .navbar .btn-navbar {
      margin-top: 10px;
    }



    /* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

    /* Carousel base class */
    .carousel {
		margin-top:190px;/* esto condiciona donde cae el carousel */
      margin-bottom: 60px;
	 
    }

    .carousel .container {
      position: relative;
      z-index: 9;
	  
    }

    .carousel-control {
      height: 80px;
      margin-top: 0;
      font-size: 120px;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
      background-color: transparent;
      border: 0;
      z-index: 10;
    }

    .carousel .item {
      height: 0px;
    }
    .carousel img {
      position: absolute;
      top: 0;
      left: 0;
      min-width: 100%;
      /*height: 400px;*/
    }

    .carousel-caption {
      background-color: transparent;
      position: static;
      max-width: 550px;
      padding: 0 20px;
      margin-top: 400px;
	  margin-left:550px;
    }
    .carousel-caption h1,
    .carousel-caption .lead {
	font-family:'Lato', sans-serif;
	font-weight:100;
      margin: 0;
      line-height: 1.25;
      color: #fff;
      text-shadow: 0 1px 2px rgba(0,0,8,8);
    }
    .carousel-caption .btn {
      margin-top: 10px;
    }



    /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Center align the text within the three columns below the carousel */
    .marketing .span4 {
      text-align: center;
    }
    .marketing h2 {
      font-weight: 100;
	  font-size:26px;
	  line-height:40px;
    }
    .marketing .span4 p {
      margin-left: 5px;
      margin-right: 5px;
    }


    /* Featurettes
    ------------------------- */

    .featurette-divider {
      margin: 30px 0; /* Space out the Bootstrap <hr> more */
    }
    .featurette {
      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
      overflow: hidden; /* Vertically center images part 2: clear their floats. */
    }
    .featurette-image {
      margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
    }

    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
    .featurette-image.pull-left {
      margin-right: 40px;
    }
    .featurette-image.pull-right {
      margin-left: 40px;
    }

    /* Thin out the marketing headings */
    .featurette-heading {
      font-size: 50px;
      font-weight: 300;
      line-height: 1;
      letter-spacing: -1px;
    }



    /* RESPONSIVE CSS
    -------------------------------------------------- */

    @media (max-width: 979px) {

      .container.navbar-wrapper {
        margin-bottom: 0;
        width: auto;
      }
      .navbar-inner {
        border-radius: 0;
        margin: -20px 0;
      }

      .carousel .item {
        height: 500px;
      }
      .carousel img {
        width: auto;
        height: 500px;
      }

      .featurette {
        height: auto;
        padding: 0;
      }
      .featurette-image.pull-left,
      .featurette-image.pull-right {
        display: block;
        float: none;
        max-width: 40%;
        margin: 0 auto 20px;
      }
    }


    @media (max-width: 767px) {

      .navbar-inner {
        margin: -20px;
      }

      .carousel {
        margin-left: -20px;
        margin-right: -20px;
      }
      .carousel .container {

      }
      .carousel .item {
        height: 300px;
      }
      .carousel img {
        height: 300px;
      }
      .carousel-caption {
        width: 65%;
        padding: 0 70px;
        margin-top: 100px;
      }
      .carousel-caption h1 {
        font-size: 30px;
      }
      .carousel-caption .lead,
      .carousel-caption .btn {
        font-size: 18px;
      }

      .marketing .span4 + .span4 {
        margin-top: 40px;
      }

      .featurette-heading {
        font-size: 30px;
      }
      .featurette .lead {
        font-size: 18px;
        line-height: 1.5;
      }

    }
    </style>

    <link rel="shortcut icon" href="barrancasquilquihue/img/ico/favicon.ico">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    <div class="navbar-wrapper" style="background-color:#FFF; ">
      <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
      <div class="contenedor" style="height:180px;">
      <div class="container">
        <div class="row">
          <div class="span4" align="left"><img src="barrancasquilquihue/img/logo-barrancasquilquihue-ch.jpg" alt="barrancas"></div>
          <div class="span4 offset4" style="padding-top:10px;" align="left">
            <h7><a href="#" >English</a> | Español</h7>
            <br>
            <h7>(011) 5510-5033 / 5188</h7>
            <p><a href="mailto:info@barrancasquilquihue.com.ar" target="_blank">info@barrancasquilquihue.com.ar</a></p>
            <!--<p class="btnredesch" style="padding-top:10px;"> <a href="#">Facebook</a>   |  <a href="#">LinkedIn</a></p>-->
            <p class="btnredesch" style="padding-top:10px;"><a href="barrancasquilquihue/descargas/BARRANCA-INFO-TURISTICA-1.pdf" target="_blank"><strong><i class="icon-file"></i> Descargue aqui el PDF informativo</strong></a></p>
          </div>
          <!--cierra span4-->
        </div>
        <!--cierra ROW-->
        <div class="navbar">
        	
           
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li><a href="barrancasquilquihue/index.html">HOME</a></li>
                <li><a href="barrancasquilquihue/entorno.html">EL ENTORNO</a></li>
                <li><a href="barrancasquilquihue/hosteria.html">LA HOSTERÍA</a></li>
                <li><a href="barrancasquilquihue/cabanas.html">LAS CABAÑAS</a></li>
                <li><a href="barrancasquilquihue/actividades.html">ACTIVIDADES</a></li>
                <li ><a href="barrancasquilquihue/comollegar.html">CÓMO LLEGAR</a></li>
                <li><a href="barrancasquilquihue/turismo.html">TURISMO</a></li>
                <li><a href="barrancasquilquihue/galeria.html">GALERÍA</a></li>
                <li class="active"><a href="Contacto.aspx">CONTACTO</a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

      </div> <!-- /.container -->
      </div><!-- /.contenedor -->
    </div><!-- /.navbar-wrapper -->
   



    <!-- Carousel
    ================================================== -->
  <div id="myCarousel" class="carousel slide" style="height:0px;">
      <div class="carousel-inner">
        
       <div class="item active">
          <img src="barrancasquilquihue/img/actividades/1.jpg" alt="Actividades en la patagonia Argentina, Lolog, Neuquen.">
          </div>
        
         <div class="item ">
          <img src="barrancasquilquihue/img/actividades/2.jpg" alt="Cabañas en alquiler en la patagonia Argentina">
         </div>
       
      </div>
     
    </div><!-- /.carousel -->

        <div class="container marketing"  style="padding-top:40px;"><!-- al aumentar el padding se agranda el gris de fondo -->

          <!-- Three columns of text below the carousel -->
          <div class="row-fluid" style="background-color:#FFF;" >
            <div class="span7" style="padding:12px 10px 15px 20px; ">
        	    <h2>Contacto</h2>
                <br />
                <p class="txt">Contáctese con nostros para recibir más información sobre las caracteristicas de Barrancas de Quilquihue o para realizar consultas y/o reservas.
        
            <br />
		    <strong>Teléfono:</strong> (011) 5510-5033 / 5188
            <br />
            <strong>Email:</strong> <i class="icon-envelope"></i> 
        	    <a href="mailto:info@barrancasquilquihue.com.ar" target="_blank">info@barrancasquilquihue.com.ar</a></p>
                <br><br>
                Los esperamos.
            </div><!-- /.span 7-->
            <div class="span5">
        	
                <img src="barrancasquilquihue/img/contacto.jpg" alt="Contacto BQ" />
            </div><!-- /.span 5-->
       
          </div><!-- /.row -->

        <hr class="featurette-divider" />

        <asp:Panel ID="pnl_Formulario" runat="server">
            <table>
                <tr>
                    <td>Nombre y Apellido: </td>
                    <td><asp:TextBox ID="tb_Nombre" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><asp:TextBox ID="tb_Email" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Nacionalidad: </td>
                    <td><asp:TextBox ID="tb_Nacionalidad" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Donde nos conoció:</td>
                    <td>
                    <asp:DropDownList ID="DD_Forma" runat="server">
                        <asp:ListItem Value="Internet" text="Internet"></asp:ListItem>
                        <asp:ListItem Value="Me lo recomendó un amigo" text="Me lo recomendó un amigo"></asp:ListItem>
                        <asp:ListItem Value="Publicidad" text="Publicidad"></asp:ListItem>
                        <asp:ListItem Value="Otro" text="Otro"></asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle">Comentarios: </td>
                    <td><asp:TextBox ID="tb_Mensaje" TextMode="MultiLine" Height="100px" Width="300px" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:LinkButton id="btn_Enviar" runat="server" Text="Enviar"></asp:LinkButton></td>
                </tr>
            </table>
        </asp:Panel>

        <footer style="text-align:center;">
            <h4 >Loteo Quilquihue  |  Manzana 26  |  Lote 13  |  Lolog  |  San Martín de los Andes  |  Neuquén |  Argentina  <br />
            (011) 5510-5033 / 5188</h4>
            <span class="btnmail"><a href="mailto:info@barrancasquilquihue.com.ar" target="_blank">info@barrancasquilquihue.com.ar</a></span>
            <p class="btnredes">Visítenos en <a href="#">Facebook</a></p>
            <br />
            <p class="small">&copy; 2013 Barrancas de Quilquihue </p>
        </footer>
        </div>
    </form>
</body>
</html>

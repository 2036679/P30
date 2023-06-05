<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="P3.filmes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movies</title>
    <style>
        body {
            background-color: cornflowerblue;
            text-align: center;
        }
        
        h1 {
            color: wheat;
            margin-top: 50px;
        }
        
        #movie-list {
            margin: 50px auto;
            width: 50%;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        
        #movie-list table {
            width: 100%;
            border-collapse: collapse;
        }
        
        #movie-list th, #movie-list td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        #movie-list th {
            background-color: cornflowerblue;
            color: #fff;
        }
        
        #movie-poster {
            width: 200px;
            height: 300px;
            margin:20px;
        }
        
        .movie-details {
            font-size: 20px;
            font-weight: bold;
            color: wheat;
            margin-top: 20px;
            display: none; /* Hide the movie details by default */
        }
        
        .back-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            color: cornflowerblue;
            cursor: pointer;
        }
        
        .back-button:hover {
            background-color: cornflowerblue;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Popular Movies</h1>
    <select id="movieSelect" onchange="showMovieDetails(this.value)">
        <option value="">-- Select a movie --</option>  
        <option value="1">Avengers: Endgame</option>    
        <option value="2">Black Panther</option>   
        <option value="3">Inception</option>
        <option value="4">The Dark Knight</option>  
        <option value="5">Pulp Fiction</option>
        <option value="6">The Godfather</option>  
        <option value="7">Forrest Gump</option>
    </select>  
<button id="show-details-button">Show Details</button>
  
  <div id="movie-details">
    <img id="movie-poster" src="" alt="movie poster" />
    <div class="movie-details"></div> 
</div>
  <style>
.movie-details {
  font-size: 20px;
  font-weight: bold;
  color: wheat;
  margin-top: 20px;
  display: none;
}  
</style>


      
    <button class="back-button" onclick="location.href='Home.aspx'">Back to Home Page</button>
  
    <script>
        // Show the details of the selected movie
        function showMovieDetails(movieId) {
            var moviePoster = document.getElementById("movie-poster");

            var movieDetails = document.querySelector("#movie-details .movie-details");
            var showDetailsButton = document.getElementById("show-details-button");


            switch (movieId) {
                case "1":
                    moviePoster.src = "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg";
                    movieDetails.innerHTML = "Title: Avengers: Endgame<br />Release Date: April 26, 2019<br />Director: Anthony and Joe Russo<br />Cast: Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, and Josh Brolin";
                    document.querySelector("#movie-details .movie-details").style.display = "block";
                    break;
                case "2":
                    moviePoster.src = "https://upload.wikimedia.org/wikipedia/en/d/d6/Black_Panther_%28film%29_poster.jpg";
                    movieDetails.innerHTML = "Title: Black Panther<br />Release Date: February 16, 2018<br />Director: Ryan Coogler<br />Cast: Chadwick Boseman, Michael B. Jordan, Lupita Nyong'o, Danai Gurira, Martin Freeman, Daniel Kaluuya, Letitia Wright, Winston Duke, Angela Bassett, Forest Whitaker, and Andy Serkis";
                    document.querySelector("#movie-details .movie-details").style.display = "block";
                    break;
                case "3":
                    moviePoster.src = "https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg";
                    movieDetails.innerHTML = "Title: Inception<br />Release Date: July 16, 2010<br />Director: Christopher Nolan<br />Cast: Leonardo DiCaprio, Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Ellen Page, Tom Hardy, Dileep Rao, Cillian Murphy, Tom Berenger, and Michael Caine";
                    document.querySelector("#movie-details .movie-details").style.display = "block";
                    break;
                case "4":
                    moviePoster.src = "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg";
                    movieDetails.innerHTML = "Title: The Dark Knight<br />Release Date: July 18, 2008<br />Director: Christopher Nolan<br />Cast: Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine, Gary Oldman, and Maggie Gyllenhaal";
                    document.querySelector("#movie-details .movie-details").style.display = "block";
                    break;
                case "5":
                    moviePoster.src = "https://upload.wikimedia.org/wikipedia/en/3/3b/Pulp_Fiction_%281994%29_poster.jpg";
                    movieDetails.innerHTML = "Title: Pulp Fiction<br />Release Date: October 14, 1994<br />Director: Quentin Tarantino<br />Cast: John Travolta, Uma Thurman, Samuel L. Jackson, Harvey Keitel, Tim Roth, Amanda Plummer, Maria de Medeiros, Ving Rhames, Eric Stoltz, Rosanna Arquette, Christopher Walken, and Bruce Willis";
                    document.querySelector("#movie-details .movie-details").style.display = "block";
                    break;
                case "6":
                    moviePoster.src = "https://upload.wikimedia.org/wikipedia/en/1/1c/Godfather_ver1.jpg";
                    movieDetails.innerHTML = "Title: The Godfather<br />Release Date: March 24, 1972<br />Director: Francis Ford Coppola<br />Cast: Marlon Brando, Al Pacino, James Caan, Richard S. Castellano, Robert Duvall, Sterling Hayden, John Marley, Richard Conte, and Diane Keaton";
                    document.querySelector("#movie-details .movie-details").style.display = "block";
                    break;
                case "7":
                    moviePoster.src = "https://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg";
                    movieDetails.innerHTML = "Title: Forrest Gump<br />Release Date: July 6, 1994<br />Director: Robert Zemeckis<br />Cast: Tom Hanks, Robin Wright, Gary Sinise, Mykelti Williamson, and Sally Field";
                    document.querySelector("#movie-details .movie-details").style.display = "block";
                    break;
                default:
                    moviePoster.src = "";
                    movieDetails.innerHTML = "";
                    break;
            }

            // Show the movie details and change the button text to "Hide Details"
            
        }

        // Toggle the visibility of the movie details and change the button text accordingly
        document.getElementById("show-details-button").addEventListener("click", function () {
            var movieDetails = document.getElementById("movie-details");
            var showDetailsButton = document.getElementById("show-details-button");

            if (movieDetails.style.display === "none") {
                movieDetails.style.display = "block";
                showDetailsButton.innerHTML = "Hide Details";
            } else {
                movieDetails.style.display = "none";
                showDetailsButton.innerHTML = "Show Details";
            }
        });
    </script>

</body>
</html>
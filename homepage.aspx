<%@ Page Title="" Language="C#" MasterPageFile="~/mainpage.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Elibrary_Management_Project.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <section>
        <img src="img/about.jpg"  height="600"  width="100%"/>
    </section>



    <%--home page--%>
    <div class="mainsam">

   
    <section class="home sectionsam" id="home">

            

               <div class="home__container containersam gridsam">

                  <div class="home__data">
                     
                     <h1 class="home__title ">  Browse & <br>
                        Select E-Books
                     </h1>

                     <p class="home__description">

                           Find the best e-books from your favorite 
                           writers, explore hundreds of books with all 
                           possible categories, take advantage of the 
                           50% discount and much more.

                     </p>

                     <a href="viewbooks.aspx" class="buttonsam">Explore Now</a>

                  </div>



                  <div class="home__images">

                     <div class="home__swiper swiper">

                        <div class="swiper-wrapper">

                           <article class="home__article  swiper-slide">

                              <img src="img/bb2.png" alt="img" class="home__img">

                           </article>


                           <article class="home__article  swiper-slide">

                              <img src="img/home-book-2.png" alt="img" class="home__img">

                           </article>


                           <article class="home__article  swiper-slide">

                              <img src="img/bb1.png" alt="img" class="home__img">

                           </article>


                           <article class="home__article  swiper-slide">

                              <img src="img/home-book-4.png" alt="img" class="home__img">

                           </article>

                        </div>

                     </div>

                  </div>

               </div>           
            
         </section>


         </div>




     <section style="margin-bottom:150px">
      
         <div class="container">
             
             <div class="row" style="margin-bottom:100px;">

                 <div class="col-12">
                     <center>
                         <h2>Our Features</h2>
                         <p><b>Our 3 Primary Features - </b></p>
                     </center>
                 </div>
             </div>

             <div class="row">

                 <div class="col-md-4">
                     <center>
                         <img src="img/digital inventory.png" width="300" height="200" />
                         <h4>Digital Book Inventory</h4>
                         <p class="paratext">Digital inventory in an e-library project provides a comprehensive catalog of e-books, journals, and multimedia resources, enabling easy access and organization. This inventory system helps streamline resource management, allowing users to search, borrow, and return items with ease, and ensures up-to-date availability across the digital library platform.

                         </p>
                     </center>
                 </div>
                 
                 <div class="col-md-4">
                     <center>
                         <img src="img/search.png"  width="300" height="200"/>
                         <h4>Search Books</h4>
                         <p class="paratext">The search books feature in an e-library project enables users to quickly locate resources by title, author, genre, or keyword, enhancing accessibility and user experience by delivering precise search results. This function helps users discover relevant materials efficiently, improving engagement and satisfaction.

                         </p>
                     </center>
                 </div>
                 
                 <div class="col-md-4">
                     <center>
                         <img src="img/defaulters list.png"  width="300" height="200"/>
                         <h4>Defaulter List</h4>
                         <p class="paratext">The defaulter list tracks users who have overdue books or resources, helping library administrators monitor borrowing activities and enforce return policies. This feature ensures timely circulation of resources and promotes accountability among users, supporting fair access for all.

                         </p>
                     </center>
                 </div>
             </div>

         </div>
     </section>




     <section style="margin-bottom:150px">
     <img src="img/home2.jpg"  height="600"  width="100%"/>
 </section>




     <section style="margin-bottom:150px">
  
     <div class="container">
         
         <div class="row" style="margin-bottom:100px;">

             <div class="col-12">
                 <center>
                     <h2>Our Process</h2>
                     <p><b>We have a simple 3 steps process </b></p>
                 </center>
             </div>
         </div>

         <div class="row">

             <div class="col-md-4">
                 <center>
                     <img src="img/sign-up.png" width="300" height="200" />
                     <h4>Sign Up</h4>
                     <p class="paratext">The Sign Up feature in the e-library project allows new users to create an account, providing them access to a vast collection of digital books and resources tailored to their interests.

                     </p>
                 </center>
             </div>
             
             <div class="col-md-4">
                 <center>
                     <img src="img/search.png"  width="300" height="200"/>
                     <h4>Search Books</h4>
                     <p class="paratext">The search books feature in an e-library project enables users to quickly locate resources by title, author, genre, or keyword, enhancing accessibility and user experience by delivering precise search results. This function helps users discover relevant materials efficiently, improving engagement and satisfaction.

                     </p>
                 </center>
             </div>
             
             <div class="col-md-4">
                 <center>
                     <img src="img/library.jfif"  width="300" height="200"/>
                     <h4>Visit Us</h4>
                     <p class="paratext">The Visit Us option guides users to the library’s physical or virtual location, inviting them to explore additional services and support available through the e-library platform.

                     </p>
                 </center>
             </div>
         </div>

     </div>
 </section>





</asp:Content>

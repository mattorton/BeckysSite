<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
        <ul id="menu">
			<li><a class="current" href="">home</a></li>
			<li><%:
			        ViewContext.RouteData.Values["id"].ToString() == "" ? Html.ActionLink("about", "About", "HomeController", new { @class = "current" }) : Html.ActionLink("about", "About")
			        %></li>
			<li><a href="#">treatments</a></li>
			<li><a href="#">prices</a></li>
			<li><a href="#">articles/tutorials</a></li>
			<li><a href="#">contact</a></li>
		</ul>
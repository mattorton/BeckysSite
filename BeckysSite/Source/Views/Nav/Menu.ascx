<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Source.NavLink>>" %>
<% foreach (var link in Model)
   {%>
        <%: Html.RouteLink(link.Text, link.RouteValues, new Dictionary<string, object> {{ "class", link.IsSelected ? "current" : null}})%>
  <% } %>

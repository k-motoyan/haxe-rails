<% module_namespacing do %>
-cp src
-js js/<%= file_name %>.js
-main <%= file_name %>.Main
<% end %>
<form method="post">
	User: ${user.name}
	<br />
	<input type="submit" value="Edit" formaction="controller?taskName=UpdateUser" />
	<input type="submit" value="Logout" formaction="controller?taskName=Logout" />
</form>
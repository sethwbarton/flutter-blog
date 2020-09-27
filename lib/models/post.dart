class Post {
  String file;
  String datePosted;

  String getFile() {
    return this.file;
  }

  String getDatePosted() {
    return this.datePosted;
  }

  Post(this.file, this.datePosted);
}

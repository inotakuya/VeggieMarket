var BlogListView,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

BlogListView = (function(_super) {
  __extends(BlogListView, _super);

  function BlogListView() {
    return BlogListView.__super__.constructor.apply(this, arguments);
  }

  BlogListView.prototype.el = '#blogApp';

  BlogListView.prototype.events = {
    'click #add': 'addBlog'
  };

  BlogListView.prototype.initialize = function() {
    this.$title = this.$('#title');
    this.$message = this.$('#message');
    this.collection = new BlogCollection();
    this.render();
    return this.listenTo(this.collection, 'add', this.renderBlog);
  };

  BlogListView.prototype.render = function() {
    this.collection.each(function(item) {
      return this.renderBlog(item);
    }, this);
    return this;
  };

  BlogListView.prototype.renderBlog = function(item) {
    var blogView;
    blogView = new BlogView({
      model: item
    });
    $('#blogList').append(blogView.render().el);
    this.$title.val('');
    return this.$message.val('');
  };

  BlogListView.prototype.addBlog = function(e) {
    e.preventDefault();
    if (this.$title.val() !== '' && this.$message.val() !== '') {
      return this.collection.add(this.add());
    }
  };

  BlogListView.prototype.add = function() {
    return {
      title: this.$title.val(),
      message: this.$message.val()
    };
  };

  return BlogListView;

})(Backbone.View);

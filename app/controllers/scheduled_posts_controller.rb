class ScheduledPostsController < ApplicationController
  # GET /scheduled_posts
  # GET /scheduled_posts.xml
  def index
    @scheduled_posts = ScheduledPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scheduled_posts }
    end
  end

  # GET /scheduled_posts/1
  # GET /scheduled_posts/1.xml
  def show
    @scheduled_post = ScheduledPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scheduled_post }
    end
  end

  # GET /scheduled_posts/new
  # GET /scheduled_posts/new.xml
  def new
    @scheduled_post = ScheduledPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scheduled_post }
    end
  end

  # GET /scheduled_posts/1/edit
  def edit
    @scheduled_post = ScheduledPost.find(params[:id])
  end

  # POST /scheduled_posts
  # POST /scheduled_posts.xml
  def create
    @scheduled_post = ScheduledPost.new(params[:scheduled_post])

    respond_to do |format|
      if @scheduled_post.save
        format.html { redirect_to(@scheduled_post, :notice => 'Scheduled post was successfully created.') }
        format.xml  { render :xml => @scheduled_post, :status => :created, :location => @scheduled_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scheduled_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scheduled_posts/1
  # PUT /scheduled_posts/1.xml
  def update
    @scheduled_post = ScheduledPost.find(params[:id])

    respond_to do |format|
      if @scheduled_post.update_attributes(params[:scheduled_post])
        format.html { redirect_to(@scheduled_post, :notice => 'Scheduled post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scheduled_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_posts/1
  # DELETE /scheduled_posts/1.xml
  def destroy
    @scheduled_post = ScheduledPost.find(params[:id])
    @scheduled_post.destroy

    respond_to do |format|
      format.html { redirect_to(scheduled_posts_url) }
      format.xml  { head :ok }
    end
  end
end

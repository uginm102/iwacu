=begin
Copyright (c) <year> <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
=end

class FolkStoriesController < ApplicationController
  # GET /folk_stories
  # GET /folk_stories.json
  def index
    @folk_stories = FolkStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @folk_stories }
    end
  end

  # GET /folk_stories/1
  # GET /folk_stories/1.json
  def show
    @folk_story = FolkStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @folk_story }
    end
  end

  # GET /folk_stories/new
  # GET /folk_stories/new.json
  def new
    @folk_story = FolkStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @folk_story }
    end
  end

  # GET /folk_stories/1/edit
  def edit
    @folk_story = FolkStory.find(params[:id])
  end

  # POST /folk_stories
  # POST /folk_stories.json
  def create
    @folk_story = FolkStory.new(params[:folk_story])

    respond_to do |format|
      if @folk_story.save
        format.html { redirect_to @folk_story, :notice => 'Folk story was successfully created.' }
        format.json { render :json => @folk_story, :status => :created, :location => @folk_story }
      else
        format.html { render :action => "new" }
        format.json { render :json => @folk_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /folk_stories/1
  # PUT /folk_stories/1.json
  def update
    @folk_story = FolkStory.find(params[:id])

    respond_to do |format|
      if @folk_story.update_attributes(params[:folk_story])
        format.html { redirect_to @folk_story, :notice => 'Folk story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @folk_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /folk_stories/1
  # DELETE /folk_stories/1.json
  def destroy
    @folk_story = FolkStory.find(params[:id])
    @folk_story.destroy

    respond_to do |format|
      format.html { redirect_to folk_stories_url }
      format.json { head :no_content }
    end
  end
end

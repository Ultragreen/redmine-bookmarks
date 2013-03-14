class BookmarkController < ApplicationController
  unloadable
  helper :sort
  include SortHelper
  
  before_filter :find_category, :only => [:edit_category]
  before_filter :find_link, :only => [:edit_link]
  
  def index   
    sort_init 'label','asc'
    sort_update %w(label description category_id url global admin created_at updated_at user_id)
    c = ARCondition.new(User.current.admin? ? ["global = 1 or user_id = #{User.current.id}"] : [ "(user_id = #{User.current.id} OR global = 1) AND admin = 0"]) 
    @link_count = Link.count(:conditions => c.conditions)
    @link_pages = Paginator.new self, @link_count,
								per_page_option,
								params['page']								
    @links =  Link.find :all,:order => sort_clause,
                        :conditions => c.conditions,
						            :limit  =>  @link_pages.items_per_page,
						            :offset =>  @link_pages.current.offset
    render :layout => !request.xhr?	
  end
  
  def view_categories
    sort_init 'name','asc'
    sort_update %w(name description global created_at updated_at user_id)
    c = ARCondition.new(User.current.admin? ? ["global = 1 or user_id = #{User.current.id}"] :  [ "(user_id = #{User.current.id} OR global = 1) AND admin = 0"]) 
    @category_count = Category.count(:conditions => c.conditions)
    @category_pages = Paginator.new self, @category_count,
								per_page_option,
								params['page']								
    @categories =  Category.find :all,:order => sort_clause,
                        :conditions => c.conditions,
						            :limit  =>  @category_pages.items_per_page,
						            :offset =>  @category_pages.current.offset
    render :layout => !request.xhr?
  end

  def add_link
    @link = Link.new(params[:link])
    if request.post?
      if @link.save then
        flash[:notice] = l(:notice_successful_create)
        redirect_to :controller => 'bookmark', :action => 'index'
      end
    end
  end

  def add_category
    @category = Category.new(params[:category])
    if request.post?
      if @category.save then
        redirect_to :controller => 'bookmark', :action => 'view_categories'
        flash[:notice] = l(:notice_successful_create)
      end
    end
  end

  def edit_category
    if request.post? and @category.update_attributes(params[:category])
      flash[:notice] = l(:notice_successful_update)
      redirect_to :controller => 'bookmark', :action => 'view_categories'
    end
  end
  
  def edit_link
    if request.post? and @link.update_attributes(params[:link])
      flash[:notice] = l(:notice_successful_update)
      redirect_to :controller => 'bookmark', :action => 'index'
    end
  end

  def remove_link
    Link.destroy(params[:id])
    redirect_to :controller => 'bookmark', :action => 'index'
  end

  def remove_category
    Category.destroy(params[:id])
    redirect_to :controller => 'bookmark', :action => 'view_categories'
  end
  
  private 
  
  def find_category
    @category = Category.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end
  
  def find_link
    @link = Link.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end
  
end

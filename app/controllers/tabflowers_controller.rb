class TabflowersController < ApplicationController

  def index
    @tabflowers = Tabflower.paginate :page => params[:page], :per_page => 9
    sql="select count(*) from tabflowers"
    @totalTS=Tabflower.count_by_sql(sql)
    totalTS=Tabflower.count_by_sql(sql)
    @currentYS=params[:page]
    @perPage=9
    perPage=9
    if totalTS % perPage!=0
      totalJY=totalTS / perPage+1
    else
      totalJY=totalTS / perPage
    end
    @totalJY=totalJY
    @tabuser=session[:tabuser]
      respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tabflowers }
    end
  end

  def show
    @tabuser=session[:tabuser]
    @tabflower = Tabflower.find(params[:id])
    if @tabuser!=nil
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @tabflower }
      end
    end
  end

  def search
    earchName=params[:tabflower][:fName]
    sql="select * from tabflowers where fName like '%"+searchName+"%'"
    @tabflowers=Tabflower.find_by_sql(sql)
    if @tabflowers==nil
      flash[:notice]="sorry,this Flower is not store"
    end
  end

  def new
    @tabuser=session[:tabuser]
    if @tabuser!=nil then
      @tabflower = Tabflower.new
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @tabflower }
      end
    end
  end

  def edit
    @tabflower = Tabflower.find(params[:id])
  end

  def create
    @tabuser=session[:tabuser]
    if @tabuser!=nil then
    @tabflower = Tabflower.new(params[:tabflower])
    respond_to do |format|
      if @tabflower.save
        format.html { redirect_to(@tabflower, :notice => 'Tabflower was successfully created.') }
        format.xml  { render :xml => @tabflower, :status => :created, :location => @tabflower }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tabflower.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @tabflower = Tabflower.find(params[:id])
    respond_to do |format|
      if @tabflower.update_attributes(params[:tabflower])
        format.html { redirect_to(@tabflower, :notice => 'Tabflower was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tabflower.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @tabflower = Tabflower.find(params[:id])
    @tabflower.destroy
    respond_to do |format|
      format.html { redirect_to(tabflowers_url) }
      format.xml  { head :ok }
    end
  end

  

end

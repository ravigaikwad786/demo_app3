class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => 'defult'})
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
      if @subject.update(subject_params)
        redirect_to(subject_path(@subject))
      else
        render('edit') 
      end
  end
 # update_attribute
  def delete
  end

  def destroy
    
  end


  private
    def subject_params
      params.require(:subject).permit(:name ,:position ,:visible)
    end

end
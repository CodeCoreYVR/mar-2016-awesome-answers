class QuestionsController < ApplicationController

  def new
    # we need to define a new `Question` object in order to be able to
    # properly generate a form in Rails
    # Question is the ActiveRecord model
    @question = Question.new
  end

  def create
    # Method 1
    # @question       = Question.new
    # @question.title = params[:question][:title]
    # @question.body  = params[:question][:body]
    # @question.save!

    # Method 2
    # @question = Question.create({title: params[:question][:title],
    #                              body:  params[:question][:body]})

    # Method 3
    # params[:question] looks like: {"title"=>"question from web", "body"=>"question body from web"}
    # @question = Question.create(params[:question])
    # this will throw a: ActiveModel::ForbiddenAttributesError exception


    # Method 4
    # we use Strong Parameters feature of Rails
    question_params = params.require(:question).permit([:title, :body])
    @question       = Question.new(question_params)

    if @question.save
      # render :show
      # redirect_to question_path({id: @question.id})
      redirect_to question_path(@question)
    else
      # this will render `app/views/questions/new.html.erb` because the default
      # in this action is to render `app/views/questions/create.html.erb`
      render :new
    end
  end

  # we receive a request such as : GET /questions/56
  # params[:id] will be `56`
  def show
    @question = Question.find params[:id]
  end

  def index
    @questions = Question.all
  end

  def edit
    @question = Question.find params[:id]
  end

  def update
    @question       = Question.find params[:id]
    question_params = params.require(:question).permit(:title, :body)
    if @question.update question_params
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find params[:id]
    @question.destroy
    redirect_to questions_path
  end

end

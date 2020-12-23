class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    # render json: @tasks

  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # POST /tasks
  # POST /tasks.json
  def create
    # @task = Task.new(task_params)

    # インスタンスを model から作成

    @task = Task.new(task_params)

    # インスタンスを DB に保存する
    @task.save!

    # json として値を返す
    render :show

    # if @task.save
    #   render :show, status: :created, location: @task
    # else
    #   render json: @task.errors, status: :unprocessable_entity
    # end
  end


  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    # 対象のレコードを探す
    # @task = Task.find(params[:id])
    # それをupdate
    @task.update!(task_params)
    # json として値を返す
    render :show

    # if @task.update(task_params)
    #   render :show, status: :ok, location: @task
    # else
    #   render json: @task.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy!

    render :show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:task)
    end
end

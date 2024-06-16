class PalsController < ApplicationController
  def index
    @pals = Pal.order("id")
    @pals._brick_querying(params, brick_col_names: true)
  end

  def show
    find_pal
  end

  def new
    @pal = Pal.new
  end

  def create
    @pal = Pal.create(pal_params)
  end

  def edit
    find_pal
  end

  def update
    find_pal.update(pal_params)
  end

  def destroy
    find_pal.destroy
  end

private

  def find_pal
    id = params[:id]&.split(/[\/,_]/)
    @pal = Pal.find(id.is_a?(Array) && id.length == 1 ? id.first : id)
  end

  def pal_params
    params.require(:pal).permit(:friender_id, :friendee_id, :relation_id, :created_at, :updated_at, {:passion_ids=>[]})
  end
end

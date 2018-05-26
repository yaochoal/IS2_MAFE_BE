class ScoresController < ApplicationController

	def create
		if params[:course_id]
      		@score = Scorecourse.create(user_id: params[:user_id],course_id: params[:course_id],positive:params[:positive],negative:params[:negative])
          course = Course.find(params[:course_id])
          course.likes = course.scorecourses.where(positive: 4).size+course.scorecourses.where(positive: 5).size
          course.dislikes = course.scorecourses.where(positive: 1).size+course.scorecourses.where(positive: 2).size
          course.save
      		if @score.save
      			render json: @score, status: :created
      		else
      			render json: @score.errors, status: :unprocessable_entity
      		end
    	end

   		if params[:teacher_id]
     		@score = Scoreteacher.create(user_id: params[:user_id],teacher_id: params[:teacher_id],positive:params[:positive],negative:params[:negative])
        teacher = Teacher.find(params[:teacher_id])
         teacher.likes = teacher.scoreteachers.where(positive: 4).size+teacher.scoreteachers.where(positive: 5).size
          teacher.dislikes = teacher.scoreteachers.where(positive: 1).size+teacher.scoreteachers.where(positive: 2).size
          teacher.save
      		if @score.save
      			render json: @score, status: :created
      		else
      			render json: @score.errors, status: :unprocessable_entity
      		end
    	end

   	    if params[:resource_id]
      		@score = Scoreresource.create(user_id: params[:user_id],resource_id: params[:resource_id],positive: params[:positive],negative:params[:negative])
          resource = Resource.find(params[:resource_id])
          resource.likes = resource.scoreresources.where(positive: 4).size+resource.scoreresources.where(positive: 5).size
          resource.dislikes = resource.scoreresources.where(positive: 1).size+resource.scoreresources.where(positive: 2).size
          resource.save
      		if @score.save
      			render json: @score, status: :created
      		else
     			render json: @score.errors, status: :unprocessable_entity
     	    end
    	end
    	if params[:commentcourse_id]
      		@score = Scorecommentcourse.create(user_id: params[:user_id],commentcourse_id: params[:commentcourse_id],positive:params[:positive],negative:params[:negative])
      		if @score.save
      			render json: @score, status: :created
      		else
      			render json: @score.errors, status: :unprocessable_entity
      		end
    	end

   		if params[:commentteacher_id]
   			
     		@score = Scorecommentteacher.create(user_id: params[:user_id],commentteacher_id: params[:commentteacher_id],positive:params[:positive],negative:params[:negative])
      		if @score.save
      			render json: @score, status: :created
      		else
      			render json: @score.errors, status: :unprocessable_entity
      		end
    	end

   	    if params[:commentresource_id]
   	    	
      		@score = Scorecommentresource.create(user_id: params[:user_id],commentresource_id: params[:commentresource_id],positive: params[:positive],negative:params[:negative])
      		if @score.save
      			render json: @score, status: :created
      		else
     			render json: @score.errors, status: :unprocessable_entity
     	    end
    	end
	end

end
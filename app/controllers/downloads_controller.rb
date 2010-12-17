class DownloadsController < ApplicationController
  def index
    @download = Download.new
    @downloads = Download.find(:all)
  end

  def create
    @download = Download.new(params[:download])

    if @download.save
      responds_to_parent do
        @downloads = Download.find(:all)
        html = render_to_string :partial => 'records'
        render :update do |page|
          page.replace_html 'records', html
        end
      end
    else
      #redirect_to "index"
    end
  end

  def destroy
    @download = Download.find(params[:id])
    @download.destroy

    respond_to do |format|

      format.html { redirect_to admin_downloads_path }
      format.js {
        @downloads = Download.find(:all)
        render :update do |page|
          page.replace_html 'records', :partial => 'records'
        end
      }
    end
  end

  def dl
    @download = Download.find_by_id(params[:id])
    send_file(@download.file_path, :filename => @download.filename, :type => @download.content_type)
  end


end

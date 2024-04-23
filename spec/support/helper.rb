# frozen_string_literal: true

module Helper
  def validator_response(message)
    OpenStruct.new(message:, status: :unprocessable_entity, valid?: false)
  end

  def mock_file_upload(file_path, type)
    ActionDispatch::Http::UploadedFile.new(
      tempfile: File.new(
        Rails.root + file_path,
        type:,
        filename: File.basename(File.new(Rails.root + file_path))
      )
    )
  end
end

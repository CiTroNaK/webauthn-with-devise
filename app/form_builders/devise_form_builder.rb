class DeviseFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(method, opts = {})
    default_opts = {
      class: "appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm #{"border-red-500 text-red-700" if @object.errors.any?}"
    }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def email_field(method, opts = {})
    default_opts = {
      class: "appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm #{"border-red-500 text-red-700" if @object.errors.any?}"
    }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def password_field(method, opts = {})
    default_opts = {
      class: "appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm #{"border-red-500 text-red-700" if @object.errors.any?}"
    }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def label(method, opts = {})
    default_opts = {
      class: "block text-sm font-medium text-gray-700 #{"border-red-500 text-red-700" if @object.errors.any?}"
    }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def submit(method, opts = {})
    default_opts = {
      class: "w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
    }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def check_box(method, opts = {})
    default_opts = {
      class: "h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded"
    }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end
end

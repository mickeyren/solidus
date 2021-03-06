module Spree
  module Admin
    class StyleGuideController < Spree::Admin::BaseController
      respond_to :html
      layout '/spree/layouts/admin_style_guide'

      def index
        @topics = {
          typography: [
            'fonts',
            'colors',
            'lists',
            'icons',
            'tags'
          ],
          forms: [
            'building_forms',
            'buttons',
            'helper_text',
            'inputs',
            'labels',
            'validation'
          ],
          components: [
            'tabs'
          ],
          messaging: [
            'loading',
            'flashes',
            'tooltips'
          ],
          tables: [
            'building_tables',
            'pagination'
          ]
        }
      end
    end
  end
end

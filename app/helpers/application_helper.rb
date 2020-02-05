module ApplicationHelper
	def default_meta_tags
		{
			site: 'LIFE ENG',
			title: '記事一覧',
			reverse: true,
			charset: 'utf-8',
			description: '人生をエンジニアリングするをモットーに様々な記事を書いています。',
			keywords: 'Life, Football, Rails,Ruby,プログラミング',
			canonical: request.original_url,
			separator: '|',
			icon: [
				{ href: image_url('icon.jpg')},
				{ href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
			],
			og: {
				site_name: :site,
				title: :title,
				description: :description,
				type: 'website',
				url: request.original_url,
				image: image_url('default.jpg'),
				local: 'ja-JP',
			},
			twitter: {
				card: 'summary_large_image',
				site: '@_shuntakagi',
				image: image_url('default.jpg'),
			}
		}
	end
end

class User < ApplicationRecord

  validates :name, presence: true, length: { maximum: 50 }
  validates :self_introduction, length: { maximum: 500 }

  has_many :likes, dependent: :destroy
  has_many :liked_shops, through: :likes, source: :shop
  
  mount_uploader :image, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
      user.name = "ゲストユーザー"
    end
  end
end
